unit UServer.Manager;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Win.ScktComp, Vcl.Buttons, UServer.Main, sSpeedButton;

type
  TFormManager = class(TForm)
    ServerSocket: TServerSocket;
    PanelRCON: TPanel;
    Panel5: TPanel;
    ImageRCON: TImage;
    EditUser: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EditPass: TEdit;
    Panel1: TPanel;
    Label3: TLabel;
    Panel2: TPanel;
    Image1: TImage;
    EditPort: TEdit;
    Panel3: TPanel;
    Label4: TLabel;
    Panel4: TPanel;
    Image2: TImage;
    EditPath: TEdit;
    SpeedButtonOpenDir: TsSpeedButton;
    Panel6: TPanel;
    Panel7: TPanel;
    Image3: TImage;
    ButtonStart: TButton;
    Button2: TButton;
    ListBoxLog: TListBox;
    LabelConnected: TLabel;
    procedure ButtonStartClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ServerSocketListen(Sender: TObject; Socket: TCustomWinSocket);
    procedure ServerSocketClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientDisconnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketThreadStart(Sender: TObject;
      Thread: TServerClientThread);
    procedure ServerSocketThreadEnd(Sender: TObject;
      Thread: TServerClientThread);
    procedure ServerSocketGetThread(Sender: TObject;
      ClientSocket: TServerClientWinSocket;
      var SocketThread: TServerClientThread);
    procedure ServerSocketGetSocket(Sender: TObject; Socket: NativeInt;
      var ClientSocket: TServerClientWinSocket);
    procedure ServerSocketClientWrite(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure ServerSocketClientRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ServerSocketClientError(Sender: TObject; Socket: TCustomWinSocket;
      ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ServerSocketAccept(Sender: TObject; Socket: TCustomWinSocket);
    procedure FormCreate(Sender: TObject);
  private
    FServerPort:string;
    FServerUser:string;
    FServerPass:string;
    FClientConnected:Boolean;
    FClientAdr:string;
    FAutorized:Boolean;
    FClientSocket:TCustomWinSocket;
    procedure OnConnect(Socket: TCustomWinSocket);
    procedure OnDisconnect;
    procedure ProcessMSG(SocketData:string);
  public
    procedure MainLog(Value:string);

  end;

var
  FormManager: TFormManager;

implementation

{$R *.dfm}

procedure TFormManager.MainLog(Value: string);
begin
 ListBoxLog.Items.Add(Value);
end;

procedure TFormManager.OnConnect(Socket: TCustomWinSocket);
begin
 FClientAdr:=Socket.RemoteAddress+':'+IntToStr(Socket.RemotePort);
 MainLog(FClientAdr);
 LabelConnected.Caption:='Присоединён к '+FClientAdr;
end;

procedure TFormManager.OnDisconnect;
begin
 FClientAdr:='';
 FAutorized:=False;
 MainLog('Соединение закрыто');
 LabelConnected.Caption:='Ожидаю подключения';
end;

procedure TFormManager.ProcessMSG(SocketData: string);
var MSGData:TStringList;
begin
 MainLog(SocketData);
 MSGData:=TStringList.Create;
 MSGData.Text:=SocketData;
 if MSGData.Count > 0 then
  begin
   if Pos('login ', MSGData[0]) <> 0 then FClientSocket.SendText(seAutorizateOK);
  end;
 MSGData.Free;
end;

procedure TFormManager.ServerSocketAccept(Sender: TObject; Socket: TCustomWinSocket);
begin
 MainLog('ServerSocketAccept');
end;

procedure TFormManager.ServerSocketClientConnect(Sender: TObject; Socket: TCustomWinSocket);
begin
 FClientConnected:=True;
 Socket.Lock;
 OnConnect(Socket);
end;

procedure TFormManager.ServerSocketClientDisconnect(Sender: TObject; Socket: TCustomWinSocket);
begin
 FClientConnected:=False;
 Socket.Unlock;
 OnDisconnect;
end;

procedure TFormManager.ServerSocketClientError(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
 MainLog('ServerSocketClientError');
end;

procedure TFormManager.ServerSocketClientRead(Sender: TObject; Socket: TCustomWinSocket);
var MSGData:TStringList;
    SDT, tmp:string;
begin
 MainLog('ServerSocketClientRead');
 SDT:=UTF8ToString(Socket.ReceiveText);
 if not FAutorized then
  begin
   MSGData:=TStringList.Create;
   MSGData.Text:=SDT;
   if MSGData.Count > 0 then
    begin
     if Pos('login ', MSGData[0]) <> 0 then
      begin
       if MSGData[0] = Format(formatAutorizate, [FServerUser, FServerPass]) then
        begin
         FAutorized:=True;
         FClientSocket:=Socket;
        end;
      end;
    end;
   if not FAutorized then
    begin
     Socket.SendText(seAutorizateError);
     Socket.Close;
     Exit;
    end;
  end;

 ProcessMSG(SDT);
 MSGData.Free;
end;

procedure TFormManager.ServerSocketClientWrite(Sender: TObject;
  Socket: TCustomWinSocket);
begin
 MainLog('ServerSocketClientWrite');
end;

procedure TFormManager.ServerSocketGetSocket(Sender: TObject; Socket: NativeInt; var ClientSocket: TServerClientWinSocket);
begin
 MainLog('ServerSocketGetSocket');
end;

procedure TFormManager.ServerSocketGetThread(Sender: TObject;
  ClientSocket: TServerClientWinSocket; var SocketThread: TServerClientThread);
begin
 MainLog('ServerSocketGetThread');
end;

procedure TFormManager.ServerSocketListen(Sender: TObject; Socket: TCustomWinSocket);
begin
 MainLog('ServerSocketListen');
end;

procedure TFormManager.ServerSocketThreadEnd(Sender: TObject;
  Thread: TServerClientThread);
begin
 MainLog('ServerSocketThreadEnd');
end;

procedure TFormManager.ServerSocketThreadStart(Sender: TObject;
  Thread: TServerClientThread);
begin
 MainLog('ServerSocketThreadStart');
end;

procedure TFormManager.Button2Click(Sender: TObject);
begin
 ServerSocket.Close;
 MainLog('Остановлен');
end;

procedure TFormManager.ButtonStartClick(Sender: TObject);
begin
 if ServerSocket.Active then Exit;
 FServerPort:=EditPort.Text;
 FServerUser:=EditUser.Text;
 FServerPass:=EditPass.Text;
 try
  ServerSocket.Port:=StrToInt(FServerPort);
 except
  begin
   MainLog('Проверьте порт');
   Exit;
  end;
 end;
 try
  ServerSocket.Open;
  MainLog('Запущен');
 except
  on E:Exception do
   begin
    MainLog(E.Message);
    Exit;
   end;
 end;
end;

procedure TFormManager.FormCreate(Sender: TObject);
begin
 FAutorized:=False;
end;

end.
