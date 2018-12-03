unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  System.Win.ScktComp, Vcl.ExtCtrls, Vcl.Buttons, sSpeedButton, sPanel,
  Vcl.ImgList, Vcl.ComCtrls, System.Generics.Collections,
  Vcl.ToolWin, System.Actions, Vcl.ActnList, Data.SqlExpr, Data.DBXMySql,
  Vcl.Grids, Data.DB;

type
  TPlayer = record
   SteamName:string;
   GameName:string;
   SteamID:string;
   Ping:string;
  end;

  TThreadUpdatePlayers = class(TThread)
   private
    { Private declarations }
   protected
    procedure Execute; override;
  end;

  TPBPos = (pbpNone, pbpWork, pbpError, pbpOK);

  TPlayers = TList<TPlayer>;

  TFormMain = class(TForm)
    ClientSocket: TClientSocket;
    ImageList24: TImageList;
    PanelMenu: TsPanel;
    SpeedButtonReload: TsSpeedButton;
    SpeedButtonAbout: TsSpeedButton;
    SpeedButtonQuit: TsSpeedButton;
    SpeedButtonSettings: TsSpeedButton;
    SpeedButtonKeepClaim: TsSpeedButton;
    SpeedButtonChat: TsSpeedButton;
    SpeedButtonMain: TsSpeedButton;
    SpeedButtonJournal: TsSpeedButton;
    SpeedButtonLog: TsSpeedButton;
    sSpeedButton9: TsSpeedButton;
    SpeedButtonConnectCtrl: TsSpeedButton;
    SpeedButtonDB: TsSpeedButton;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Bevel9: TBevel;
    sSpeedButton1: TsSpeedButton;
    ImageList16: TImageList;
    ActionList: TActionList;
    ActionPlayersUpdate: TAction;
    Panel2: TPanel;
    PageControl: TPageControl;
    TabSheetMain: TTabSheet;
    ToolBar1: TToolBar;
    ToolButtonPlayersUpdate: TToolButton;
    TabSheetLog: TTabSheet;
    MemoLog: TMemo;
    TabSheetChat: TTabSheet;
    MemoChat: TMemo;
    Panel1: TPanel;
    EditChatSend: TButtonedEdit;
    PanelPlayers: TPanel;
    ListBoxPlayers: TListBox;
    PanelPlayersInfo: TPanel;
    LabelPlayers: TLabel;
    SpeedButtonPlayersUpdate: TsSpeedButton;
    Panel3: TPanel;
    EditCommandSend: TButtonedEdit;
    ToolButton1: TToolButton;
    TabSheetConnectCtrl: TTabSheet;
    TabSheetDB: TTabSheet;
    ToolBar2: TToolBar;
    ToolButtonRefresh: TToolButton;
    PageControlDB: TPageControl;
    TabSheetPlayersInfo: TTabSheet;
    TabSheetBanned: TTabSheet;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    PanelRCON: TPanel;
    Panel5: TPanel;
    ImageRCON: TImage;
    EditRCONHost: TEdit;
    EditRCONPort: TEdit;
    EditRCONPass: TEdit;
    ButtonRCONRecon: TButton;
    PanelManager: TPanel;
    Panel7: TPanel;
    ImageManager: TImage;
    EditManagerHost: TEdit;
    EditManagerPort: TEdit;
    EditManagerUser: TEdit;
    ButtonManagerRecon: TButton;
    EditManagerPass: TEdit;
    PanelDB: TPanel;
    Panel9: TPanel;
    ImageDB: TImage;
    EditDBHost: TEdit;
    EditDBPort: TEdit;
    EditDBUser: TEdit;
    ButtonDBRecon: TButton;
    EditDBPass: TEdit;
    EditDBDatabase: TEdit;
    SQLConnection: TSQLConnection;
    procedure sSpeedButton1Click(Sender: TObject);
    procedure ListBoxPlayersDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButtonQuitClick(Sender: TObject);
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ListBoxPlayersClick(Sender: TObject);
    procedure ActionPlayersUpdateExecute(Sender: TObject);
    procedure EditCommandSendRightButtonClick(Sender: TObject);
    procedure EditChatSendRightButtonClick(Sender: TObject);
    procedure SpeedButtonChatClick(Sender: TObject);
    procedure SpeedButtonMainClick(Sender: TObject);
    procedure SpeedButtonJournalClick(Sender: TObject);
    procedure SpeedButtonConnectCtrlClick(Sender: TObject);
    procedure SpeedButtonDBClick(Sender: TObject);
    procedure ToolButtonRefreshClick(Sender: TObject);
    procedure ButtonRCONReconClick(Sender: TObject);
    procedure ButtonRCONCloseClick(Sender: TObject);
    procedure ClientSocketConnecting(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocketLookup(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketWrite(Sender: TObject; Socket: TCustomWinSocket);
    procedure ButtonDBReconClick(Sender: TObject);
    procedure SQLConnectionAfterConnect(Sender: TObject);
    procedure SQLConnectionLogin(Database: TSQLConnection;
      LoginParams: TStrings);
    procedure SQLConnectionAfterDisconnect(Sender: TObject);
  private
    FDBHost:string;
    FDBPort:string;
    FDBUser:string;
    FDBPass:string;
    FDBDataBase:string;

    FRCONHost:string;
    FRCONPort:string;
    FRCONPass:string;

    FManagerHost:string;
    FManagerPort:string;
    FManagerUser:string;
    FManagerPass:string;

    FThreadUpdatePlayers:TThreadUpdatePlayers;
    Players:TPlayers;
    TimerTerminateCommand:TTimer;
    ///
    procedure ProcChat(Data:string);
    procedure ProcNoPlayers(Data:TStringList);
    procedure ProcPlayersUpdate(Data:TStringList);
    procedure ProcPlayers(Data:TStringList);
    procedure ProcBans(Data:TStringList);
    ///
    procedure OnTimerTerminateCommand(Sender:TObject);
    procedure FUpdatePlayerList;
    procedure ProcessMSG(SocketData:string);
    procedure SetPage(Tab:TTabSheet);
    function RefreshPlayerInfo:Boolean;
    procedure Indicate(IM:TImage; PBP:TPBPos);
  public

    procedure cmdPlayers;
    procedure cmdLogin;
    procedure ConnectRCON;
    procedure ConnectDB;
    procedure SendCommand(Text:string);
    procedure PanelMenuState(Minimazed:Boolean);
    procedure Quit;
    procedure Log(Value:string);
  end;

const
   CRLF = #13#10;
   PlayerUpdateWait = 20000;
   MaxPlayers = 24;

   strPlayerCount = 'Кол-во игроков: %d/%d';

  {$IFDEF DEBUG}
  { ServerHost = '192.168.0.97';
   ServerPort = '3306';
   VerPrefix = 'Alpha';  }
  {$ELSE}
  { ServerHost = 'hemulgm.ru';
   ServerPort = '3333';
   VerPrefix = 'Beta';  }
  {$ENDIF}
  { ServerUser = 'root';
   ServerPass = 'aVIPs22031994';
   ServerDB   = 'unturned_russia1'; }

var
  FormMain: TFormMain;
  LogName:string;
  NoPlayers:TPlayer;
  //
  CurEvent:string;
  ProcData:TStringList;
  EventID:Integer;
  //

  //http://steamcommunity.com/profiles/76561198326392297/?xml=1

implementation

{$R *.dfm}

procedure TFormMain.Indicate(IM:TImage; PBP:TPBPos);
begin
 if IM = nil then Exit;
 if Application.Terminated then Exit;
 if IM.Picture.Icon = nil then IM.Picture.Icon:=TIcon.Create;

 if IM.Parent <> nil then if (IM.Parent is TPanel) then
  case PBP of
   pbpNone:  (IM.Parent as TPanel).Color:=$00A0A0A0;
   pbpWork:  (IM.Parent as TPanel).Color:=$0005D3E4;
   pbpError: (IM.Parent as TPanel).Color:=$000241E8;
   pbpOK:    (IM.Parent as TPanel).Color:=$0002C883;
  end;

 case PBP of
  pbpNone:  ImageList16.GetIcon(4, IM.Picture.Icon);
  pbpWork:  ImageList16.GetIcon(2, IM.Picture.Icon);
  pbpError: ImageList16.GetIcon(3, IM.Picture.Icon);
  pbpOK:    ImageList16.GetIcon(1, IM.Picture.Icon);
 end;
 Application.ProcessMessages;
end;

procedure TThreadUpdatePlayers.Execute;
begin
 while (not Application.Terminated) and (not Terminated) do
  begin
   FormMain.cmdPlayers;
   Sleep(PlayerUpdateWait);
  end;
end;

procedure TFormMain.OnTimerTerminateCommand(Sender:TObject);
begin
 ProcessMSG('END');
end;

procedure TFormMain.ProcBans(Data:TStringList);
var SubEvent:string;
    i:Integer;
    Player:TPlayer;
begin
 if Data.IndexOf('Bans:') < 0 then Exit;
 Players.Clear;
 for i:=1 to Data.Count - 1 do
  begin
   if Pos('PlayerID: ', Data.Strings[i]) = 1 then
    begin
     try
      SubEvent:=Copy(Data.Strings[i], Length('PlayerID: ')+1, 200);
      SubEvent:=Copy(SubEvent, 1, Pos(' Name: ', SubEvent)-1);
      Player.SteamID:=SubEvent;

      SubEvent:=Copy(Data.Strings[i], Pos('Name: ', Data.Strings[i])+6, 200);
      SubEvent:=Copy(SubEvent, 1, Pos(' Character: ', SubEvent)-1);
      Player.SteamName:=SubEvent;

      SubEvent:=Copy(Data.Strings[i], Pos('Character: ', Data.Strings[i])+11, 200);
      SubEvent:=Copy(SubEvent, 1, Pos(' Ping: ', SubEvent)-1);
      Player.GameName:=SubEvent;

      SubEvent:=Copy(Data.Strings[i], Pos('Ping: ', Data.Strings[i])+6, 200);
      SubEvent:=Copy(SubEvent, 1, 10);
      Player.Ping:=SubEvent;
      Players.Add(Player);
     except
      Log('Пропущен: '+Data.Strings[i]);
      Continue;
     end;
    end
   else Log('Упс, чет не моё: '+Data.Strings[i]);
  end;
 FUpdatePlayerList;
 {
  06.03.2017 11:10:42: JudgeID: 76561198182216738
  Reason: 10 Duration: 31536000 Remaining: 29330614
  PlayerID: 76561198357353975
  JudgeID: 0
  Reason: unspecified Duration: 31536000 Remaining: 30174225
  PlayerID: 76561198327386016
  JudgeID: 0
  Reason: unspecified Duration: 31536000 Remaining: 30174241

  06.03.2017 11:10:42: PlayerID: 76561198139479273
  JudgeID: 76561198310448124
  Reason: unspecified Duration: 31536000 Remaining: 24716965
  PlayerID: 76561198342579978
  JudgeID: 76561198310448124
  Reason: unspecified Duration: 31536000 Remaining: 25598621
  PlayerID: 76561198354762253
  JudgeID: 0
  Reason: you were vote kicked Duration: 180 Remaining: 4289571717
  PlayerID: 76561198341938994
  JudgeID: 0
  Reason: you were vote kicked Duration: 180 Remaining: 4290049964
  PlayerID: 76561198342608854
  JudgeID: 0
  Reason: you were vote kicked Duration: 180 Remaining: 4291359008
  PlayerID: 76561198324833313
  JudgeID: 76561198310448124
  Reason: unspecified Duration: 31536000 Remaining: 28788988
  PlayerID: 76561198034473774
  JudgeID: 76561198310448124
  Reason: Сысоев Duration: 31536000 Remaining: 28791219
  PlayerID: 76561198338923844
  JudgeID: 76561198310448124
  Reason: unspecified Duration: 31536000 Remaining: 28793642
  PlayerID: 76561198354828944

  06.03.2017 11:10:42: PlayerID: 76561198211384633
  JudgeID: 0
  Reason: you were vote kicked Duration: 180 Remaining: 4285240234
  PlayerID: 76561198278172955
  JudgeID: 0
  Reason: you were vote kicked Duration: 180 Remaining: 4285643937
  PlayerID: 76561198295006780
  JudgeID: 0
  Reason: you were vote kicked Duration: 180 Remaining: 4285754855
  PlayerID: 76561198344343756
  JudgeID: 0
  Reason: unspecified Duration: 31536000 Remaining: 24106529
  PlayerID: 76561198307420614
  JudgeID: 76561198310448124
  Reason: unspecified Duration: 31536000 Remaining: 24712420

  06.03.2017 11:10:42: Reason: you were vote kicked Duration: 180 Remaining: 4274536313
  PlayerID: 76561198252299988
  JudgeID: 0
  Reason: you were vote kicked Duration: 180 Remaining: 4275493811
  PlayerID: 76561198330498560
  JudgeID: 0
  Reason: you were vote kicked Duration: 180 Remaining: 4280702744
  PlayerID: 76561198334115769
  JudgeID: 0
  Reason: you were vote kicked Duration: 180 Remaining: 4284275249

  06.03.2017 11:10:42: PlayerID: 76561198281067448
  JudgeID: 0

  06.03.2017 11:10:42: Bans:
 }
end;

procedure TFormMain.ProcPlayers(Data:TStringList);
var SubEvent:string;
    i:Integer;
    Player:TPlayer;
begin
 if Data.IndexOf('Players:') < 0 then Exit;
 Players.Clear;
 for i:=1 to Data.Count - 1 do
  begin
   if Pos('PlayerID: ', Data.Strings[i]) = 1 then
    begin
     try
      SubEvent:=Copy(Data.Strings[i], Length('PlayerID: ')+1, 200);
      SubEvent:=Copy(SubEvent, 1, Pos(' Name: ', SubEvent)-1);
      Player.SteamID:=SubEvent;

      SubEvent:=Copy(Data.Strings[i], Pos('Name: ', Data.Strings[i])+6, 200);
      SubEvent:=Copy(SubEvent, 1, Pos(' Character: ', SubEvent)-1);
      Player.SteamName:=SubEvent;

      SubEvent:=Copy(Data.Strings[i], Pos('Character: ', Data.Strings[i])+11, 200);
      SubEvent:=Copy(SubEvent, 1, Pos(' Ping: ', SubEvent)-1);
      Player.GameName:=SubEvent;

      SubEvent:=Copy(Data.Strings[i], Pos('Ping: ', Data.Strings[i])+6, 200);
      SubEvent:=Copy(SubEvent, 1, 10);
      Player.Ping:=SubEvent;
      Players.Add(Player);
     except
      Log('Пропущен: '+Data.Strings[i]);
      Continue;
     end;
    end
   else Log('Упс, чет не моё: '+Data.Strings[i]);
  end;
 FUpdatePlayerList;
 {
 Players:
 PlayerID: 76561198326392297 Name: VorontsEmil Character:  VorontsEmil Ping: 119
 PlayerID: 76561198309266497 Name: Oganek4 Character: (Мафия)Oganek Ping: 99
 PlayerID: 76561198253874271 Name: Ваня Character: anna-0976 Ping: 35
 }
end;

procedure TFormMain.ProcPlayersUpdate(Data:TStringList);
begin
 cmdPlayers;
end;

procedure TFormMain.ProcNoPlayers(Data:TStringList);
begin
 Players.Clear;
 FUpdatePlayerList;
end;

procedure TFormMain.ProcChat(Data:string);
begin
 MemoChat.Lines.Add(Data);
end;

procedure TFormMain.ProcessMSG(SocketData:string);
var DataStr, Buf:string;
    i:integer;
    MSGData:TStringList;

begin
 DataStr:=SocketData;
 Log(DataStr);

 MSGData:=TStringList.Create;
 MSGData.Text:=DataStr;

 if MSGData.Count > 0 then
  begin
   TimerTerminateCommand.Enabled:=False;
   for i:= 0 to MSGData.Count - 1 do
    begin
     Buf:=MSGData.Strings[i];
     //Чат
     if (Pos('[World]', Buf) = 1) or
        (Pos('[Area]',  Buf) = 1) or
        (Pos('[Group]', Buf) = 1)
     then
      begin
       ProcChat(Buf);
       if i <> MSGData.Count - 1 then Continue else Buf:='';
      end;
     //Client has executed command
     if (Pos('Client has executed command', Buf) = 1)
     then
      begin
       //ProcChat(Buf);
       if i <> MSGData.Count - 1 then Continue else Buf:='';
      end;

     if (Pos('Players:', Buf) = 1) or
        (Pos('Connecting:', Buf) = 1) or
        (Pos('Bans:', Buf) = 1) or
        (Pos('Disconnecting:', Buf) = 1) or
        (Pos('Failed to find any players', Buf) = 1) or
       // (Buf = '') or
        (Buf = 'END')
     then
      begin
       //Если не идёт сбор данных
       if CurEvent = '' then
        begin
         CurEvent:=Buf;
         ProcData.Clear;
        end
       else
        begin
         if CurEvent = 'Players:' then ProcPlayers(ProcData) else
         if CurEvent = 'Bans:' then ProcBans(ProcData) else
          if Pos('Connecting:', CurEvent) = 1 then ProcPlayersUpdate(ProcData) else
           if Pos('Failed to find any players', CurEvent) = 1 then ProcNoPlayers(ProcData) else
            if Pos('Disconnecting:', CurEvent) = 1 then ProcPlayersUpdate(ProcData);
         CurEvent:='';
         ProcData.Clear;
        end;
      end;
     ProcData.Add(Buf);
    end;
  end;
 if CurEvent <> '' then
  begin
   Log('TimerTerminateCommand.Enabled with '+CurEvent);
   TimerTerminateCommand.Enabled:=True;
  end;

 MSGData.Free;
end;

procedure TFormMain.FUpdatePlayerList;
var i:Integer;
begin    
 ListBoxPlayers.Items.BeginUpdate;
 ListBoxPlayers.Items.Clear;
 if Players.Count > 0 then
  for i:= 0 to Players.Count - 1 do
   begin
    ListBoxPlayers.Items.Add('');
   end
 else ListBoxPlayers.Items.Add('');
 ListBoxPlayers.Items.EndUpdate;
 LabelPlayers.Caption:=Format(strPlayerCount, [Players.Count, MaxPlayers]);
end;

procedure TFormMain.cmdPlayers;
begin
 SendCommand('players');
end;

procedure TFormMain.ConnectDB;
begin
 with SQLConnection do
  begin
   Indicate(ImageDB, pbpWork);
   if Connected then SQLConnection.Close;

   Drivername:='MySQL';
   VendorLib:='libmySQL.dll';
   with Params do
    begin
     Clear;
     Append('Database='+FDBDatabase);
     Append('User_Name='+FDBUser);
     Append('Password='+FDBPass);
     Append('HostName='+FDBHost);
     Append('Port='+FDBPort);
     Append('ServerCharSet=utf8');
    end;
   try
    Connected:=True;
   except
    on E:Exception do
     begin
      ShowMessage(E.Message);
      Indicate(ImageDB, pbpError);
      Exit;
     end;
   end;
  end;
end;

procedure TFormMain.ConnectRCON;
begin
 if ClientSocket.Active then ClientSocket.Close;
 ClientSocket.Host:=FRCONHost;
 ClientSocket.Port:=StrToInt(FRCONPort);
 ClientSocket.Open;
end;

function TFormMain.RefreshPlayerInfo:Boolean;
var SQLQuery:TSQLQuery;
    Ver1, Ver2, Link:String;
    VerMaj, VerMin:Integer;
  i: Integer;
begin
 Result:=False;
 if SQLConnection.Connected then
  begin
   SQLQuery:=TSQLQuery.Create(nil);
   SQLQuery.Close;
   SQLQuery.SQLConnection:=SQLConnection;
   SQLQuery.SQL.Clear;
   SQLQuery.SQL.Text:='select SteamID, SteamName, CharName, INET_NTOA(IP) as IP, FROM_UNIXTIME(LastLoginGlobal) as LastLoginGlobal, TotalPlayTime from playerinfo ORDER BY TotalPlayTime DESC LIMIT 1000';
   try
    SQLQuery.Open;
    StringGrid1.ColCount:=SQLQuery.FieldCount;
    StringGrid1.RowCount:=1;
    for i:= 0 to SQLQuery.FieldCount - 1 do StringGrid1.Cells[i, 0]:=SQLQuery.Fields[i].FieldName;
    i:=1;
    while not SQLQuery.Eof do
     begin
      StringGrid1.RowCount:=StringGrid1.RowCount+1;
      for i:= 0 to SQLQuery.FieldCount - 1 do
       StringGrid1.Cells[i, StringGrid1.RowCount-1]:=SQLQuery.Fields[i].AsString;
      SQLQuery.Next;
     end;
    StringGrid1.FixedRows:=1;
    SQLQuery.Close;
   except

   end;
  end;
 SQLQuery.Free;
 Result:=True;
end;

procedure TFormMain.EditChatSendRightButtonClick(Sender: TObject);
begin
 SendCommand('say "'+EditChatSend.Text+'"');
 EditChatSend.Text:='';
end;

procedure TFormMain.EditCommandSendRightButtonClick(Sender: TObject);
begin
 SendCommand(EditCommandSend.Text);
 EditCommandSend.Text:='';
end;

procedure TFormMain.cmdLogin;
begin
 SendCommand('login '+FRCONPass);
end;

procedure TFormMain.Log(Value:string);
begin
 MemoLog.Lines.Add(DateTimeToStr(Now)+': '+Value);
 //MemoLog.Lines.Insert(0, DateTimeToStr(Now)+': '+Value);
 if not DirectoryExists(ExtractFilePath(Application.ExeName)+'Logs') then CreateDir(ExtractFilePath(Application.ExeName)+'Logs');
 if DirectoryExists(ExtractFilePath(Application.ExeName)+'Logs') then
  begin
   try
    MemoLog.Lines.SaveToFile(ExtractFilePath(Application.ExeName)+'Logs\'+LogName);
   except

   end;
  end;
end;

procedure TFormMain.PanelMenuState(Minimazed:Boolean);
begin
 if Minimazed then PanelMenu.Width:=40 else PanelMenu.Width:=250;
end;

procedure TFormMain.SendCommand(Text:string);
begin
 if FormMain.ClientSocket.Active then
  ClientSocket.Socket.SendText(AnsiString(Text)+CRLF);
end;

procedure TFormMain.SetPage(Tab: TTabSheet);
begin
 PageControl.ActivePage:=Tab;
 PanelMenuState(True);
end;

procedure TFormMain.SpeedButtonChatClick(Sender: TObject);
begin
 SetPage(TabSheetChat);
end;

procedure TFormMain.SpeedButtonConnectCtrlClick(Sender: TObject);
begin
 SetPage(TabSheetConnectCtrl);
end;

procedure TFormMain.SpeedButtonDBClick(Sender: TObject);
begin
 SetPage(TabSheetDB);
end;

procedure TFormMain.SpeedButtonJournalClick(Sender: TObject);
begin
 SetPage(TabSheetLog);
end;

procedure TFormMain.SpeedButtonMainClick(Sender: TObject);
begin
 SetPage(TabSheetMain);
end;

procedure TFormMain.SpeedButtonQuitClick(Sender: TObject);
begin
 Quit;
end;

procedure TFormMain.SQLConnectionAfterConnect(Sender: TObject);
begin
 Indicate(ImageDB, pbpOK);
end;

procedure TFormMain.SQLConnectionAfterDisconnect(Sender: TObject);
begin
 Indicate(ImageDB, pbpError);
end;

procedure TFormMain.SQLConnectionLogin(Database: TSQLConnection; LoginParams: TStrings);
begin
 Indicate(ImageDB, pbpOK);
end;

procedure TFormMain.Quit;
begin
 Application.Terminate;
end;

procedure TFormMain.sSpeedButton1Click(Sender: TObject);
begin
 PanelMenuState(PanelMenu.Width >= 250);
end;

procedure TFormMain.ToolButtonRefreshClick(Sender: TObject);
begin
 RefreshPlayerInfo;
end;

procedure TFormMain.ActionPlayersUpdateExecute(Sender: TObject);
begin
 cmdPlayers;
end;

procedure TFormMain.ButtonDBReconClick(Sender: TObject);
begin
 FDBHost:=EditDBHost.Text;
 FDBPort:=EditDBPort.Text;
 FDBPass:=EditDBPass.Text;
 FDBDatabase:=EditDBDataBase.Text;
 FDBUser:=EditDBUser.Text;
 ConnectDB;
end;

procedure TFormMain.ButtonRCONCloseClick(Sender: TObject);
begin
 ClientSocket.Close;
end;

procedure TFormMain.ButtonRCONReconClick(Sender: TObject);
begin
 FRCONHost:=EditRCONHost.Text;
 FRCONPort:=EditRCONPort.Text;
 FRCONPass:=EditRCONPass.Text;
 ConnectRCON;
end;

procedure TFormMain.ClientSocketConnect(Sender: TObject; Socket: TCustomWinSocket);
begin
 ProcChat('ClientSocketConnect');
 Indicate(ImageRCON, pbpOK);
 cmdLogin;
 cmdPlayers;
end;

procedure TFormMain.ClientSocketConnecting(Sender: TObject; Socket: TCustomWinSocket);
begin
 ProcChat('ClientSocketConnecting');
 Indicate(ImageRCON, pbpWork);
end;

procedure TFormMain.ClientSocketDisconnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
 ProcChat('ClientSocketDisconnect');
 Indicate(ImageRCON, pbpNone);
end;

procedure TFormMain.ClientSocketError(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
 case ErrorEvent of
  eeGeneral: ProcChat('eeGeneral');
  eeSend: ProcChat('eeSend');
  eeReceive: ProcChat('eeReceive');
  eeConnect: ProcChat('eeConnect');
  eeDisconnect: ProcChat('eeDisconnect');
  eeAccept: ProcChat('eeAccept');
  eeLookup: ProcChat('eeLookup');
 end;
end;

procedure TFormMain.ClientSocketLookup(Sender: TObject; Socket: TCustomWinSocket);
begin
 ProcChat('ClientSocketLookup');
 Indicate(ImageRCON, pbpWork);
end;

procedure TFormMain.ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
begin
 ProcChat('ClientSocketRead');
 ProcessMSG(UTF8ToString(Socket.ReceiveText));
end;

procedure TFormMain.ClientSocketWrite(Sender: TObject; Socket: TCustomWinSocket);
begin
 ProcChat('ClientSocketWrite');
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
 ProcData:=TStringList.Create;
 NoPlayers.GameName:='Нет игроков';
 NoPlayers.SteamID:='';
 NoPlayers.SteamName:='';
 NoPlayers.Ping:='';
 Players:=TPlayers.Create;
 FUpdatePlayerList;
 FThreadUpdatePlayers:=TThreadUpdatePlayers.Create(False);
 TimerTerminateCommand:=TTimer.Create(nil);
 with TimerTerminateCommand do
  begin
   Enabled:=False;
   Interval:=3000;
   OnTimer:=OnTimerTerminateCommand;
  end;
 Indicate(ImageRCON, pbpNone);
 Indicate(ImageDB, pbpNone);
 Indicate(ImageManager, pbpNone);

 ButtonRCONReconClick(nil);
 ButtonDBReconClick(nil);
end;

procedure TFormMain.ListBoxPlayersClick(Sender: TObject);
begin
 ListBoxPlayers.Repaint;
end;

procedure TFormMain.ListBoxPlayersDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
var str:string;
    Icon:TIcon;
    Player:TPlayer;
  //  i:Integer;
begin
 str:='';
 //i:=(Control as TListBox).ItemAtPos((Control as TListBox).ScreenToClient(Mouse.CursorPos), True);
 (Control as TListBox).Canvas.Pen.Style:=psSolid;
 if ((Control as TListBox).ItemIndex = Index) then (Control as TListBox).Canvas.Brush.Color:=$005FE8AC;
 (Control as TListBox).Canvas.FillRect(Rect);

 if Players.Count > 0 then  Player:=Players[Index]
 else
  begin
   (Control as TListBox).Canvas.Font.Color:=$00939393;
   (Control as TListBox).Canvas.TextOut(Rect.Left+36, Rect.Top + Rect.Height div 3, 'Нет игроков');
   Exit;
  end;

 //Ник в игре
 (Control as TListBox).Canvas.Font.Color:=$00444444;
 (Control as TListBox).Canvas.TextOut(Rect.Left+36, Rect.Top, 'G: '+Player.GameName);

 //Стим ИД
 str:='ID: '+Player.SteamID;
 (Control as TListBox).Canvas.TextOut(Rect.Right - ((Control as TListBox).Canvas.TextWidth(str) + 3), Rect.Top + Round(Rect.Height div 3 * 2), str);

 //Пинг
 (Control as TListBox).Canvas.Font.Color:=$00444444;
 (Control as TListBox).Canvas.Font.Style:=[fsBold];
 (Control as TListBox).Canvas.TextOut(Rect.Left+36, Rect.Top + Round(Rect.Height div 3 * 2), 'Пинг: '+Player.Ping);
 (Control as TListBox).Canvas.Font.Style:=[];

 //Ник в стиме
 (Control as TListBox).Canvas.Font.Color:=$00939393;
 (Control as TListBox).Canvas.TextOut(Rect.Left+36, Rect.Top + Rect.Height div 3, 'S: '+Player.SteamName);

 //Линия границы
 (Control as TListBox).Canvas.Pen.Color:=clGrayText;// MixColors((Control as TListBox).Canvas.Brush.Color, $00CCCCCC, 100);
 (Control as TListBox).Canvas.MoveTo(Rect.Left, Rect.Bottom-1);
 (Control as TListBox).Canvas.LineTo(Rect.Right, Rect.Bottom-1);
end;

var i:Integer;
initialization
 //Каталог лога
  if not DirectoryExists(ExtractFilePath(Application.ExeName)+'Logs') then CreateDir(ExtractFilePath(Application.ExeName)+'Logs');
  if DirectoryExists(ExtractFilePath(Application.ExeName)+'Logs') then
   begin
    i:=0;
    repeat
     Inc(i);
     LogName:='LOG_'+FormatDateTime('HHMMSS_DDMMYYYY_', Now)+IntToStr(i)+'.log';
    until not FileExists(ExtractFilePath(Application.ExeName)+'Logs\'+LogName);
   end;

end.
