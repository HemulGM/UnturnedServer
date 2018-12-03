unit UServer.GameEvents;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  Vcl.ExtCtrls, System.Generics.Collections, UServer.Types;

 type
  TEventInterval = (eiInterval, eiTime);
  TEvent = procedure of object;
  TGameEvent = class
   type
    TDaySet = record
     Active:Boolean;
     Interval:Cardinal;
     TimeLeft:Cardinal;
     Time:TTime;
     TimeStart:TTime;
     EventInterval:TEventInterval;
     function LeftInPercent:Byte;
     function LeftInSecond:Cardinal;
    end;
   private
    FName:string;
    FDays:array[1..7] of TDaySet;
    FActive: Boolean;
    FExecuteProc:TNotifyEvent;
    FImageID:Integer;
    procedure SetActive(const Value: Boolean);
    function FLeftInPercent:Byte;
    function FLeftInSecond:Cardinal;
    function GetDaySet(Index: Byte): TDaySet;
    procedure SetDaySet(Index: Byte; const Value: TDaySet);
   public
    procedure ResetDay(Day:Byte); virtual;
    procedure ResetDays; virtual;
    procedure Tick; virtual;
    procedure Execute; virtual;
    constructor Create; virtual;
    procedure SetAllDay(DaySet:TDaySet); virtual;
    property Active:Boolean read FActive write SetActive;
    property LeftInPercent:Byte read FLeftInPercent;
    property LeftInSecond:Cardinal read FLeftInSecond;
    property ExecuteProc:TNotifyEvent read FExecuteProc write FExecuteProc;
    property Name:string read FName write FName;
    property Days[Index:Byte]:TDaySet read GetDaySet write SetDaySet;
    property ImageID:Integer read FImageID write FImageID;
  end;
  TGameEvents = TList<TGameEvent>;

  TGameEventManager = class
   private
    FTimer:TTimer;
    FGameEvents:TGameEvents;
    FUpdate:TEvent;
    procedure OnTimer(Sender:TObject);
    procedure DoTick;
    function GetEvent(Index: Integer): TGameEvent;
    function GetEventCount: Integer;
   public
    HearthBeat:THearthBeat;
    procedure ActiveAll;
    procedure Start;
    procedure Stop;
    procedure InitTick(Count:Word);
    function RegEvent(Event:TGameEvent):Integer; virtual;
    function UnregEvent(EventID:Integer):Boolean; virtual;
    constructor Create; virtual;
    property EventCount:Integer read GetEventCount;
    property OnUpdate:TEvent read FUpdate write FUpdate;
    property Events[Index:Integer]:TGameEvent read GetEvent;
  end;

implementation
 uses System.DateUtils, UServer.CommonFunc, Math;

{ TGameEvent }

constructor TGameEvent.Create;
begin
 FActive:=False;
 FImageID:=-1;
end;

function TGameEvent.FLeftInPercent:Byte;
begin
 Result:=Min(100, FDays[DayOfWeek(Now)].LeftInPercent);
end;

function TGameEvent.FLeftInSecond: Cardinal;
begin
 Result:=FDays[DayOfWeek(Now)].LeftInSecond;
end;

function TGameEvent.GetDaySet(Index: Byte): TDaySet;
begin
 Result:=FDays[Index];
end;

procedure TGameEvent.Execute;
begin
 if Assigned(FExecuteProc) then FExecuteProc(Self);
end;

procedure TGameEvent.ResetDays;
var i:Integer;
begin
 for i:= Low(FDays) to High(FDays) do ResetDay(i);
end;

procedure TGameEvent.ResetDay(Day: Byte);
begin
 with FDays[Day] do
  begin
   case EventInterval of
    eiInterval:TimeLeft:=Interval;
    eiTime:TimeStart:=Now;
   end;
  end;
end;

procedure TGameEvent.SetActive(const Value: Boolean);
begin
 FActive:= Value;
 //if FActive then ResetDays;
end;

procedure TGameEvent.SetAllDay(DaySet: TDaySet);
var i:Integer;
begin
 for i:= Low(FDays) to High(FDays) do FDays[i]:=DaySet;
end;

procedure TGameEvent.SetDaySet(Index: Byte; const Value: TDaySet);
begin
 FDays[Index]:=Value;
end;

procedure TGameEvent.Tick;
var DN:Byte;
begin
 if not FActive then Exit;
 DN:=DayOfWeek(Now);
 with FDays[DN] do
  begin
   if not Active then Exit;
   case EventInterval of
    eiInterval:
     begin
      TimeLeft:=TimeLeft - 1;
      if TimeLeft <= 0 then
       begin
        TimeLeft:=Interval;
        Execute;
       end;
     end;
    eiTime:
     begin
      if Frac(Time) = Frac(Now) then
       begin
        TimeStart:=Now;
        Execute;
       end;
     end;
   end;
  end;
end;

{ TGameEvent.TDaySet }

function TGameEvent.TDaySet.LeftInPercent: Byte;
var MLeft:Cardinal;
begin
 case EventInterval of
  eiInterval: Result:=Round(TimeLeft / (Interval / 100));
  eiTime:
   begin
    if Frac(TimeStart) > Frac(Time) then
     MLeft:=SecsPerDay - SecondsBetween(Frac(TimeStart), Frac(Time))
    else
     MLeft:=SecondsBetween(Frac(TimeStart), Frac(Time));

    Result:=Round(LeftInSecond / (MLeft / 100));
   end;
 else
  Result:=0;
 end;
end;

function TGameEvent.TDaySet.LeftInSecond: Cardinal;
begin
 case EventInterval of
  eiInterval: Result:=TimeLeft;
  eiTime:
   begin
    if Frac(Now) > Frac(Time) then
     Result:=SecsPerDay - SecondsBetween(Frac(Now), Frac(Time))
    else
     Result:=SecondsBetween(Frac(Now), Frac(Time));
   end;
 else
  Result:=0;
 end;
end;

{ TGameEventManager }

constructor TGameEventManager.Create;
begin
 FGameEvents:=TGameEvents.Create;
 FTimer:=TTimer.Create(nil);
 FTimer.Enabled:=False;
 FTimer.Interval:=1000;
 FTimer.OnTimer:=OnTimer;
end;

function TGameEventManager.GetEvent(Index: Integer): TGameEvent;
begin
 Result:=FGameEvents[Index];
end;

function TGameEventManager.GetEventCount: Integer;
begin
 Result:=FGameEvents.Count;
end;

function TGameEventManager.RegEvent(Event: TGameEvent): Integer;
begin
 Result:=FGameEvents.Add(Event);
end;

function TGameEventManager.UnregEvent(EventID: Integer): Boolean;
begin
 Result:=True;
 try
  FGameEvents.Delete(EventID);
 except
  Result:=False;
 end;
end;

procedure TGameEventManager.ActiveAll;
var i:Integer;
begin
 for i:= 0 to FGameEvents.Count-1 do FGameEvents[i].Active:=True;
end;

procedure TGameEventManager.DoTick;
begin
 InitTick(1);
 if Assigned(FUpdate) then FUpdate;
end;

procedure TGameEventManager.InitTick(Count: Word);
var i, j:Integer;
begin
 HearthBeat.Beat;
 for i:= 0 to FGameEvents.Count-1 do
  for j:=1 to Count do FGameEvents[i].Tick;
end;

procedure TGameEventManager.OnTimer(Sender: TObject);
begin
 DoTick;
end;

procedure TGameEventManager.Start;
begin
 FTimer.Enabled:=True;
end;

procedure TGameEventManager.Stop;
begin
 FTimer.Enabled:=False;
end;

end.
