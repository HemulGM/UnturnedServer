unit UServer.Types;

interface
 uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, HGM.Controls.VirtualTable, UnturnedIDB, System.IniFiles,
  Vcl.ExtCtrls, System.Generics.Collections, sSpeedButton, HGM.Controls.PanelCollapsed;

 type
  TAround = (caGroup, caArea, caWorld);
  TChatFrom = (cfConsole, cfSite, cfAdmin, cfInfo, cfPlayer);
  TConState = (csNone, csConnected, csDisconnected, csConnecting);
  TGetPlayersIDFunc = procedure(var Items:TStringList) of object;
  TListInt = TList<Integer>;
  TListString = TList<string>;
  TLoadouts = TListString;
  TLogHandler = procedure(Text:string) of object;
  TPBPos = (pbpNone, pbpWork, pbpError, pbpOK);
  TPVMode = (modePVP, modePVE);
  TSendCommandHandler = procedure(Command:string) of object;
  TSteamID = string;
  TThWork = (twNone, twWork, twExcept, twExit);
  TTimeWords = (twYears, twMonths, twDays, twHours, twMinutes, twSeconds);

  TServerStartCommands = record
   private
    FLoadouts:TLoadouts;
   public
    MaxPlayers:Integer;
    Port:Integer;
    Name:string; //50
    Map:string;
    Mode:string;
    PVMode:TPVMode;
    Cheats:Boolean;
    Gold:Boolean;
    Timeout:Integer;
    Perspective:string;
    Log:string;
    Owner:string;
    Votify:string;
    Welcome:string;
    BindIP:string;
    Cycle:Integer;
    procedure AddLoadout(Value:string);
    procedure SetDefault;
    property Loadouts:TLoadouts read FLoadouts write FLoadouts;
    procedure Create;
  end;

  TGameMessage = record
   ID:Integer;
   Text:string;
   Color:TColor;
  end;
  TGameMessages = class(TTableData<TGameMessage>)
   private
    FCurrentMessage:Integer;
   public
    function GetNext:TGameMessage;
    function SetNext(Value:Integer):TGameMessage;
    procedure Randomize;
    property CurrentMessage:Integer read FCurrentMessage;
    constructor Create(AOwner: TTableEx); override;
  end;

  TMark = record
   ID:Integer;
   ValueStr:string;
   ValueInt:Integer;
   Date:TDateTime;
  end;
  TMarks = TTableData<TMark>;

  TPlayer = record
   SteamID:TSteamID;
   GameName:string;
   SteamName:string;
   Ping:string;
   function Create(pSID, pGName, pSName:string):TPlayer;
  end;

  TDonat = record
   ID:Integer;
   Group:string;
   DateBegin:TDateTime;
   DateEnd:TDateTime;
   Days:Integer;
   Active:Boolean;
   Unlimit:Boolean;
   Comment:string;
   Player:TPlayer;
  end;
  TDonats = TTableData<TDonat>;

  TServerAction = record
   Date:TDateTime;
   SteamID:TSteamID;
   Data:string;
   function Create(pDate:TDateTime; pData:string; pSteamID:string = ''):TServerAction;
  end;
  TServerActions = class(TTableData<TServerAction>)
   function Add(Data:string; SteamID:string):Integer; overload;
  end;

  THearthBeat = record
   BeatValue:Byte;
   procedure Beat;
  end;
  
  TChatRecord = record
   From:TChatFrom;
   Date:TDateTime;
   Text:string;
   Player:TPlayer;
   Around:TAround;
   PM:Boolean;
   function Message:string;
  end;
  TChatList = class(TTableData<TChatRecord>)
   procedure DeleteLast;
  end;

  TUEItems = class(TDisplayDataItems)
   function GetItemDesc(ID:Integer):string;
  end;

  TUEVehicles = class(TDisplayDataVehicles)
   function GetItemDesc(ID:Integer):string;
  end;

  TMapPlace = record
   Name:string;
   Desc:String;
   function Create(aName, aDesc:string):TMapPlace;
  end;
  TMapPlaces = TTableData<TMapPlace>;

  PProcessData = ^TProcessData;
  TProcessData = record
   UseMemory:Cardinal;     //Исп. ОЗУ
   CntThreads:Word;        //Потоков
   OKTime:Int64;
   OUTime:Int64;
   CPUUse:Double;          //Использование ЦП
  end;

  TLogRecord = record
   Date:TDateTime;
   Value:string;
   function Create(pValue:string; pDate:TDateTime):TLogRecord; overload;
   function Create(pValue:string):TLogRecord; overload;
   function ToString:string;
  end;
  TLog = class(TTableData<TLogRecord>)
   private
    FSize:Integer;
   public
    function Add(Value:TLogRecord):Integer; override;
    constructor Create(Table:TTableEx; Size:Integer);
  end;

  TKitItem = record
   DBID:Integer;
   ID:string;
   Count:Integer;
   function Create(pDBID:Integer; pID:String; pCount:Integer):TKitItem;
  end;
  TKit = class(TList<TKitItem>)
   private
    FDBID:Integer;
    FKitName:string;
   public
    property KitName:string read FKitName write FKitName;
    property DBID:Integer read FDBID write FDBID;
    constructor Create(pID:Integer; pKitName:string);
  end;
  TKits = class(TTableData<TKit>)
  end;

  TDashboardItem = record
   Col:Word;
   Order:Integer;
   Control:TPanelCollapsed;
  end;
  TDashboardItems = TList<TDashboardItem>;
  TDashboard = class
   private
    FItems:TDashboardItems;
    FCols:Word;
    FIntervalTop:Word;
    FIntervalLeft:Word;
    FColor: TColor;
    FFont: TColor;
    FFontCap: TColor;
    FColorBorder: TColor;
    procedure FUpdate;
    procedure SetCols(const Value: Word);
    procedure SetColor(const Value: TColor);
    procedure SetFontContent(const Value: TColor);
    procedure SetFontCaption(const Value: TColor);
    procedure SetColorBorder(const Value: TColor);
   public
    class function CreateItem(Col:Word; Order:Integer; Ctrl:TPanelCollapsed):TDashboardItem;
    procedure Update;
    function Reg(Item:TDashboardItem):Integer;
    function Unreg(Item:TDashboardItem):Boolean;
    constructor Create(APlace:TControl);
    property Cols:Word read FCols write SetCols;
    property IntervalTop:Word read FIntervalTop write FIntervalTop;
    property IntervalLeft:Word read FIntervalLeft write FIntervalLeft;
    property Color:TColor read FColor write SetColor;
    property ColorBorder:TColor read FColorBorder write SetColorBorder;
    property FontContent:TColor read FFont write SetFontContent;
    property FontCaption:TColor read FFontCap write SetFontCaption;
  end;

  TSettings = class
   private
    FIniFile:TIniFile;
   public
    function GetBool(const Section, Ident:string; Default:Boolean):Boolean; overload;
    function GetBool(const Element:array of string; Default:Boolean):Boolean; overload;
    function GetInt(const Section, Ident:string; Default:Integer):Integer; overload;
    function GetInt(const Element:array of string; Default:Integer):Integer; overload;
    function GetStr(const Section, Ident:string; Default:string):string; overload;
    function GetStr(const Element:array of string; Default:string):string; overload;
    function GetDate(const Section, Ident:string; Default:TDateTime):TDateTime; overload;
    function GetDate(const Element:array of string; Default:TDateTime):TDateTime; overload;

    procedure SetBool(const Section, Ident:string; Value:Boolean); overload;
    procedure SetBool(const Element:array of string; Value:Boolean); overload;
    procedure SetInt(const Section, Ident:string; Value:Integer); overload;
    procedure SetInt(const Element:array of string; Value:Integer); overload;
    procedure SetStr(const Section, Ident:string; Value:string); overload;
    procedure SetStr(const Element:array of string; Value:string); overload;
    procedure SetDate(const Section, Ident:string; Value:TDateTime); overload;
    procedure SetDate(const Element:array of string; Value:TDateTime); overload;

    constructor Create(FileName:TFileName);
    destructor Destroy;
  end;

  TPlayerInfoRecord = record
   private
    function GetFrom: string;
   public
    SteamID:string;
    SteamName:string;
    CharName:string;
    IP:string;
    LastLoginGlobal:TDateTime;
    TotalPlayTime:Cardinal;
    LastServerID:Integer;
    FromCountry:string;
    FromCity:string;
    RegDate:TDateTime;
    Balance:Extended;
    KillSZombie:Integer;
    KillMZombie:Integer;
    KillAnimal:Integer;
    KillPlayer:Integer;
    function Score:Integer;
    property From:string read GetFrom;
    function RegDateString:String;
    function GetPlayerData:TPlayer;
  end;
  TPlayerInfo = TTableData<TPlayerInfoRecord>;

  TConsoleAnswer = record
   Question:string;
   Answer:string;
   function Create(Q, A:string):TConsoleAnswer;
  end;
  TConsoleAnswers = TList<TConsoleAnswer>;

  TPlayers = class(TTableData<TPlayer>)
    function Delete(SteamID:string):Boolean; overload;
  end;

  TPlayerRev = record
   Player:TPlayer;
   Connected:Boolean;
   DateTime:TDateTime;
   function Create(pPlayer:TPlayer; pCon:Boolean; pDate:TDateTime):TPlayerRev;
  end;
  TPlayersRev = TTableData<TPlayerRev>;

  TExecutedCommand = record
   CommandText:string;
   Date:TDateTime;
  end;
  TExecutedCommands = class(TList<TExecutedCommand>)
    FCurIndex:Integer;
   public
    procedure New(Command:string);
    procedure ResetCur;
    function GetPrev(var Cmd:string):Boolean;
    function GetNext(var Cmd:string):Boolean;
    constructor Create;
  end;

  TAdminPlayer = record
   public
    PlayerSteamName:string;
    PlayerGameName:string;  //Hemul
    PlayerSteamID:string;   //76561198357353975
    //
    JudgeSteamID:string;   //Судья 76561198182216738
    JudgeGameName:string;   //Судья
    JudgeSteamName:string;   //Судья
  end;
  TAdmins = TTableData<TAdminPlayer>;

  TBannedPlayer = record
   public
    PlayerSteamName:string;
    PlayerGameName:string;  //Hemul
    PlayerSteamID:string;   //76561198357353975
    //
    JudgeSteamID:string;   //Судья 76561198182216738
    JudgeGameName:string;   //Судья 76561198182216738
    JudgeSteamName:string;   //Судья 76561198182216738

    Reason:string;    //причина
    Duration:Int64;  //31536000 секунд+
    Remaining:Int64; //29330614 осталось
   end;
  TBans = TTableData<TBannedPlayer>;

  TStatData = record
   ID:Integer;
   Date:TDateTime;
   Value:Extended;
   function Create(pID:Integer; pDate:TDateTime; pValue:Extended):TStatData;
  end;
  TStatistics = TList<TStatData>;

  TCurrentStatistics = record
   private
    FAVGTMP:Integer;
    FMaxPlayersDate:TDate;
    FMaxPlayers:Cardinal;
    FAllPlayers:Cardinal;
    FNewPlayers:Cardinal;
    FEndPlayers:Cardinal;
    FAllPlayersToday:Cardinal;
    FAllPlayersMonth:Cardinal;
    FAllPlayersYest:Cardinal;
    FNewPlayersYest:Cardinal;
    FEndPlayersYest:Cardinal;
    FActivePlayers:Cardinal;
    FNoPlayers:Cardinal;
    FAvgPlayTime:Cardinal;
    procedure SetMaxPlayers(const Value: Cardinal);
    function GetMaxPlayers:Cardinal;
   public
    procedure BeginUpdate;
    procedure UpdateStat(PI:TPlayerInfoRecord);
    procedure EndUpdate;
    property MaxPlayers:Cardinal read GetMaxPlayers write SetMaxPlayers;
    property AllPlayers:Cardinal read FAllPlayers write FAllPlayers;
    property NewPlayers:Cardinal read FNewPlayers write FNewPlayers;
    property EndPlayers:Cardinal read FEndPlayers write FEndPlayers;
    property AllPlayersToday:Cardinal read FAllPlayersToday write FAllPlayersToday;
    property AllPlayersMonth:Cardinal read FAllPlayersMonth write FAllPlayersMonth;
    property AllPlayersYest:Cardinal read FAllPlayersYest write FAllPlayersYest;
    property NewPlayersYest:Cardinal read FNewPlayersYest write FNewPlayersYest;
    property EndPlayersYest:Cardinal read FEndPlayersYest write FEndPlayersYest;
    property ActivePlayers:Cardinal read FActivePlayers write FActivePlayers;
    property NoPlayers:Cardinal read FNoPlayers write FNoPlayers;
    property AvgPlayTime:Cardinal read FAvgPlayTime write FAvgPlayTime;
  end;

  TUpdatedDataPlayerFrom = record
   City, Country:string;
   SteamID:TSteamID;
  end;
  TUpdatedDataPlayerFromList = TList<TUpdatedDataPlayerFrom>;

  function IsYestarday(const AValue: TDateTime): Boolean;
  function DaysAndTimeToStr(D:Cardinal; H, M, S:Word):string;
  function GetWord(TW:TTimeWords; Value:Integer):string;
  function GetWithWord(TW:TTimeWords; Value:Integer):string;
  function TranslateGoogle(Text, myLang, toLang:string):string;
  function IFELSESTR(Value:Boolean; ResTrue, ResFalse:string):string;
  function Ask(Text:string):Boolean;
  function Warning(Text:string):Boolean;
  procedure SecToDateTime(Value:Cardinal; var D:Cardinal; var H, M, S:Word);
  procedure SecToTime(Value:Cardinal; var H, M, S:Word);

  const
   TimeWords:array[TTimeWords, 1..3] of string =
    (('год',     'года',    'лет'),
     ('месяц',   'месяца',  'месяцев'),
     ('день',    'дня',     'дней'),
     ('час',     'часа',    'часов'),
     ('минута',  'минуты',  'минут'),
     ('секунда', 'секунды', 'секунд'));

   EndPlayersTime = 60 * 60;
   ActivePlayersTime = 30 * 60 * 60;

implementation
 uses Math, System.DateUtils, MMSystem, IdHTTP, StrUtils, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, UServer.CommonFunc;

function Warning(Text:string):Boolean;
begin
 MessageBox(Application.Handle, PWideChar(Text), 'Внимание', MB_ICONWARNING or MB_OK);
 Result:=True;
end;

function Ask(Text:string):Boolean;
begin
 Result:=MessageBox(Application.Handle, PWideChar(Text), 'Вопрос', MB_ICONQUESTION or MB_YESNO) = ID_YES;
end;

function IsYestarday(const AValue: TDateTime): Boolean;
begin
  Result:= IsSameDay(AValue, Date-1);
end;

function IFELSESTR(Value:Boolean; ResTrue, ResFalse:string):string;
begin
 if Value then Result:=ResTrue else Result:=ResFalse;
end;

function TranslateGoogle(Text, myLang, toLang:string):string;
var HTTP:TidHTTP;
    PostData:TStringList;
    Response:TStringStream;
begin
 Result:='';
 HTTP:=TIdHTTP.Create(nil);
 Text:=StringReplace(Text, '...', '', [rfReplaceAll]);
 Text:=StringReplace(Text, #13#10, ' ', [rfReplaceAll]);
 PostData:=TStringList.Create;
 PostData.Add('sl='+myLang);
 PostData.Add('tl='+toLang);
 PostData.Add('js=n');
 PostData.add('prev=_t');
 PostData.Add('hl='+myLang);
 PostData.Add('ie=UTF-8');
 PostData.add('eotf=1');
 PostData.Add('text='+Text);
 PostData.Add('client=x');
 Response:=TStringStream.Create('');
 try
  HTTP.Post('http://translate.google.ru/translate_a/t', PostData, Response);
  Result:=UTF8ToWideString(Response.DataString);
  if Result.Length > 0 then Delete(Result, 1, 1);
  if Result.Length > 0 then Delete(Result, Result.Length, 1);
 finally
  PostData.Free;
  HTTP.Free;
  Response.Free;
 end;
end;

function GetWithWord(TW:TTimeWords; Value:Integer):string;
begin
 Result:=IntToStr(Value)+' '+GetWord(TW, Value);
end;

function GetWord(TW:TTimeWords; Value:Integer):string;
var C:Char;
    W:Byte;
begin
 Result:='';
 C:=IntToStr(Value)[Length(IntToStr(Value))];
 case C of
  '1':W:=1;
  '2', '3', '4':W:=2;
  '5', '6', '7', '8', '9', '0':W:=3;
 end;
 Result:=TimeWords[TW, W];
end;

function DaysAndTimeToStr(D:Cardinal; H, M, S:Word):string;
begin
 Result:='';
 if D <> 0 then Result:=Result+' '+IntToStr(D)+' '+GetWord(twDays, D);
 if H <> 0 then Result:=Result+' '+IntToStr(H)+' '+GetWord(twHours, H);
 if M <> 0 then Result:=Result+' '+IntToStr(M)+' '+GetWord(twMinutes, M);
 if S <> 0 then Result:=Result+' '+IntToStr(S)+' '+GetWord(twSeconds, S);
 Result:=Trim(Result);
end;

procedure SecToTime(Value:Cardinal; var H, M, S:Word);
begin
 H:=Value div SecsPerHour;
 Value:=Value - H * SecsPerHour;

 M:=Value div SecsPerMin;
 Value:=Value - M * SecsPerMin;

 S:=Value;
end;

procedure SecToDateTime(Value:Cardinal; var D:Cardinal; var H, M, S:Word);
begin
 D:=Value div SecsPerDay;
 Value:=Value - D * SecsPerDay;

 H:=Value div SecsPerHour;
 Value:=Value - H * SecsPerHour;

 M:=Value div SecsPerMin;
 Value:=Value - M * SecsPerMin;

 S:=Value;
end;

{ THearthBeat }

procedure THearthBeat.Beat;
begin
 if BeatValue = 1 then BeatValue:=2
 else BeatValue:=1;
end;

{ TChatRecord }

function TChatRecord.Message: string;
begin
 Result:=TimeToStr(Self.Date)+' '+Player.GameName+': '+Text;
end;

{ TChatList }

procedure TChatList.DeleteLast;
begin
 if Count > 0 then Delete(Count-1);
end;

{ TMapPlace }

function TMapPlace.Create(aName, aDesc: string): TMapPlace;
begin
 Name:=aName;
 Desc:=aDesc;
 Result:=Self;
end;

{ TServerAction }

function TServerAction.Create(pDate: TDateTime; pData, pSteamID: string): TServerAction;
begin
 Date:=pDate;
 Data:=pData;
 SteamID:=pSteamID;
 Result:=Self;
end;

{ TLogRecord }

function TLogRecord.Create(pValue: string; pDate: TDateTime): TLogRecord;
begin
 Value:=pValue;
 Date:=pDate;
 Result:=Self;
end;

function TLogRecord.Create(pValue: string): TLogRecord;
begin
 Value:=pValue;
 Date:=Now;
 Result:=Self;
end;

function TLogRecord.ToString: string;
begin
 Result:=DateTimeToStr(Date)+': '+Value;
end;

{ TLog }

function TLog.Add(Value:TLogRecord):Integer;
begin
 Insert(0, Value);
 UpdateTable;
 Result:=0;
 while Count > FSize do Delete(Self.Count-1);
end;

constructor TLog.Create(Table:TTableEx; Size:Integer);
begin
 inherited Create(Table);
 FSize:=Size;
end;

{ TServerActions }

function TServerActions.Add(Data, SteamID: string): Integer;
var SA:TServerAction;
begin
 Result:=Add(SA.Create(Now, Data, SteamID));
end;

{ TKit }

constructor TKit.Create(pID:Integer; pKitName:string);
begin
 inherited Create;
 FKitName:=pKitName;
 FDBID:=pID;
end;

{ TKitItem }

function TKitItem.Create(pDBID:Integer; pID: String; pCount: Integer): TKitItem;
begin
 DBID:=pDBID;
 ID:=pID;
 Count:=pCount;
 Result:=Self;
end;

{ TPlayer }

function TPlayer.Create(pSID, pGName, pSName: string): TPlayer;
begin
 SteamID:=pSID;
 GameName:=pGName;
 SteamName:=pSName;
 Result:=Self;
end;

{ TUEItems }

function TUEItems.GetItemDesc(ID:Integer):string;
var i:Integer;
begin
 Result:='';
 for i:= 0 to Count-1 do if Items[i].ID = ID then Exit(Items[i].Desc);
end;

{ TUEVehicles }

function TUEVehicles.GetItemDesc(ID:Integer):string;
var i:Integer;
begin
 Result:='';
 for i:= 0 to Count-1 do if Items[i].ID = ID then Exit(Items[i].Desc);
end;

{ TDashboard }

constructor TDashboard.Create(APlace: TControl);
begin
 FItems:=TDashboardItems.Create;
 FIntervalTop:=6;
 FIntervalLeft:=6;
end;

class function TDashboard.CreateItem(Col: Word; Order: Integer; Ctrl: TPanelCollapsed): TDashboardItem;
begin
 Result.Col:=Col;
 Result.Order:=Order;
 Result.Control:=Ctrl;
end;

function TDashboard.Reg(Item: TDashboardItem): Integer;
begin
 Result:=FItems.Add(Item);
end;

function TDashboard.Unreg(Item: TDashboardItem): Boolean;
var i:Integer;
begin
 Result:=False;
 for i:= 0 to FItems.Count-1 do
  begin
   if FItems[i].Control.Name = Item.Control.Name then
    begin
     FItems.Delete(i);
     Exit(True);
    end;
  end;
end;

procedure TDashboard.FUpdate;
var c, i:Integer;
    Sorted:TDashboardItems;
    LastRight, LRCalc, LastBottom:Integer;

procedure Sort;
var i, j:Integer;
    Item:TDashboardItem;
begin
 if Sorted.Count <= 0 then Exit;     //0-4
 for i:=1 to (Sorted.Count-1) do   //0-3
  for j:=0 to (Sorted.Count-1)-i do  //0-
   begin
    if Sorted[j].Order > Sorted[j+1].Order then
     begin
      Item:=Sorted[j];
      Sorted[j]:=Sorted[j+1];
      Sorted[j+1]:=Item;
     end;
   end;
end;

begin
 Sorted:=TDashboardItems.Create;
 LastRight:=0;
 for c:= 0 to FCols-1 do
  begin
   LRCalc:=LastRight;
   LastBottom:=0;
   Sorted.Clear;
   for i:= 0 to FItems.Count-1 do
    if FItems[i].Col = c then Sorted.Add(FItems[i]);
   Sort;
   for i:= 0 to Sorted.Count-1 do
    begin
     Sorted[i].Control.Top:=LastBottom+IntervalTop;
     LastBottom:=Sorted[i].Control.Top + Sorted[i].Control.Height;
     Sorted[i].Control.Left:=LastRight+IntervalLeft;
     if LRCalc < (Sorted[i].Control.Left + Sorted[i].Control.Width) then LRCalc:=Sorted[i].Control.Left + Sorted[i].Control.Width;
    end;
   LastRight:=LRCalc;
  end;
 Sorted.Free;
end;

procedure TDashboard.SetColor(const Value: TColor);
var i, j:Integer;
begin
 FColor:= Value;
 for i:= 0 to FItems.Count-1 do
  begin
   FItems[i].Control.Color:=FColor;
   FItems[i].Control.CaptionColor:=FColor;
   for j:= 0 to FItems[i].Control.ControlCount-1 do
    begin
     if (FItems[i].Control.Controls[j] is TShape) then
      begin
       (FItems[i].Control.Controls[j] as TShape).Brush.Color:=ColorLighter(Value, 20);
       (FItems[i].Control.Controls[j] as TShape).Pen.Color:=ColorLighter(Value, 20);
      end;
    end;
  end;
end;

procedure TDashboard.SetColorBorder(const Value: TColor);
var i:Integer;
begin
 FColorBorder := Value;
 for i:= 0 to FItems.Count-1 do FItems[i].Control.SimpleBorderColor:=FColorBorder;
end;

procedure TDashboard.SetFontCaption(const Value: TColor);
var i:Integer;
begin
 FFontCap := Value;
 for i:= 0 to FItems.Count-1 do FItems[i].Control.FontCaption.Color:=Value;
end;

procedure TDashboard.SetFontContent(const Value: TColor);
var i, j:Integer;
begin
 FFont:= Value;
 for i:= 0 to FItems.Count-1 do
  begin
   FItems[i].Control.Font.Color:=FFont;
   for j:= 0 to FItems[i].Control.ControlCount-1 do
    begin
     if (FItems[i].Control.Controls[j] is TLabel) then
      begin
       (FItems[i].Control.Controls[j] as TLabel).Font.Color:=Value;
      end;
     if (FItems[i].Control.Controls[j] is TEdit) then
      begin
       (FItems[i].Control.Controls[j] as TEdit).Font.Color:=Value;
      end;
     if (FItems[i].Control.Controls[j] is TsSpeedButton) then
      begin
       (FItems[i].Control.Controls[j] as TsSpeedButton).Font.Color:=Value;
      end;
    end;
  end;
end;

procedure TDashboard.SetCols(const Value: Word);
begin
 FCols:= Max(1, Value);
end;

procedure TDashboard.Update;
begin
 FUpdate;
end;

{ TSettings }

constructor TSettings.Create(FileName: TFileName);
begin
 FIniFile:=TIniFile.Create(FileName);
end;

destructor TSettings.Destroy;
begin
 if Assigned(FIniFile) then FIniFile.Free;
end;

function TSettings.GetBool(const Section, Ident: string; Default: Boolean): Boolean;
begin
 Result:=FIniFile.ReadBool(Section, Ident, Default);
end;

function TSettings.GetBool(const Element: array of string; Default: Boolean): Boolean;
begin
 if Length(Element) < 2 then Exit(Default);
 Result:=GetBool(Element[0], Element[1], Default);
end;

function TSettings.GetDate(const Element: array of string; Default: TDateTime): TDateTime;
begin
 if Length(Element) < 2 then Exit(Default);
 Result:=GetDate(Element[0], Element[1], Default);
end;

function TSettings.GetDate(const Section, Ident: string; Default: TDateTime): TDateTime;
begin
 Result:=FIniFile.ReadDateTime(Section, Ident, Default);
end;

function TSettings.GetInt(const Element: array of string; Default: Integer): Integer;
begin
 if Length(Element) < 2 then Exit(Default);
 Result:=GetInt(Element[0], Element[1], Default);
end;

function TSettings.GetInt(const Section, Ident: string; Default: Integer): Integer;
begin
 Result:=FIniFile.ReadInteger(Section, Ident, Default);
end;

function TSettings.GetStr(const Section, Ident: string; Default: string): string;
begin
 Result:=FIniFile.ReadString(Section, Ident, Default);
end;

function TSettings.GetStr(const Element: array of string; Default: string): string;
begin
 if Length(Element) < 2 then Exit(Default);
 Result:=GetStr(Element[0], Element[1], Default);
end;

procedure TSettings.SetBool(const Section, Ident: string; Value: Boolean);
begin
 FIniFile.WriteBool(Section, Ident, Value);
end;

procedure TSettings.SetBool(const Element: array of string; Value: Boolean);
begin
 if Length(Element) < 2 then Exit;
 SetBool(Element[0], Element[1], Value);
end;

procedure TSettings.SetDate(const Element: array of string; Value: TDateTime);
begin
 if Length(Element) < 2 then Exit;
 SetDate(Element[0], Element[1], Value);
end;

procedure TSettings.SetDate(const Section, Ident: string; Value: TDateTime);
begin
 FIniFile.WriteDateTime(Section, Ident, Value);
end;

procedure TSettings.SetInt(const Element: array of string; Value: Integer);
begin
 if Length(Element) < 2 then Exit;
 SetInt(Element[0], Element[1], Value);
end;

procedure TSettings.SetInt(const Section, Ident: string; Value: Integer);
begin
 FIniFile.WriteInteger(Section, Ident, Value);
end;

procedure TSettings.SetStr(const Element: array of string; Value: string);
begin
 if Length(Element) < 2 then Exit;
 SetStr(Element[0], Element[1], Value);
end;

procedure TSettings.SetStr(const Section, Ident: string; Value: string);
begin
 FIniFile.WriteString(Section, Ident, Value);
end;

{ TServerStartCommands }

procedure TServerStartCommands.AddLoadout(Value: string);
begin
 FLoadouts.Add(Value);
end;

procedure TServerStartCommands.Create;
begin
 FLoadouts:=TListString.Create;
end;

procedure TServerStartCommands.SetDefault;
begin
 PVMode:=modePVP;
 MaxPlayers:=MaxPlayers;
 Mode:='Normal';
 BindIP:='127.0.0.1';
 Cheats:=False;
 Cycle:=2880;
 Gold:=False;
end;

{ TPlayerInfoRecord }

function TPlayerInfoRecord.GetFrom:string;
begin
 Result:='';
 if FromCity + FromCountry = '' then Exit;
 if (FromCity = '') or (FromCountry = '') then Result:=FromCountry + FromCity
 else Result:=FromCountry + ', ' + FromCity;
end;

function TPlayerInfoRecord.GetPlayerData: TPlayer;
begin
 Result.SteamID:=SteamID;
 Result.GameName:=CharName;
 Result.SteamName:=SteamName;
end;

function TPlayerInfoRecord.RegDateString: String;
begin
 try
  if RegDate = EncodeDate(1899, 12, 30)
  then Result:='Старый'
  else Result:=HumanDateTime(RegDate);
 except
  Result:='Ошибка';
 end;
end;

function TPlayerInfoRecord.Score: Integer;
begin
 Result:=KillSZombie + (KillMZombie * 10) + (KillAnimal * 2);
end;

{ TPlayers }

function TPlayers.Delete(SteamID: string): Boolean;
var i:Integer;
begin
 Result:=False;
 if Count <= 0 then Exit;
 for i:= 0 to Count-1 do
  begin
   if Items[i].SteamID = SteamID then
    begin
     Delete(i);
     Exit(True);
    end;
  end;
end;

{ TExecutedCommands }

constructor TExecutedCommands.Create;
begin
 inherited;
 ResetCur;
end;

function TExecutedCommands.GetNext(var Cmd: string): Boolean;
begin
 Result:=False;
 if Count <= 0 then Exit;
 if not Between(0, FCurIndex - 1, (Count-1)) then Exit(False);
 Dec(FCurIndex);
 try
  Cmd:=Items[FCurIndex].CommandText;
 except
  Exit;
 end;
 Result:=True;
end;

function TExecutedCommands.GetPrev(var Cmd: string): Boolean;
begin
 Result:=False;
 if Count <= 0 then Exit;
 if not Between(0, FCurIndex + 1, (Count-1)) then Exit(False);
 Inc(FCurIndex);
 try
  Cmd:=Items[FCurIndex].CommandText;
 except
  Exit;
 end;
 Result:=True;
end;

procedure TExecutedCommands.New(Command:string);
var CMD:TExecutedCommand;
begin
 CMD.CommandText:=Command;
 CMD.Date:=Now;
 ResetCur;
 Insert(0, CMD);
end;

procedure TExecutedCommands.ResetCur;
begin
 FCurIndex:=-1;
end;

{ TConsoleAnswer }

function TConsoleAnswer.Create(Q, A:string):TConsoleAnswer;
begin
 Question:=AnsiLowerCase(Q);
 Answer:=A;
 Result:=Self;
end;

{ TPlayerRev }

function TPlayerRev.Create(pPlayer: TPlayer; pCon: Boolean; pDate: TDateTime): TPlayerRev;
begin
 Player:=pPlayer;
 Connected:=pCon;
 DateTime:=pDate;
 Result:=Self;
end;

{ TStatData }

function TStatData.Create(pID:Integer; pDate:TDateTime; pValue:Extended): TStatData;
begin
 ID:=pID;
 Date:=pDate;
 Value:=pValue;
 Result:=Self;
end;

{ TStatistics }

procedure TCurrentStatistics.BeginUpdate;
begin
 FAVGTMP:=0;
 AllPlayersToday:=0;
 AllPlayersYest:=0;
 NewPlayers:=0;
 NewPlayersYest:=0;
 AllPlayersMonth:=0;
 EndPlayers:=0;
 EndPlayersYest:=0;
 ActivePlayers:=0;
 NoPlayers:=0;
 AvgPlayTime:=0;
end;

procedure TCurrentStatistics.EndUpdate;
begin
 if FAVGTMP <> 0 then AvgPlayTime:=(AvgPlayTime div FAVGTMP);
 FAVGTMP:=0;
end;

function TCurrentStatistics.GetMaxPlayers: Cardinal;
begin
 if not IsToday(FMaxPlayersDate) then FMaxPlayers:=0;
 Result:=FMaxPlayers;
end;

procedure TCurrentStatistics.SetMaxPlayers(const Value: Cardinal);
begin
 FMaxPlayersDate:=Now;
 FMaxPlayers:=Value;
end;

procedure TCurrentStatistics.UpdateStat(PI: TPlayerInfoRecord);
begin
 if IsToday(PI.LastLoginGlobal) then
  begin
   AllPlayersToday:=AllPlayersToday + 1;
  end;
 if IsYestarday(PI.LastLoginGlobal) then
  begin
   AllPlayersYest:=AllPlayersYest + 1;
  end;
 if IsToday(PI.RegDate) then
  begin
   NewPlayers:=NewPlayers + 1;
   if PI.TotalPlayTime < EndPlayersTime then EndPlayers:=EndPlayers + 1;
  end;
 if IsYestarday(PI.RegDate) then
  begin
   NewPlayersYest:=NewPlayersYest + 1;
   if PI.TotalPlayTime < EndPlayersTime then EndPlayersYest:=EndPlayersYest + 1;
  end;
 if StartOfTheMonth(Now) < PI.LastLoginGlobal then
  begin
   AllPlayersMonth:=AllPlayersMonth + 1;
   if PI.TotalPlayTime > ActivePlayersTime then
    begin
     ActivePlayers:=ActivePlayers + 1;
     FAVGTMP:=FAVGTMP+1;
     AvgPlayTime:=AvgPlayTime + PI.TotalPlayTime;
    end;
  end;
 if PI.TotalPlayTime < 60 then NoPlayers:=NoPlayers + 1
 else
  begin
    //
  end;
end;

{ TGameMessages }

constructor TGameMessages.Create(AOwner: TTableEx);
begin
 inherited;
 FCurrentMessage:=0;
end;

function TGameMessages.GetNext:TGameMessage;
begin
 Result.ID:=-1;
 if Count <= 0 then Exit;
 Inc(FCurrentMessage);
 if FCurrentMessage > Count-1 then FCurrentMessage:=0;
 Result:=Items[FCurrentMessage];
end;

procedure TGameMessages.Randomize;
begin
 FCurrentMessage:=RandomRange(0, Count-1);
end;

function TGameMessages.SetNext(Value:Integer):TGameMessage;
begin
 Result.ID:=-1;
 if not IndexInList(Value, TList(Self)) then Exit;
 FCurrentMessage:=Value;
 Result:=Items[FCurrentMessage];
end;

end.
