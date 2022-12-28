unit UServer.Main;

interface

uses
  //WinAPI
  Winapi.Windows, Winapi.Messages, Winapi.msxml, Winapi.D2D1, Winapi.TlHelp32,
  Winapi.PsAPI, Winapi.WinInet,
  //System
  System.SysUtils, System.Variants, System.Classes, System.UITypes, System.Types,
  System.Win.ScktComp, System.Generics.Collections, System.Actions,
  System.DateUtils, System.ImageList, System.IniFiles, System.Win.Registry,
  //VCL
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Direct2D,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.ImgList, Vcl.ComCtrls, Vcl.ActnList,
  Vcl.Imaging.jpeg, Vcl.Grids, Vcl.Menus, Vcl.Imaging.pngimage, Vcl.OleCtrls,
  //Data
  Data.DB, Data.SqlExpr, Data.DBXMySql,
  //ES
  ES.BaseControls, ES.Switch,
  //TelegramAPI
  TelegaPi.Bot, TelegAPi.Classes,
  //
  VK.Classes, UnturnedIDB,
  //Int
  UServer.CommonFunc, UServer.Commands, UServer.GameEvents, UServer.Types,
  UServer.Database, UServer.Notify, UServer.Banning,
  //Other
  SHDocVw, HGM.Controls.SpinEdit, HGM.Controls.PanelCollapsed,
  HGM.Controls.VirtualTable, HGM.Controls.Labels, HGM.Controls.PanelExt,
  HGM.Button;

type
  TTabSheet = class(Vcl.ComCtrls.TTabSheet)
  private
    FColor: TColor;
    procedure SetColor(Value: TColor);
    procedure WMEraseBkGnd(var Msg: TWMEraseBkGnd); message WM_ERASEBKGND;
  public
    constructor Create(aOwner: TComponent); override;
    property Color: TColor read FColor write SetColor;
  end;

  TTgUpdates = TArray<TtgUpdate>;

  TThreadProc = class;

  TThProc = procedure(Thread: TThreadProc) of object;

  TThreadProc = class(TThread)
  private
    FProc: TThProc;
    FStop: Boolean;
    FStopped: Boolean;
    FWork: TThWork;
    FHearthBeat: Byte;
    FWait: Boolean;
  protected
    procedure Execute; override;
  public
    procedure Stop;
    property Proc: TThProc read FProc write FProc;
    property Stopping: Boolean read FStop write FStop;
    property Work: TThwork read FWork write FWork;
    property Stopped: Boolean read FStopped;
    property Wait: Boolean read FWait write FWait;
    property HearthBeat: Byte read FHearthBeat;
    property Terminated;
    procedure Beat;
    constructor Create(CreateSuspended: Boolean); overload;
  end;

  TFormMain = class(TForm)
    ActionBan: TAction;
    ActionKick: TAction;
    ActionList: TActionList;
    ActionPlayersUpdate: TAction;
    ActionSteamInfo: TAction;
    ButtonGetPlayerP: TSpeedButton;
    ButtonPermAdd: TSpeedButton;
    ButtonPermRemove: TSpeedButton;
    CheckBoxMainManager: TCheckBox;
    CheckBoxMiniChatPM: TEsSwitch;
    CheckBoxUseForAll: TEsSwitch;
    ClientSocket: TClientSocket;
    ColorDialog: TColorDialog;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBoxChatFilter: TComboBox;
    ComboBoxDonatGroup: TComboBox;
    ComboBoxDonatTime: TComboBox;
    ComboBoxGiveKit: TComboBox;
    ComboBoxPermGroupRemove: TComboBox;
    ComboBoxPremGroup: TComboBox;
    DrawGridTimers: TDrawGrid;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    EditChatSend: TEdit;
    EditCommandSend: TEdit;
    EditDBDatabase: TEdit;
    EditDBHost: TEdit;
    EditDBPass: TEdit;
    EditDBPort: TEdit;
    EditDBUser: TEdit;
    EditDonatComment: TEdit;
    EditGiveEP: TEdit;
    EditGiveExp: TEdit;
    EditGiveItems: TEdit;
    EditGiveVehicle: TEdit;
    EditGroupChatSend: TEdit;
    EditGroupEP: TEdit;
    EditGroupVehicle: TEdit;
    EditLocalPath: TEdit;
    EditMapAddress: TEdit;
    EditMiniChatSend: TEdit;
    EditPermGroups: TEdit;
    EditPermNick: TEdit;
    EditPermSteam: TEdit;
    EditPISearch: TEdit;
    EditPlayerGeo: TEdit;
    EditPlayerIP: TEdit;
    EditPlayerNick: TEdit;
    EditPlayerPlayTime: TEdit;
    EditPlayerReg: TEdit;
    EditPlayerSteamID: TEdit;
    EditPlayerSteamNick: TEdit;
    EditRCONHost: TEdit;
    EditRCONPass: TEdit;
    EditRCONPort: TEdit;
    EditSCMap: TEdit;
    EditSCMaxPlayers: TEdit;
    EditSCMode: TEdit;
    EditSCName: TEdit;
    EditSCPort: TEdit;
    EditSCPVMode: TEdit;
    EditSDBDatabase: TEdit;
    EditSDBHost: TEdit;
    EditSDBPass: TEdit;
    EditSDBPort: TEdit;
    EditSDBUser: TEdit;
    EditSendChatFast: TEdit;
    EditServerName: TEdit;
    EditSiteAddress: TEdit;
    EditTPPlace: TEdit;
    EditVKGID: TEdit;
    EditVKHTTP: TEdit;
    EditVKLogin: TEdit;
    EditVKPass: TEdit;
    EditWebURL: TEdit;
    Image1: TImage;
    ImageGraphOnline: TImage;
    ImageList16: TImageList;
    ImageList24: TImageList;
    ImageListMed: TImageList;
    ImageListState48: TImageList;
    ImageSpay: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label3: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label49: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    LabelDayTime: TLabel;
    LabelEx1: TLabelEx;
    LabelEx2: TLabelEx;
    LabelEx3: TLabelEx;
    LabelExConCP: TLabelEx;
    LabelExConDBS: TLabelEx;
    LabelExConDBU: TLabelEx;
    LabelExConPath: TLabelEx;
    LabelExConRCON: TLabelEx;
    LabelExConVK: TLabelEx;
    LabelExEM: TLabelEx;
    LabelExRCON: TLabelEx;
    LabelExThDB: TLabelEx;
    LabelExThGet: TLabelEx;
    LabelExThleg: TLabelEx;
    LabelExThProc: TLabelEx;
    LabelExThWebChat: TLabelEx;
    LabelLastAction: TLabel;
    LabelPICount: TLabel;
    LabelPICPU: TLabel;
    LabelPIMem: TLabel;
    LabelPIThreads: TLabel;
    LabelPlayers: TLabel;
    LabelSCCheats: TLabel;
    LabelSCGold: TLabel;
    LabelStatActiveP: TLabel;
    LabelStatAllP: TLabel;
    LabelStatAllPMonth: TLabel;
    LabelStatAllPToday: TLabel;
    LabelStatAllPYest: TLabel;
    LabelStatAvgPlayTime: TLabel;
    LabelStatEndP: TLabel;
    LabelStatEndPYest: TLabel;
    LabelStatMaxP: TLabel;
    LabelStatNewP: TLabel;
    LabelStatNewYest: TLabel;
    LabelStatNoPlayers: TLabel;
    LabelTimeOnServer: TLabel;
    LabelTimerCheckDonat: TLabel;
    LabelTimerHearthBeat: TLabel;
    LabelTimerRestart: TLabel;
    LabelTimerUpdate: TLabel;
    ListBoxExPlayers: TTableEx;
    MenuItemChatFindPlayer: TMenuItem;
    MenuItemChatTranslate: TMenuItem;
    MenuItemExeSlay: TMenuItem;
    MenuItemаAirdropMax: TMenuItem;
    PageControl: TPageControl;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel1: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel2: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel3: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    PanelBottom: TPanel;
    PanelChatSend: TPanel;
    PanelClient: TPanel;
    PanelCollapsed1: TPanelCollapsed;
    PanelCollapsedActions: TPanelCollapsed;
    PanelCollapsedSpay: TPanelCollapsed;
    PanelCommandExe: TPanel;
    PanelConnections: TPanelCollapsed;
    PanelDB: TPanel;
    PanelDBPICtrl: TPanel;
    PanelEvents: TPanelCollapsed;
    PanelFastChat: TPanel;
    PanelFastChatSend: TPanel;
    PanelGameplayCtrl: TPanelCollapsed;
    PanelGive: TPanelCollapsed;
    PanelGraphOnline: TPanelCollapsed;
    PanelManager: TPanel;
    PanelMenu: TPanel;
    PanelMiniChat: TPanelCollapsed;
    PanelPages: TPanel;
    PanelPerms: TPanelCollapsed;
    PanelPlayerCtrl: TPanel;
    PanelPlayerInfo: TPanel;
    PanelPlayers: TPanel;
    PanelPlayersInfo: TPanel;
    PanelPRev: TPanelCollapsed;
    PanelRCON: TPanel;
    PanelSCFlag: TPanel;
    PanelSDB: TPanel;
    PanelServerInfo: TPanelCollapsed;
    PanelStat: TPanelCollapsed;
    PanelSteamNavigate: TPanel;
    PanelVK: TPanel;
    PopupMenuAirdrop: TPopupMenu;
    PopupMenuBan: TPopupMenu;
    PopupMenuChat: TPopupMenu;
    PopupMenuPlayer: TPopupMenu;
    ProgressBarProc: TProgressBar;
    ProgressBarUELoad: TProgressBar;
    ProgressBarWBLoad: TProgressBar;
    ScrollBox1: TScrollBox;
    ScrollBoxMonitor: TScrollBox;
    Shape13: TShape;
    Shape17: TShape;
    Shape18: TShape;
    Shape19: TShape;
    Shape1: TShape;
    Shape21: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    ShapeChatColor: TLabelEx;
    ShapeFastChatColor: TLabelEx;
    ShapeGroupChatColor: TLabelEx;
    ShapeMiniChatColor: TLabelEx;
    SpeedButtonAirdrop: TSpeedButton;
    SpeedButtonChatDown: TSpeedButton;
    SpeedButtonChatFilter: TSpeedButton;
    SpeedButtonChatRefresh: TSpeedButton;
    SpeedButtonChatSend: TSpeedButton;
    SpeedButtonClearCache: TSpeedButton;
    SpeedButtonClearCookies: TSpeedButton;
    SpeedButtonCommandExe: TSpeedButton;
    SpeedButtonConProc: TSpeedButton;
    SpeedButtonCreateDonat: TSpeedButton;
    SpeedButtonCurSteamInfo: TSpeedButton;
    SpeedButtonDayTime: TSpeedButton;
    SpeedButtonDBPIGeo: TSpeedButton;
    SpeedButtonDBPIGeoStop: TSpeedButton;
    SpeedButtonDBPIRefresh: TSpeedButton;
    SpeedButtonDonat: TSpeedButton;
    SpeedButtonDonatDeactivate: TSpeedButton;
    SpeedButtonDonatDelete: TSpeedButton;
    SpeedButtonDonatExtend: TSpeedButton;
    SpeedButtonDonatUnlimit: TSpeedButton;
    SpeedButtonEventsDown: TSpeedButton;
    SpeedButtonExeBan: TSpeedButton;
    SpeedButtonExeHeal: TSpeedButton;
    SpeedButtonExeKick: TSpeedButton;
    SpeedButtonExeKill: TSpeedButton;
    SpeedButtonFastChatDown: TSpeedButton;
    SpeedButtonFastChatSend: TSpeedButton;
    SpeedButtonFixIE: TSpeedButton;
    SpeedButtonGEventReset: TSpeedButton;
    SpeedButtonGEventRun: TSpeedButton;
    SpeedButtonGEventState: TSpeedButton;
    SpeedButtonGiveEP: TSpeedButton;
    SpeedButtonGiveEPAFK: TSpeedButton;
    SpeedButtonGiveExp: TSpeedButton;
    SpeedButtonGiveItems: TSpeedButton;
    SpeedButtonGiveKit: TSpeedButton;
    SpeedButtonGiveVehicle: TSpeedButton;
    SpeedButtonGroupBan: TSpeedButton;
    SpeedButtonGroupChatSend: TSpeedButton;
    SpeedButtonGroupEP: TSpeedButton;
    SpeedButtonGroupHeal: TSpeedButton;
    SpeedButtonGroupKick: TSpeedButton;
    SpeedButtonGroupKill: TSpeedButton;
    SpeedButtonGroupTP: TSpeedButton;
    SpeedButtonGroupVehicle: TSpeedButton;
    SpeedButtonKitAdd: TSpeedButton;
    SpeedButtonKitItemAdd: TSpeedButton;
    SpeedButtonMap: TSpeedButton;
    SpeedButtonMenuAbout: TSpeedButton;
    SpeedButtonMenuAdmins: TSpeedButton;
    SpeedButtonMenuBans: TSpeedButton;
    SpeedButtonMenuChat: TSpeedButton;
    SpeedButtonMenuKits: TSpeedButton;
    SpeedButtonMenuLog: TSpeedButton;
    SpeedButtonMenuMain: TSpeedButton;
    SpeedButtonMenuMonitor: TSpeedButton;
    SpeedButtonMenuPlayers: TSpeedButton;
    SpeedButtonMenuQuit: TSpeedButton;
    SpeedButtonMenuReload: TSpeedButton;
    SpeedButtonMenuSettings: TSpeedButton;
    SpeedButtonMenuWeb: TSpeedButton;
    SpeedButtonMiniChatDown: TSpeedButton;
    SpeedButtonMiniChatSend: TSpeedButton;
    SpeedButtonMSGAdd: TSpeedButton;
    SpeedButtonPCBan: TSpeedButton;
    SpeedButtonPCKick: TSpeedButton;
    SpeedButtonPCKill: TSpeedButton;
    SpeedButtonPCMute: TSpeedButton;
    SpeedButtonPCPerm: TSpeedButton;
    SpeedButtonPInfo: TSpeedButton;
    SpeedButtonPIReSpy: TSpeedButton;
    SpeedButtonPlayerCtrl: TSpeedButton;
    SpeedButtonPlayersUpdate: TSpeedButton;
    SpeedButtonRefreshAdmins: TSpeedButton;
    SpeedButtonRefreshBans: TSpeedButton;
    SpeedButtonRefreshDonat: TSpeedButton;
    SpeedButtonRestart: TSpeedButton;
    SpeedButtonSetDay: TSpeedButton;
    SpeedButtonSetNight: TSpeedButton;
    SpeedButtonSetStorm: TSpeedButton;
    SpeedButtonShutdown: TSpeedButton;
    SpeedButtonSNNext: TSpeedButton;
    SpeedButtonSNPrev: TSpeedButton;
    SpeedButtonSNRefresh: TSpeedButton;
    SpeedButtonTP: TSpeedButton;
    SpeedButtonTPTarget: TSpeedButton;
    SpeedButtonUEUpdate: TSpeedButton;
    SpeedButtonUEUpdateVehicles: TSpeedButton;
    SpeedButtonUnadmin: TSpeedButton;
    SpeedButtonUnban: TSpeedButton;
    SpeedButtonVKCon: TSpeedButton;
    SpeedButtonWBHome: TSpeedButton;
    SpeedButtonWork: TSpeedButton;
    SpinEditDonatExtend: TlkSpinEdit;
    SpinEditGiveItemAmount: TlkSpinEdit;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    SplitterMainLog: TSplitter;
    SplitterSysLog: TSplitter;
    SQLConnectionSDB1: TSQLConnection;
    sSpeedButton10: TSpeedButton;
    sSpeedButton11: TSpeedButton;
    sSpeedButton12: TSpeedButton;
    sSpeedButton13: TSpeedButton;
    sSpeedButton14: TSpeedButton;
    sSpeedButton15: TSpeedButton;
    sSpeedButton16: TSpeedButton;
    sSpeedButton17: TSpeedButton;
    sSpeedButton18: TSpeedButton;
    sSpeedButton19: TSpeedButton;
    sSpeedButton1: TSpeedButton;
    sSpeedButton20: TSpeedButton;
    sSpeedButton21: TSpeedButton;
    sSpeedButton22: TSpeedButton;
    sSpeedButton24: TSpeedButton;
    sSpeedButton27: TSpeedButton;
    sSpeedButton2: TSpeedButton;
    sSpeedButton31: TSpeedButton;
    sSpeedButton32: TSpeedButton;
    sSpeedButton33: TSpeedButton;
    sSpeedButton4: TSpeedButton;
    sSpeedButton6: TSpeedButton;
    sSpeedButton7: TSpeedButton;
    sSpeedButton8: TSpeedButton;
    sSpeedButton9: TSpeedButton;
    SwitchChatENG: TEsSwitch;
    TableExActions: TTableEx;
    TableExAdmins: TTableEx;
    TableExBans: TTableEx;
    TableExChat: TTableEx;
    TableExDonat: TTableEx;
    TableExFastChat: TTableEx;
    TableExGroupPlayers: TTableEx;
    TableExGroupTP: TTableEx;
    TableExKitData: TTableEx;
    TableExKits: TTableEx;
    TableExLogCommands: TTableEx;
    TableExLogGamePlay: TTableEx;
    TableExLogRCON: TTableEx;
    TableExLogSystem: TTableEx;
    TableExLogSystemFace: TTableEx;
    TableExMapPoints: TTableEx;
    TableExMiniChat: TTableEx;
    TableExMSG: TTableEx;
    TableExPlayerInfo: TTableEx;
    TableExPlayersRev: TTableEx;
    TabSheetChat: TTabSheet;
    TabSheetDBAdmins: TTabSheet;
    TabSheetDBBans: TTabSheet;
    TabSheetDBPlayersInfo: TTabSheet;
    TabSheetDonat: TTabSheet;
    TabSheetKits: TTabSheet;
    TabSheetLog: TTabSheet;
    TabSheetMain: TTabSheet;
    TabSheetSettings: TTabSheet;
    TabSheetSteamInfo: TTabSheet;
    TabSheetWorkWithGroup: TTabSheet;
    TimerCheckDonat: TTimer;
    TimerHearthBeat: TTimer;
    TimerRestart: TTimer;
    TimerUpdate: TTimer;
    WebBrowserInfo: TWebBrowser;
    SpeedButtonDonatAdd: TSpeedButton;
    PanelOnline: TPanel;
    SpeedButtonMenuDB: TSpeedButton;
    TabSheetDB: TTabSheet;
    Panel46: TPanel;
    Panel49: TPanel;
    Panel50: TPanel;
    Label2: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TableEx2: TTableEx;
    PanelTelegram: TPanel;
    Label1: TLabel;
    Panel48: TPanel;
    SpeedButtonTGRecon: TSpeedButton;
    EditTGChatID: TEdit;
    EditTGBotToken: TEdit;
    Panel47: TPanel;
    Label9: TLabel;
    Panel51: TPanel;
    EditAdminSteamName: TEdit;
    SpinEditChatDblToKick: TlkSpinEdit;
    Label46: TLabel;
    Label48: TLabel;
    ButtonFlatOpenLocalDir: TButtonFlat;
    procedure SpeedButtonMenuMainClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButtonMenuQuitClick(Sender: TObject);
    procedure ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketConnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ActionPlayersUpdateExecute(Sender: TObject);
    procedure SpeedButtonMenuChatClick(Sender: TObject);
    procedure SpeedButtonMenuMonitorClick(Sender: TObject);
    procedure SpeedButtonMenuLogClick(Sender: TObject);
    procedure SpeedButtonMenuPlayersClick(Sender: TObject);
    procedure ButtonRCONReconClick(Sender: TObject);
    procedure ClientSocketConnecting(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketDisconnect(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketError(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
    procedure ClientSocketLookup(Sender: TObject; Socket: TCustomWinSocket);
    procedure ClientSocketWrite(Sender: TObject; Socket: TCustomWinSocket);
    procedure ButtonDBReconClick(Sender: TObject);
    procedure ButtonManagerReconClick(Sender: TObject);
    procedure EditChatSendKeyPress(Sender: TObject; var Key: Char);
    procedure ActionSteamInfoExecute(Sender: TObject);
    procedure ListBoxExPlayersItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure ListBoxExPlayersDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableExPlayerInfoGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExBansGetData(FCol, FRow: Integer; var Value: string);
    procedure TimerUpdateTimer(Sender: TObject);
    procedure TableExPlayerInfoItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure TableExBansItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure TableExChatGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExChatItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure SpeedButtonChatSendClick(Sender: TObject);
    procedure EditCommandSendKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButtonCommandExeClick(Sender: TObject);
    procedure EditCommandSendKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ButtonSDBReconClick(Sender: TObject);
    procedure SQLConnectionSDB1AfterConnect(Sender: TObject);
    procedure SQLConnectionSDB1AfterDisconnect(Sender: TObject);
    procedure SQLConnectionSDB1Login(Database: TSQLConnection; LoginParams: TStrings);
    procedure SpeedButtonPlayerCtrlClick(Sender: TObject);
    procedure SpeedButtonPCKickClick(Sender: TObject);
    procedure SpeedButtonPCKillClick(Sender: TObject);
    procedure EditPlayerSteamIDChange(Sender: TObject);
    procedure TableExChatDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure SpeedButtonExeHealClick(Sender: TObject);
    procedure SpeedButtonAirdropClick(Sender: TObject);
    procedure MenuItemаAirdropMaxClick(Sender: TObject);
    procedure TableExMiniChatGetData(FCol, FRow: Integer; var Value: string);
    procedure SpeedButtonMiniChatSendClick(Sender: TObject);
    procedure EditMiniChatSendKeyPress(Sender: TObject; var Key: Char);
    procedure ShapeMiniChatColorMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure SpeedButtonSetStormClick(Sender: TObject);
    procedure SpeedButtonSetNightClick(Sender: TObject);
    procedure SpeedButtonSetDayClick(Sender: TObject);
    procedure TableExAdminsItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure TableExAdminsGetData(FCol, FRow: Integer; var Value: string);
    procedure SpeedButtonExeKillClick(Sender: TObject);
    procedure SpeedButtonExeKickClick(Sender: TObject);
    procedure SpeedButtonExeBanClick(Sender: TObject);
    procedure MenuItemExeSlayClick(Sender: TObject);
    procedure SpeedButtonSNRefreshClick(Sender: TObject);
    procedure SpeedButtonSNPrevClick(Sender: TObject);
    procedure SpeedButtonSNNextClick(Sender: TObject);
    procedure SpeedButtonMenuWebClick(Sender: TObject);
    procedure WebBrowserInfoProgressChange(ASender: TObject; Progress, ProgressMax: Integer);
    procedure SpeedButtonWBHomeClick(Sender: TObject);
    procedure SpeedButtonMapClick(Sender: TObject);
    procedure TableExFastChatGetData(FCol, FRow: Integer; var Value: string);
    procedure EditSendChatFastKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButtonFastChatSendClick(Sender: TObject);
    procedure SpeedButtonDBPIRefreshClick(Sender: TObject);
    procedure SpeedButtonDBPIGeoClick(Sender: TObject);
    procedure SpeedButtonDBPIGeoStopClick(Sender: TObject);
    procedure EditMiniChatSendKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditSendChatFastKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditChatSendKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButtonRefreshBansClick(Sender: TObject);
    procedure SpeedButtonRefreshAdminsClick(Sender: TObject);
    procedure SpeedButtonUnbanClick(Sender: TObject);
    procedure TableExPlayersRevGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExPlayersRevDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure CheckBoxMainManagerClick(Sender: TObject);
    procedure SpeedButtonMenuSettingsClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButtonEventsDownClick(Sender: TObject);
    procedure SpeedButtonMiniChatDownClick(Sender: TObject);
    procedure SpeedButtonFastChatDownClick(Sender: TObject);
    procedure SpeedButtonChatDownClick(Sender: TObject);
    procedure DrawGridTimersDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure SpeedButtonMenuReloadClick(Sender: TObject);
    procedure SpeedButtonUnadminClick(Sender: TObject);
    procedure TableExKitsGetData(FCol, FRow: Integer; var Value: string);
    procedure SpeedButtonMenuKitsClick(Sender: TObject);
    procedure SpeedButtonClearCookiesClick(Sender: TObject);
    procedure DrawGridTimersMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure SpeedButtonGEventRunClick(Sender: TObject);
    procedure SpeedButtonGEventResetClick(Sender: TObject);
    procedure SpeedButtonGEventStateClick(Sender: TObject);
    procedure ButtonGetPlayerPClick(Sender: TObject);
    procedure ButtonPermAddClick(Sender: TObject);
    procedure ButtonPermRemoveClick(Sender: TObject);
    procedure TimerHearthBeatTimer(Sender: TObject);
    procedure SpeedButtonPIReSpyClick(Sender: TObject);
    procedure SpeedButtonMenuBansClick(Sender: TObject);
    procedure SpeedButtonMenuAdminsClick(Sender: TObject);
    procedure EditPISearchChange(Sender: TObject);
    procedure EditPISearchKeyPress(Sender: TObject; var Key: Char);
    procedure TableExChatEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
    procedure SpeedButtonConProcClick(Sender: TObject);
    procedure SpeedButtonVKConClick(Sender: TObject);
    procedure ListBoxExPlayersStartDrag(Sender: TObject; var DragObject: TDragObject);
    procedure TableExGroupPlayersDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure TableExGroupPlayersDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure SpeedButtonWorkClick(Sender: TObject);
    procedure TableExGroupPlayersGetData(FCol, FRow: Integer; var Value: string);
    procedure ListBoxExPlayersMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure TableExGroupPlayersItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure SpeedButtonGroupChatSendClick(Sender: TObject);
    procedure EditGroupChatSendKeyPress(Sender: TObject; var Key: Char);
    procedure TableExMapPointsGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExMapPointsItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure SpeedButtonTPClick(Sender: TObject);
    procedure SpeedButtonTPTargetClick(Sender: TObject);
    procedure EditTPPlaceDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure EditTPPlaceDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TableExActionsGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExLogSystemGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExLogCommandsGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExLogGamePlayGetData(FCol, FRow: Integer; var Value: string);
    procedure SpeedButtonGiveExpClick(Sender: TObject);
    procedure SpeedButtonGiveEPClick(Sender: TObject);
    procedure SpeedButtonGiveItemsClick(Sender: TObject);
    procedure SpeedButtonGiveVehicleClick(Sender: TObject);
    procedure TableExDonatGetData(FCol, FRow: Integer; var Value: string);
    procedure SpeedButtonRefreshDonatClick(Sender: TObject);
    procedure SpeedButtonDonatClick(Sender: TObject);
    procedure SpeedButtonDonatDeactivateClick(Sender: TObject);
    procedure TimerCheckDonatTimer(Sender: TObject);
    procedure SpeedButtonCreateDonatClick(Sender: TObject);
    procedure EditWebURLKeyPress(Sender: TObject; var Key: Char);
    procedure WebBrowserInfoNavigateComplete2(ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
    procedure TableExKitDataGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExKitsItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure SpeedButtonKitAddClick(Sender: TObject);
    procedure TableExKitsItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure TableExKitsEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
    procedure TableExKitsEditOk(Sender: TObject; Value: string; ItemValue, ACol, ARow: Integer);
    procedure SpeedButtonKitItemAddClick(Sender: TObject);
    procedure TableExKitDataEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
    procedure TableExKitDataEditOk(Sender: TObject; Value: string; ItemValue, ACol, ARow: Integer);
    procedure TableExKitDataItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure CheckBoxMiniChatPMClick(Sender: TObject);
    procedure ComboBoxChatFilterDropDown(Sender: TObject);
    procedure SpeedButtonChatFilterClick(Sender: TObject);
    procedure SpeedButtonChatRefreshClick(Sender: TObject);
    procedure SpeedButtonGiveKitClick(Sender: TObject);
    procedure ComboBoxGiveKitDropDown(Sender: TObject);
    procedure TableExFastChatEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
    procedure TableExFastChatDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableExMiniChatItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure TimerRestartTimer(Sender: TObject);
    procedure SpeedButtonShutdownClick(Sender: TObject);
    procedure SpeedButtonRestartClick(Sender: TObject);
    procedure SpeedButtonDonatUnlimitClick(Sender: TObject);
    procedure SpeedButtonDonatExtendClick(Sender: TObject);
    procedure SpeedButtonDonatDeleteClick(Sender: TObject);
    procedure TableExDonatItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure TableExMiniChatMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MenuItemChatTranslateClick(Sender: TObject);
    procedure TableExChatMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MenuItemChatFindPlayerClick(Sender: TObject);
    procedure TableExPlayersRevItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure SpeedButtonDayTimeClick(Sender: TObject);
    procedure SpeedButtonPCMuteClick(Sender: TObject);
    procedure TableExLogRCONGetData(FCol, FRow: Integer; var Value: string);
    procedure SpeedButtonUEUpdateClick(Sender: TObject);
    procedure SpeedButtonUEUpdateVehiclesClick(Sender: TObject);
    procedure SpeedButtonFixIEClick(Sender: TObject);
    procedure SpeedButtonClearCacheClick(Sender: TObject);
    procedure TableExMSGGetData(FCol, FRow: Integer; var Value: string);
    procedure TableExMSGDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure SpeedButtonMSGAddClick(Sender: TObject);
    procedure TableExMSGEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
    procedure TableExMSGEditOk(Sender: TObject; Value: string; ItemValue, ACol, ARow: Integer);
    procedure TableExMSGItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure TableExPlayerInfoColumnClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
    procedure SpeedButtonGiveEPAFKClick(Sender: TObject);
    procedure TableExLogSystemFaceEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
    procedure TableExActionsEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
    procedure SpeedButtonPInfoClick(Sender: TObject);
    procedure SpeedButtonDonatAddClick(Sender: TObject);
    procedure TableExKitDataDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure TableExKitsDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure SpeedButtonMenuDBClick(Sender: TObject);
    procedure SpeedButtonTGReconClick(Sender: TObject);
    procedure EditAdminSteamNameChange(Sender: TObject);
    procedure SpinEditChatDblToKickChange(Sender: TObject);
    procedure ButtonFlatOpenLocalDirClick(Sender: TObject);
  private
    FServerDB: TServerDB;
    FSiteDB: TSiteDB;
    FPIOrderBy: string;
    FAdmins: TAdmins;
    FBans: TBans;
    FBMPStatOnline: TBitmap;
    FBMPStatOnlineBuf: TBitmap;
    FButtonsColor: TColor;                                                       //Цвет иконок меню
    FChatFiltered: Boolean;
    FChatFromGame: TChatList;
    FChatFromSite: TChatList;
    FChatPlayers: TPlayers;
    FChatList: TChatList;
    FChatBase: TChatList;
    FCommands: TCommands;
    FConProcPID: TProcessInformation;
    FConsoleAnswer: TConsoleAnswers;
    FDashboardCtrl: TDashboard;
    FDBDataBase: string;
    FDBHost: string;
    FDBPass: string;
    FDBPort: string;
    FDBUser: string;
    FDonats: TDonats;
    FExecutedCommands: TExecutedCommands;
    FGameEventManager: TGameEventManager;
    FGameMessages: TGameMessages;
    FGridVertPos: Integer;
    FGroupPlayers: TPlayers;
    FIntDataBase: TUDataBase;
    FSelKit: Integer;
    FKits: TKits;
    FLastSiteChatID: Integer;
    FLocalPath: string;
    FLocalServerName: string;
    FLocalServerPath: string;
    FLogRCON: TLog;
    FLogCommands: TLog;
    FLogGamePlay: TLog;
    FLogSystem: TLog;
    FMainManager: Boolean;
    FMapPlaces: TMapPlaces;
    FMaxPing: Integer;
    FMaxPlayers: Integer;
    FMenuColor: TColor;                                                          //Цвет меню
    FNotify: TNotify;
    FPlayers: TPlayers;
    FPlayersRev: TPlayersRev;
    FPopupChatRecord: TChatRecord;
    FRCONHB: THearthBeat;
    FRCONHost: string;
    FRCONPass: string;
    FRCONPort: string;
    FRCONState: TConState;
    FRestarting: Boolean;
    FRestartTimeLeft: Integer;
    FRunOnStart: Boolean;
    FSDBDataBase: string;
    FSDBHost: string;
    FSDBPass: string;
    FSDBPort: string;
    FSDBUser: string;
    FSendedMessages: TExecutedCommands;
    FServerActions: TServerActions;
    FSettings: TSettings;
    FStatistics: TCurrentStatistics;
    FStatOnline: TListInt;
    FStatPing: TListInt;
    FTelegram: TTelegramBot;
    FThreadChatSendToGame: TThreadProc;
    FThreadGetServer: TThreadProc;
    FThreadProcInfo: TThreadProc;
    FThreadTelegram: TThreadProc;
    FThreadUpdatePlayers: TThreadProc;
    FUpdatePlayerInfoFromStop: Boolean;
    FVKGID: string;
    FVKGroup: TVKGroup;
    FVKPass: string;
    FVKUser: string;
    PlayerInfo: TPlayerInfo;
    StartCommands: TServerStartCommands;
    TelegramIsTimed: Boolean;
    TelegramTimer: Integer;
    TimerTerminateCommand: TTimer;
    FIsDay: Boolean;
    FIsFullMoon: Boolean;
    FTimeOnServer: Cardinal;
    FUExplorer: TUnturnedItemBase;
    FUItems: TUEItems;
    FUVehicles: TUEVehicles;
    FChatDblToKick: Integer;
    FRCONCurEvent: string;
    FRCONProcData: TStringList;
    FDragGPlayerItem: Integer;
    FRunningServer: Boolean;
    FStopRunServer: Boolean;
    /// Обработка RCON
    procedure ProcAdmins(Data: TStringList);
    procedure ProcBans(Data: TStringList);
    procedure ProcChat(Data: string; FromAdmin: Boolean = False);
    procedure ProcNoAdmins;
    procedure ProcNoBans;
    procedure ProcNoPlayers(Data: TStringList);
    procedure ProcPGroups(Data: string);
    procedure ProcPlayers(Data: TStringList);
    procedure ProcPlayerState(Data: string);
    procedure ProcServerGet(Data: string);
    procedure ProcSuccess(Data: string);
    ///
    function FindAndSelAdmin(SteamID: string): Boolean;
    function FindAndSelBanned(SteamID: string): Boolean;
    function FindAndSelOnline(SteamID: string): Boolean;
    function FindAndSelOnlineName(GameName: string): Boolean; overload;
    function FindAndSelOnlineName(GameName: string; var ID: Integer): Boolean; overload;
    function FindAndSelPlayerInfo(SteamID: string): Boolean;
    function FindUnturnedProc(var PE: TProcessEntry32; var PHandle: THandle): Boolean;
    function FRunServer(CommandLine: string): Boolean;
    function GetChatColor: TColor;
    function GetChatEng: Boolean;
    function GetFromUserFor(PI: TPlayerInfoRecord): TPlayerInfoRecord;
    function GetLastChat(Cnt: Integer): string;
    function GetLastLog(Cnt: Integer): string;
    function GetPanelPlayerCtrlVisible: Boolean;
    function GetPingAvg: Integer;
    function GetPlayerInfoID(const SteamID: string; var PID: Integer): Boolean;
    function GetPlayers: string;
    function GetUseCommandForAll: Boolean;
    function HandleTelegram(var Data: string): Boolean;
    function RefreshPlayerInfo: Boolean;
    function SendTelegramControl: Boolean;
    function UserCommandProc(ChatRecord: TChatRecord): Boolean;
    procedure Ban(SID, Reason: string; Duration: Cardinal);
    procedure ChatFromSiteInsert(Item: TChatRecord);
    procedure CheckBansToUnban;
    procedure CheckSiteChat;
    procedure CreateCommandsSystem;
    procedure CreateDashboardCtrl;
    procedure CreateGameEventsManager;
    procedure CreateGraphStatOnline;
    procedure CreateLowSystem;
    function CreateSelfie: Boolean;
    procedure CreateServerConfig;
    procedure CreateTablesColumns;
    procedure DeleteIECache;
    procedure EventProcEcho(Sender: TObject);
    procedure EventProcMassAirdrop(Sender: TObject);
    procedure EventProcMassHeal(Sender: TObject);
    procedure EventProcStorm(Sender: TObject);
    procedure EventProcMSG(Sender: TObject);
    procedure FDoRestart;
    procedure FDoStart;
    procedure FGridTimersUpdate;
    procedure FillChatPlayers;
    procedure FUpdateChatList;
    procedure FUpdateKitData;
    procedure FUpdatePlayerList;
    procedure FUpdateSCData;
    procedure FUpdateUExplorerData;
    procedure GetCommands(Data: TStringList);
    procedure GetPlayersSID(var Items: TStringList);
    procedure GraphOnlineRepaint;
    procedure Indicate(IM: TLabelEx; PBP: TPBPos);
    procedure InsertChat(Data: TChatRecord);
    procedure LastAction(Text: string);
    procedure Log(Dest: TLog; Value: string);
    procedure LogCommand(Text: string);
    procedure NextCommand;
    procedure NextMessage(Edit: TEdit);
    procedure OnLoadProgress(AMax, APos: Integer; Info: string);
    procedure OnTimerTerminateCommand(Sender: TObject);
    procedure OnServerDBExcept(E: Exception; Text: string);
    procedure OnSiteDBExcept(E: Exception; Text: string);
    procedure PanelPlayerCtrlHide;
    procedure PanelPlayerCtrlShow;
    procedure PlayerSpy(SID: string);
    procedure PrevCommand;
    procedure PrevMessage(Edit: TEdit);
    procedure ProcCommandNotExec;
    procedure ProcessMSG(SocketData: string);
    procedure ProcFailedWithParam(Buf: string);
    procedure ProcPlayerDied(Data: string);
    procedure ProcSaving(Data: string);
    procedure SendTelegram(MessageText: string; Force: Boolean);
    procedure SetButtonsColor(Value: TColor);
    procedure SetChatColor(const Value: TColor);
    procedure SetChatEng(const Value: Boolean);
    procedure SetFastChat(Visible: Boolean);
    procedure SetFullInfoAdmins;
    procedure SetFullInfoBans;
    procedure SetIsDay(const Value: Boolean);
    procedure SetIsFullMoon(const Value: Boolean);
    procedure SetMainManager(const Value: Boolean);
    procedure SetMenuColor(Value: TColor);
    procedure SetMenuIconColor(Color: TColor);
    procedure SetPage(Tab: TTabSheet);
    procedure SetPlayerInfo(Data: TPlayerInfoRecord);
    procedure SetRCONState(const Value: TConState);
    procedure SetTimeOnServer(const Value: Cardinal);
    procedure SetUseCommandForAll(const Value: Boolean);
    procedure StopTelegram;
    procedure ShowSteamInfo(SteamID: string);
    procedure SwitchPlayerCtrlPanel;
    procedure TelegramProc(ChatItem: TChatRecord);
    procedure TelegramTimerReset;
    procedure ThreadTelegramWork(Thread: TThreadProc);
    procedure ThreadChatSendToGame(Thread: TThreadProc);
    procedure ThreadServerGet(Thread: TThreadProc);
    procedure ThreadUpdateProc(Thread: TThreadProc);
    procedure ThreadUpdateProcessData(Thread: TThreadProc);
    procedure UpdateDayTime;
    procedure UpdateGraphStatOnline;
    procedure UpdateHandler(FUpdates: TtgUpdates);
    procedure UserQuestionProc(ChatRecord: TChatRecord);
    procedure WorldChatToSite(ChatItem: TChatRecord);
    procedure WriteToFile(FileName, Value: string);
    //Events
    procedure OnPlayerActivateDonat(Data: TDonat);
    procedure OnPlayerBan(SteamID: TSteamID; Reason: string; Duration: Cardinal);
    procedure OnPlayerChat(ChatRec: TChatRecord);
    procedure OnPlayerConnect(Player: TPlayer);
    procedure OnPlayerConnectNew(Player: TPlayer);
    procedure OnPlayerDeactivateDonat(Data: TDonat);
    procedure OnPlayerDisconnect(Player: TPlayer);
    procedure OnPlayerUnban(Data: TBannedPlayer);
    procedure UpdateStat;
    procedure SetPIOrderBy(const Value: string);
  public
    function CheckUseCommandForAll: Boolean;
    function GetCurrentPlayerName: string;
    function GetCurrentPlayerSteamID(var SteamID: string): Boolean;
    function GetPlayerName(SID: TSteamID): string;
    function GetServerStartCommandLine: string;
    function GetUnturnedItemID(ID: string): string;
    function PlayerInfoSearch(Text: string): Boolean;
    function SetLocalPath: Boolean;
    function SettingsLoad: Boolean;
    function SettingsSave: Boolean;
    procedure AllReady;
    procedure Chat(From: TChatFrom; Text: string; ToPlayer: TSteamID = '');
    procedure CheckDonat;
    procedure ConnectDB;
    procedure ConnectSDB;
    procedure ConnectVK;
    procedure CreateDonat(var Data: TDonat);
    function DeactivateDonat(Data: TDonat): Boolean;
    procedure LoadDatabase;
    procedure OnStartManger;
    procedure PanelMenuState(Minimazed: Boolean);
    procedure Quit;
    procedure RCONClose;
    procedure RCONConnect;
    procedure RestartServer;
    procedure SendGameMessage(Message: TGameMessage);
    procedure SendCommand(Text: string);
    procedure ShowChatPopup(ChatRecord: TChatRecord);
    procedure UpdatePlayerInfoFrom;
    property Admins: TAdmins read FAdmins;
    property Bans: TBans read FBans;
    property ButtonsColor: TColor read FButtonsColor write SetButtonsColor;      //Цвет иконок меню
    property ChatColor: TColor read GetChatColor write SetChatColor;
    property ChatList: TChatList read FChatList;
    property ChatEng: Boolean read GetChatEng write SetChatEng;
    property DashboardCtrl: TDashboard read FDashboardCtrl write FDashboardCtrl;
    property DBState: TConState read FRCONState write SetRCONState;
    property ExecuteCommand: TCommands read FCommands;
    property ExecutedCommands: TExecutedCommands read FExecutedCommands;
    property Kits: TKits read FKits;
    property MainManager: Boolean read FMainManager write SetMainManager;
    property MaxPing: Integer read FMaxPing write FMaxPing default 500;
    property MaxPlayers: Integer read FMaxPlayers write FMaxPlayers default 24;
    property MenuColor: TColor read FMenuColor write SetMenuColor;               //Цвет меню
    property PanelPlayerCtrlVisible: Boolean read GetPanelPlayerCtrlVisible;
    property Players: TPlayers read FPlayers;
    property PlayersRev: TPlayersRev read FPlayersRev;
    property RCONState: TConState read FRCONState write SetRCONState;
    property SDBState: TConState read FRCONState write SetRCONState;
    property SendedMessages: TExecutedCommands read FSendedMessages;
    property Settings: TSettings read FSettings;
    property Statistics: TCurrentStatistics read FStatistics;
    property StatOnline: TListInt read FStatOnline;
    property StatPing: TListInt read FStatPing;
    property IsDay: Boolean read FIsDay write SetIsDay;
    property IsFullMoon: Boolean read FIsFullMoon write SetIsFullMoon;
    property TimeOnServer: Cardinal read FTimeOnServer write SetTimeOnServer;
    property UseCommandForAll: Boolean read GetUseCommandForAll write SetUseCommandForAll;
    property VKGroup: TVKGroup read FVKGroup;
    property PIOrderBy: string read FPIOrderBy write SetPIOrderBy;
  end;

const
  CRLF = #13#10;
  inSecondsMin = 60;
  inSecondsHour = inSecondsMin * 60;
  inSecondsDay = inSecondsHour * 24;

const
  strPlayerCount = 'Кол-во игроков: %d/%d';

const
  TTValue = 60 * 5;
  GetHInterval = 10 * 1000;
  TelegramInterval = 700;
  ProcInterval = 700;
  ChatSendInterval = 3000;
  PlayerUpdateWait = 20000;
  ServerRunTimeOut = 10000;
  TimeToRestart = 2 * SecsPerMin;

const
  IEVersion = 11001;

const
  LinkSteamProfiles = 'http://steamcommunity.com/profiles';
  fileCommands = '\Server\Commands.dat';
  fileUnturned = '\Unturned.exe';
  {$IFDEF DEBUG}
  fileNameUnturned = 'unturned.exe';
  {$ELSE}
  fileNameUnturned = 'unturned.exe';
  {$ENDIF}

  IniMainManager: array of string = ['Manager', 'Main'];
  IniWinPosL: array of string = ['Window', 'Left'];
  IniWinPosT: array of string = ['Window', 'Top'];
  IniWinPosW: array of string = ['Window', 'Width'];
  IniWinPosH: array of string = ['Window', 'Height'];
  IniWinState: array of string = ['Window', 'State'];
  AdminWords: array of string = ['админ', 'адмен', 'admin', 'adm', 'адм', 'одмин', 'одмен', 'хемуль', 'hemul', 'создатель'];
  BanReasons: array of string = ['actions', 'raid', 'cheat'];
  PermGroupModer = 'Moderators';
  PermGroupVIP = 'vip';
  PermGroupTrueModer = 'extmoder';
  DefPIOrderBy = 'LastLoginGlobal DESC, TotalPlayTime DESC';

var
  FormMain: TFormMain;
  AppPath: string;
  LogNameRCON: string;
  LogNameCommands: string;
  LogNameGameplay: string;
  LogNameSys: string;
  MapAddress: string = '';
  SiteAddress: string = '';
  DefBanDuration: Cardinal = inSecondsHour;
  DefBanReason: string = 'actions';
  AdminSteamName: string {$IFDEF DEBUG}  = 'HemulGM' {$ELSE}  = '' {$ENDIF};
  TelegramChatID:Integer {$IFDEF DEBUG}  = 357027289 {$ENDIF};
  TelegramBotToken: string {$IFDEF DEBUG}  = '360193616:AAFJK-C7ntpDX6EAmKW3qOENosPOU2NUtM8' {$ENDIF}; //Поменяй, если дебажишь. Уведомления бесят)
  ChatDblToKick: Integer = 3; //Предел спама
  ITo, KTo, UTo: TFileTime;
  SysCPUDelta: Extended;
  PID: TProcessEntry32;
  hProc: THandle;
  ProcInfo: TProcessData;
  preIdleTime, preUserTime, preKrnlTime: TFileTime;
  LastChatRec: TChatRecord;

  //http://steamcommunity.com/profiles/76561198326392297/?xml=1

implementation

uses
  Math, UServer.Memo, HGM.Common.Utils;

{$R *.dfm}

constructor TTabSheet.Create(aOwner: TComponent);
begin
  inherited;
  FColor := clBtnFace;
end;

procedure TTabSheet.SetColor(Value: TColor);
begin
  if FColor = Value then
  begin
    FColor := Value;
    Invalidate;
  end;
end;

procedure TTabSheet.WMEraseBkGnd(var Msg: TWMEraseBkGnd);
begin
  if FColor = clBtnFace then
    inherited
  else
  begin
    Brush.Color := FColor;
    FillRect(Msg.dc, ClientRect, Brush.Handle);
    Msg.Result := 1;
  end;
end;

function UpdateProcessData(PE: TProcessEntry32; hProcess: THandle; var PD: TProcessData): Boolean;
var
  ProcMem: PPROCESS_MEMORY_COUNTERS;
  CTime, ETime, KTime, UTime: TFileTime;
  t1, t2, t3: Cardinal;
  IT, KT, UT: TFileTime;
  NKTime: Int64;
  NUTime: Int64;

  function FileTimeToInt(Value: TFileTime): Int64;
  begin
    Result := (Value.dwHighDateTime shl 32) or (Value.dwLowDateTime);
  end;

begin
  Result := False;
  GetSystemTimes(IT, KT, UT);
 //t1:=Abs(CompareFileTimeOwn(ITo, IT));
  t2 := Abs(CompareFileTimeOwn(UTo, UT));
  t3 := Abs(CompareFileTimeOwn(KTo, KT));
  ITo := IT;
  KTo := KT;
  UTo := UT;
  SysCPUDelta := Abs(t3 + t2{ - t1});
  with PD do
  begin
    CntThreads := PE.cntThreads;
    UseMemory := 0;
    CPUUse := 0;

    if hProcess = 0 then
      Exit;
    if GetProcessTimes(hProcess, CTime, ETime, KTime, UTime) then
    begin
      NKTime := FileTimeToInt(KTime);
      NUTime := FileTimeToInt(UTime);
      if OKTime = 0 then
        OKTime := NKTime;
      if OUTime = 0 then
        OUTime := NUTime;
      t1 := Abs(NKTime - OKTime);
      t2 := Abs(NUTime - OUTime);
      OUTime := NUTime;
      OKTime := NKTime;
      try
        CPUUse := PercentRound(Abs((100 / SysCPUDelta) * (t1 + t2)));
      except
        CPUUse := 0;
      end;
    end
    else
      Exit;

    GetMem(ProcMem, SizeOf(_PROCESS_MEMORY_COUNTERS));
    if GetProcessMemoryInfo(hProcess, ProcMem, SizeOf(_PROCESS_MEMORY_COUNTERS)) then
    begin
      UseMemory := ProcMem^.PagefileUsage;
      Result := UseMemory <> 0;
    end;
    FreeMem(ProcMem);
  end;
end;

procedure UpdateLogSystem;
var
  i: Integer;
begin
  if not DirectoryExists(AppPath + 'Logs') then
    CreateDir(AppPath + 'Logs');
  if DirectoryExists(AppPath + 'Logs') then
  begin
    i := 0;
    repeat
      Inc(i);
      LogNameRCON := 'LOG_RCON_' + FormatDateTime('HHMMSS_DDMMYYYY_', Now) + IntToStr(i) + '.log';
    until not FileExists(AppPath + 'Logs\' + LogNameRCON);
    i := 0;
    repeat
      Inc(i);
      LogNameSys := 'LOG_SYS_' + FormatDateTime('HHMMSS_DDMMYYYY_', Now) + IntToStr(i) + '.log';
    until not FileExists(AppPath + 'Logs\' + LogNameSys);
    i := 0;
    repeat
      Inc(i);
      LogNameCommands := 'LOG_CMD_' + FormatDateTime('HHMMSS_DDMMYYYY_', Now) + IntToStr(i) + '.log';
    until not FileExists(AppPath + 'Logs\' + LogNameCommands);
    i := 0;
    repeat
      Inc(i);
      LogNameGameplay := 'LOG_GP_' + FormatDateTime('HHMMSS_DDMMYYYY_', Now) + IntToStr(i) + '.log';
    until not FileExists(AppPath + 'Logs\' + LogNameGameplay);
  end;
end;

function MixColors(FG, BG: TColor; T: Byte): TColor;
var
  R, G, B: byte;

  function MixBytes(FG, BG, TRANS: Byte): Byte;
  begin
    Result := Round(BG + (FG - BG) / 255 * TRANS);
  end;

begin
  T := Max(1, Round((255 / 100) * T));
  R := MixBytes(FG and 255, BG and 255, T);
  G := MixBytes((FG shr 8) and 255, (BG shr 8) and 255, T);
  B := MixBytes((FG shr 16) and 255, (BG shr 16) and 255, T);
  Result := R + G * 256 + B * 65536;
end;

procedure AlphaBlendPixel(ABitmap: TBitmap; X, Y: Integer; R, G, B: Byte; ARatio: Real);
type
  PRGBTripleArray = ^TRGBTripleArray;

  TRGBTripleArray = array[0..1000] of TRGBTriple;
var
  LBack, LNew: TRGBTriple;
  LMinusRatio: Real;
  LScan: PRGBTripleArray;
begin
  if (X < 0) or (X > ABitmap.Width - 1) or (Y < 0) or (Y > ABitmap.Height - 1) then
    Exit; // clipping
  LScan := ABitmap.Scanline[Y];
  LMinusRatio := 1 - ARatio;
  LBack := LScan[X];
  LNew.rgbtBlue := Round(B * ARatio + LBack.rgbtBlue * LMinusRatio);
  LNew.rgbtGreen := Round(G * ARatio + LBack.rgbtGreen * LMinusRatio);
  LNew.rgbtRed := Round(R * ARatio + LBack.rgbtRed * LMinusRatio);
  LScan[X] := LNew;
end;

procedure WuLine(ABitmap: TBitmap; Point1, Point2: TPoint; CLow, CHigh: TColor);
var
  deltax, deltay, loop, start, finish: Integer;
  dx, dy, dydx: Single; // fractional parts
  LR, LG, LB: Byte;
  x1, x2, y1, y2: Integer;
  AColor: TColor;
begin
  x1 := Point1.X;
  y1 := Point1.Y;
  x2 := Point2.X;
  y2 := Point2.Y;
  deltax := abs(x2 - x1); // Calculate deltax and deltay for initialisation
  deltay := abs(y2 - y1);
  if (deltax = 0) or (deltay = 0) then
    deltax := 1;
  if deltax > deltay then
  begin // horizontal or vertical
    if y2 > y1 then
      dydx := -(deltay / deltax)
    else
      dydx := deltay / deltax;
    if x2 < x1 then
    begin
      start := x2; // right to left
      finish := x1;
      dy := y2;
    end
    else
    begin
      start := x1; // left to right
      finish := x2;
      dy := y1;
      dydx := -dydx; // inverse slope
    end;
    for loop := start to finish do
    begin
      AColor := MixColors(CLow, CHigh, Round((trunc(dy) * 100) / ABitmap.Canvas.ClipRect.Height));
      LR := (AColor and $000000FF);
      LG := (AColor and $0000FF00) shr 8;
      LB := (AColor and $00FF0000) shr 16;
      AlphaBlendPixel(ABitmap, loop, trunc(dy), LR, LG, LB, 1 - frac(dy));
      AlphaBlendPixel(ABitmap, loop, trunc(dy) + 1, LR, LG, LB, frac(dy));
      dy := dy + dydx; // next point
    end;
  end
  else
  begin
    if x2 > x1 then
      dydx := -(deltax / deltay)
    else
      dydx := deltax / deltay;
    if y2 < y1 then
    begin
      start := y2; // right to left
      finish := y1;
      dx := x2;
    end
    else
    begin
      start := y1; // left to right
      finish := y2;
      dx := x1;
      dydx := -dydx; // inverse slope
    end;
    for loop := start to finish do
    begin
      AColor := MixColors(CLow, CHigh, Round((loop * 100) / ABitmap.Canvas.ClipRect.Height));
      LR := (AColor and $000000FF);
      LG := (AColor and $0000FF00) shr 8;
      LB := (AColor and $00FF0000) shr 16;
      AlphaBlendPixel(ABitmap, trunc(dx), loop, LR, LG, LB, 1 - frac(dx));
      AlphaBlendPixel(ABitmap, trunc(dx) + 1, loop, LR, LG, LB, frac(dx));
      dx := dx + dydx; // next point
    end;
  end;
end;

{ TThreadProc }

procedure TThreadProc.Stop;
begin
  FStop := True;
end;

procedure TThreadProc.Beat;
begin
  if FHearthBeat = 1 then
    FHearthBeat := 2
  else
    FHearthBeat := 1;
end;

constructor TThreadProc.Create(CreateSuspended: Boolean);
begin
  inherited Create(CreateSuspended);
  FWork := twNone;
  FStop := False;
  FHearthBeat := 0;
  FStopped := True;
end;

procedure TThreadProc.Execute;
begin
  FStopped := False;
  FStop := False;
  if Assigned(FProc) then
    FProc(Self);
  FStopped := True;
end;

{ TFormMain }

function TFormMain.SetLocalPath: Boolean;
var
  List: TStringList;
begin
  Result := False;
  if not DirectoryExists(FLocalPath) then
    Exit;
  if not FileExists(FLocalPath + fileUnturned) then
    Exit;
  if FileExists(FLocalServerPath + fileCommands) then
  begin
    List := TStringList.Create;
    try
      List.LoadFromFile(FLocalServerPath + fileCommands, TUTF8Encoding.UTF8);
    except
      on E: Exception do
        Log(FLogSystem, 'SetLocalPath ' + E.Message);
    end;
    GetCommands(List);
    List.Free;
  end;
  Result := True;
end;

function TFormMain.GetChatColor: TColor;
begin
  Result := ShapeChatColor.Brush.Color;
end;

function TFormMain.GetChatEng: Boolean;
begin
  Result := SwitchChatENG.Checked;
end;

function TFormMain.GetCurrentPlayerSteamID(var SteamID: string): Boolean;
begin
  Result := EditPlayerSteamID.Text <> '';
  if Result then
    SteamID := EditPlayerSteamID.Text;
end;

function TFormMain.GetFromUserFor(PI: TPlayerInfoRecord): TPlayerInfoRecord;
var
  i: integer;
  XMLDoc: IXMLDOMDocument;
  Nodes: IXMLDOMNodeList;
begin
  Result := PI;
  if Result.IP = '0.0.0.0' then
    Exit;
  XMLDoc := CoDOMDocument.Create;
  try
    XMLDoc.Async := False;
    if XMLDoc.Load('http://api.sypexgeo.net/xml/' + Result.IP) then
    begin
      Nodes := XMLDoc.GetElementsByTagName('name_ru');
      for i := 0 to Nodes.Length - 1 do
        case i of
          0:
            Result.FromCity := (Nodes.Item[i] as IXMLDOMNode).Text;
      //1:Result.FromCountry:=(Nodes.Item[i] as IXMLDOMNode).Text;
          2:
            Result.FromCountry := (Nodes.Item[i] as IXMLDOMNode).Text;
        end;
    end;
  finally
    XMLDoc := nil;
  end;
end;

function TFormMain.GetCurrentPlayerName: string;
begin
  Result := EditPlayerNick.Text;
end;

function TFormMain.GetPanelPlayerCtrlVisible: Boolean;
begin
  Result := PanelPlayerInfo.Height > 70;
end;

function TFormMain.GetPingAvg: Integer;
var
  i, TryInt: Integer;
begin
  Result := 0;
  if Players.Count <= 0 then
    Exit;
  for i := 0 to Players.Count - 1 do
  begin
    if TryStrToInt(Players[i].Ping, TryInt) then
      Result := Result + TryInt;
  end;
  if Result > 0 then
    Result := Result div Players.Count;
end;

function TFormMain.GetPlayerInfoID(const SteamID: string; var PID: Integer): Boolean;
var
  i: Integer;
begin
  PID := -1;
  Result := False;
  if PlayerInfo.Count <= 0 then
    Exit;
  for i := 0 to PlayerInfo.Count - 1 do
  begin
    if PlayerInfo[i].SteamID = SteamID then
    begin
      PID := i;
      Exit(True);
    end;
  end;
end;

function TFormMain.GetPlayerName(SID: TSteamID): string;
var
  PID: Integer;
begin
  Result := SID;
  if GetPlayerInfoID(SID, PID) then
    Result := PlayerInfo[PID].CharName;
end;

function TFormMain.GetServerStartCommandLine: string;
begin
  //"H:\Games\SteamLibrary\steamapps\common\Unturned Server\Unturned.exe" -nographics -batchmode +secureserver/Russia_HGM
  Result := FLocalPath + fileUnturned + ' -nographics -batchmode +secureserver/' + FLocalServerName;
end;

function TFormMain.GetUnturnedItemID(ID: string): string;
var
  nID: Integer;
begin
  Result := 'Name of ' + ID;
  if not TryStrToInt(ID, nID) then
    Exit;
  ID := FUItems.GetItemDesc(nID);
  if ID <> '' then
    Result := ID;
end;

function TFormMain.GetUseCommandForAll: Boolean;
begin
  Result := CheckBoxUseForAll.Checked;
end;

function TFormMain.GetPlayers: string;
var
  i: Integer;
begin
  if Players.Count <= 0 then
    Exit('Нет игроков');

  Result := 'Игроков: ' + IntToStr(Players.Count);
  for i := 0 to Players.Count - 1 do
  begin
    Result := Result + #13#10 + '/ban_' + Players[i].SteamID + ' ' + Players[i].GameName + ' - ' + Players[i].Ping;
  end;
end;

function TFormMain.GetLastLog(Cnt: Integer): string;
var
  i: Integer;
begin
  Result := '<пусто>';
  if FLogCommands.Count <= 0 then
    Exit;
  for i := Min(FLogCommands.Count - 1, Cnt) downto 0 do
    Result := Result + FLogCommands[i].ToString + #13#10;
end;

function TFormMain.GetLastChat(Cnt: Integer): string;
var
  i: Integer;
begin
  Result := '';
  if FChatList.Count <= 0 then
    Exit('<пусто>');
  for i := Max(0, (FChatList.Count - 1) - Cnt) to FChatList.Count - 1 do
    Result := Result + FChatList[i].Message + #13#10;
end;

function TFormMain.SendTelegramControl: Boolean;
var
  Rep: TtgInlineKeyboardMarkup;
  Keys: TArray<TArray<TtgInlineKeyboardButton>>;
begin
  Rep := TtgInlineKeyboardMarkup.Create;
  Rep.selective := True;
  SetLength(Keys, 1);
  SetLength(Keys[0], 5);

  Keys[0][0] := TtgInlineKeyboardButton.Create;
  Keys[0][0].Text := 'Чат';
  Keys[0][0].callback_data := 'lastchat';

  Keys[0][1] := TtgInlineKeyboardButton.Create;
  Keys[0][1].Text := 'Игроки ' + IntToStr(Players.Count);
  Keys[0][1].callback_data := 'players';

  Keys[0][2] := TtgInlineKeyboardButton.Create;
  Keys[0][2].Text := 'Лог';
  Keys[0][2].callback_data := 'lastlog';

  Keys[0][3] := TtgInlineKeyboardButton.Create;
  Keys[0][3].Text := 'Закончить чат';
  Keys[0][3].callback_data := 'stop';

  Keys[0][4] := TtgInlineKeyboardButton.Create;
  Keys[0][4].Text := 'Экран';
  Keys[0][4].callback_data := 'screen';
 // FTelegram.OnUpdates
  Rep.inline_keyboard := Keys;
  FTelegram.SendMessage(TelegramChatID, 'Управление', TtgParseMode.Markdown, False, False, 0, Rep);
end;

function TFormMain.HandleTelegram(var Data: string): Boolean;
begin
  LastAction('Обработка телеграма');
  Result := False;
  if Pos('/reset', Data) = 1 then
  begin
    TelegramTimerReset;
    Exit(True);
  end;
  if Pos('/ban_', Data) = 1 then
  begin
    Ban(Copy(Data, 6, 32), '', DefBanDuration);
    Exit(True);
  end;
  if Pos('/untimed', Data) = 1 then
  begin
    TelegramIsTimed := False;
    Exit(True);
  end;
  if Pos('/timed', Data) = 1 then
  begin
    TelegramIsTimed := True;
    Exit(True);
  end;
  if Pos('/stop', Data) = 1 then
  begin
    StopTelegram;
    Exit(True);
  end;
  if (Pos('панель', AnsiLowerCase(Data)) = 1) or (Pos('panel', AnsiLowerCase(Data)) = 1) or (Pos('control', AnsiLowerCase(Data)) = 1) or (Pos('контроль', AnsiLowerCase(Data)) = 1) then
  begin
    SendTelegramControl;
    Exit(True);
  end;
  if Pos('/players', Data) = 1 then
  begin
    SendTelegram(GetPlayers, True);
    Exit(True);
  end;
  if Pos('/chatlang', Data) = 1 then
  begin
    if ChatEng then
      SendTelegram('Чат на английском', True)
    else
      SendTelegram('Чат на русском', True);
    Exit(True);
  end;
  if Pos('/chattranslate', Data) = 1 then
  begin
    ChatEng := not ChatEng;
    if ChatEng then
      SendTelegram('Чат на английском', True)
    else
      SendTelegram('Чат на русском', True);
    Exit(True);
  end;
  if Pos('/lastlog', Data) = 1 then
  begin
    try
      SendTelegram(GetLastLog(StrToInt(Copy(Data, 9, 4))), True);
    except
      SendTelegram('lastlog <кол-во>', True);
    end;
    Exit(True);
  end;
  if Pos('/lastchat', Data) = 1 then
  begin
    try
      SendTelegram(GetLastChat(StrToInt(Copy(Data, 10, 4))), True);
    except
      SendTelegram('lastchat <кол-во>', True);
    end;
    Exit(True);
  end;
  if Data[1] = '/' then
  begin
    ExecuteCommand.Command(Data);
    Exit(True);
  end;
end;

function TFormMain.RefreshPlayerInfo: Boolean;
begin
  FServerDB.GetPlayers(PlayerInfo, FStatistics, FPIOrderBy);
  LabelPICount.Caption := IntToStr(TableExPlayerInfo.ItemIndex + 1) + ' из ' + IntToStr(PlayerInfo.Count);
  UpdateStat;
end;

function TFormMain.FRunServer(CommandLine: string): Boolean;
var
  SInfo: TStartupInfo;
  TimeStamp: Cardinal;
begin
  if FRunningServer then
  begin
    FStopRunServer := True;
    Exit;
  end
  else
    FRunningServer := True;
  LastAction('Запуск сервера');
  Result := False;
  try
    ZeroMemory(@SInfo, SizeOf(SInfo));
    SInfo.cb := SizeOf(SInfo);
    SInfo.dwFlags := STARTF_USESHOWWINDOW;
    SInfo.wShowWindow := SW_SHOWNORMAL;
    if CreateProcess(nil, PChar(CommandLine), nil, nil, False, CREATE_NEW_CONSOLE or HIGH_PRIORITY_CLASS, nil, PChar(FLocalPath), SInfo, FConProcPID) then
    begin
      WaitForInputIdle(FConProcPID.hProcess, ServerRunTimeOut);
      Sleep(ServerRunTimeOut);
      RCONConnect;
      while (not ClientSocket.Active) and (not Application.Terminated) and (not FStopRunServer) do
      begin
        if FRCONState <> csConnecting then
          RCONConnect;
        TimeStamp := GetTickCount;
        while GetTickCount < (TimeStamp + 5000) do
          Application.ProcessMessages;
      end;
    end;
  except
    on E: Exception do
    begin
      Log(FLogSystem, 'FRunServer ' + E.Message);
      Result := False;
    end;
  end;
  FRunningServer := False;
end;

function TFormMain.PlayerInfoSearch(Text: string): Boolean;
var
  i: Integer;

  function FindText(Substr, Str: string): Boolean;
  begin
    Result := Pos(AnsiLowerCase(Substr), AnsiLowerCase(Str)) > 0;
  end;

begin
  LastAction('Поиск записи пользователя');
  Result := False;
  if PlayerInfo.Count <= 0 then
    Exit;
  for i := Max(0, TableExPlayerInfo.ItemIndex + 1) to PlayerInfo.Count - 1 do
  begin
    if FindText(Text, PlayerInfo[i].SteamID) or FindText(Text, PlayerInfo[i].SteamName) or FindText(Text, PlayerInfo[i].CharName) or FindText(Text, PlayerInfo[i].IP) or FindText(Text, PlayerInfo[i].FromCountry) or FindText(Text, PlayerInfo[i].FromCity) then
    begin
      TableExPlayerInfo.ItemIndex := i;
      Exit(True);
    end;
  end;
end;

function TFormMain.SettingsLoad: Boolean;
var
  CA: TConsoleAnswer;
  MP: TMapPlace;
  CAF: TStringList;
  i: Integer;

  procedure LoadWindowsPos;
  var
    i: Integer;
  begin
    if ScrollBoxMonitor.ControlCount > 0 then
      for i := 0 to ScrollBoxMonitor.ControlCount - 1 do
        if ScrollBoxMonitor.Controls[i] is TPanel then
        begin
          (ScrollBoxMonitor.Controls[i] as TPanel).Left := Settings.GetInt((ScrollBoxMonitor.Controls[i] as TPanel).Name, 'Left', 3);
          (ScrollBoxMonitor.Controls[i] as TPanel).Top := Settings.GetInt((ScrollBoxMonitor.Controls[i] as TPanel).Name, 'Top', 3);
        end;
    ScrollBoxMonitor.Realign;
  end;

begin
 //LoadWindowsPos;
  LastAction('Закгрузка настроек');
  MainManager := Settings.GetBool(IniMainManager, False);
  WindowState := TWindowState(Settings.GetInt(IniWinState, 0));
  if WindowState <> wsMaximized then
  begin
    Left := Settings.GetInt(IniWinPosL, Left);
    Top := Settings.GetInt(IniWinPosT, Top);
    Height := Settings.GetInt(IniWinPosH, Height);
    Width := Settings.GetInt(IniWinPosW, Width);
  end;
  EditRCONHost.Text := Settings.GetStr('Connections', 'RCON_HOST', '127.0.0.1');
  EditRCONPort.Text := Settings.GetStr('Connections', 'RCON_PORT', '27025');
  EditRCONPass.Text := Settings.GetStr('Connections', 'RCON_PASS', '');

  EditDBHost.Text := Settings.GetStr('Connections', 'DB_HOST', '127.0.0.1');
  EditDBPort.Text := Settings.GetStr('Connections', 'DB_PORT', '3306');
  EditDBDatabase.Text := Settings.GetStr('Connections', 'DB_BASE', 'unturned');
  EditDBUser.Text := Settings.GetStr('Connections', 'DB_USER', 'unturned_user');
  EditDBPass.Text := Settings.GetStr('Connections', 'DB_PASS', '');

  EditSDBHost.Text := Settings.GetStr('Connections', 'SDB_HOST', '127.0.0.1');
  EditSDBPort.Text := Settings.GetStr('Connections', 'SDB_PORT', '3306');
  EditSDBDatabase.Text := Settings.GetStr('Connections', 'SDB_BASE', 'mysite');
  EditSDBUser.Text := Settings.GetStr('Connections', 'SDB_USER', 'unturned_user');
  EditSDBPass.Text := Settings.GetStr('Connections', 'SDB_PASS', '');

  EditLocalPath.Text := Settings.GetStr('Connections', 'LOCAL_PATH', '');
  EditServerName.Text := Settings.GetStr('Connections', 'LOCAL_SERVER', '');

  FPIOrderBy := Settings.GetStr('Data', 'PIOrderBy', DefPIOrderBy);

  ChatColor := Settings.GetInt('General', 'ChatColor', ChatColor);
  FRunOnStart := Settings.GetBool('General', 'RunOnStart', False);

  EditMapAddress.Text := Settings.GetStr('Connections', 'MAP_ADDRESS', MapAddress);
  EditSiteAddress.Text := Settings.GetStr('Connections', 'SITE_ADDRESS', SiteAddress);

  TelegramBotToken := Settings.GetStr('Telegram', 'TelegramBotToken', TelegramBotToken);
  EditTGBotToken.Text := TelegramBotToken;
  TelegramChatID := Settings.GetInt('Telegram', 'TelegramChatID', TelegramChatID);
  EditTGChatID.Text := TelegramChatID.ToString;

  AdminSteamName := Settings.GetStr('General', 'AdminSteamName', AdminSteamName);
  EditAdminSteamName.Text := AdminSteamName;

  ChatDblToKick := Settings.GetInt('General', 'ChatDblToKick', ChatDblToKick);
  SpinEditChatDblToKick.Value := ChatDblToKick;

  TableExLogSystemFace.Width := Settings.GetInt('Interface', 'TableExLogSystemFace', TableExLogSystemFace.Width);
  TableExLogGamePlay.Width := Settings.GetInt('Interface', 'TableExLogGamePlay', TableExLogGamePlay.Width);
  TableExLogSystem.Height := Settings.GetInt('Interface', 'TableExLogSystem', TableExLogSystem.Height);
  PanelBottom.Height := Settings.GetInt('Interface', 'PanelBottom', PanelBottom.Height);

  if FileExists(ExtractFilePath(Application.ExeName) + 'Data\console_answers.dat') then
  begin
    CAF := TStringList.Create;
    CAF.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Data\console_answers.dat');
    for i := 0 to CAF.Count - 1 do
    begin
      if Pos(#9, CAF[i]) <> 0 then
        FConsoleAnswer.Add(CA.Create(Copy(CAF[i], 1, Pos(#9, CAF[i])), Copy(CAF[i], Pos(#9, CAF[i]), 40)));
    end;
    CAF.Free;
  end;

  FMapPlaces.Add(MP.Create('Bellevue Golf Course', 'Поле для гольфа'));
  FMapPlaces.Add(MP.Create('Clearwater Campground', 'Лагерь Клиауатер'));
  FMapPlaces.Add(MP.Create('Scorpion-7', 'Скорпион-7'));
  FMapPlaces.Add(MP.Create('Camano Campground', 'Лагерь Камано'));
  FMapPlaces.Add(MP.Create('Everett', 'Эверет'));
  FMapPlaces.Add(MP.Create('Kennewick Farm', 'Ферма Кенниуик'));
  FMapPlaces.Add(MP.Create('Seattle', 'Сиетл'));
  FMapPlaces.Add(MP.Create('Shelton Farm', 'Ферма Шелтон'));
  FMapPlaces.Add(MP.Create('Puget Sound', 'Пролив Пуджет'));
  FMapPlaces.Add(MP.Create('Olympia Military Base', 'Военная база Олимпия'));
  FMapPlaces.Add(MP.Create('Rainbridge Island', 'Остров Райнбридж'));
  FMapPlaces.Add(MP.Create('Tacoma', 'Такома'));
  FMapPlaces.Add(MP.Create('Heritage Valley', 'Деревня Хирайтж'));
  FMapPlaces.Add(MP.Create('Kent Raceway', 'Гон. трасса Кент'));
  FMapPlaces.Add(MP.Create('Arlington Farm', 'Ферма Эрлингтон'));
  FMapPlaces.Add(MP.Create('Paradise Point', 'Парадиз Поинт'));
  Result := True;
end;

function TFormMain.SettingsSave: Boolean;

  procedure SaveWindowsPos;
  var
    i: Integer;
  begin
    if ScrollBoxMonitor.ControlCount > 0 then
      for i := 0 to ScrollBoxMonitor.ControlCount - 1 do
        if ScrollBoxMonitor.Controls[i] is TPanel then
        begin
          Settings.SetInt((ScrollBoxMonitor.Controls[i] as TPanel).Name, 'Left', (ScrollBoxMonitor.Controls[i] as TPanel).Left);
          Settings.SetInt((ScrollBoxMonitor.Controls[i] as TPanel).Name, 'Top', (ScrollBoxMonitor.Controls[i] as TPanel).Top);
        end;
  end;

begin
  LastAction('Сохранение настроек');
  Result := True;
  try
    SaveWindowsPos;
    Settings.SetBool(IniMainManager, FMainManager);
    Settings.SetInt(IniWinState, Ord(WindowState));
    if WindowState <> wsMaximized then
    begin
      Settings.SetInt(IniWinPosL, Left);
      Settings.SetInt(IniWinPosT, Top);
      Settings.SetInt(IniWinPosH, Height);
      Settings.SetInt(IniWinPosW, Width);
    end;
    Settings.SetStr('Connections', 'RCON_HOST', EditRCONHost.Text);
    Settings.SetStr('Connections', 'RCON_PORT', EditRCONPort.Text);
    Settings.SetStr('Connections', 'RCON_PASS', EditRCONPass.Text);

    Settings.SetStr('Connections', 'DB_HOST', EditDBHost.Text);
    Settings.SetStr('Connections', 'DB_PORT', EditDBPort.Text);
    Settings.SetStr('Connections', 'DB_BASE', EditDBDatabase.Text);
    Settings.SetStr('Connections', 'DB_USER', EditDBUser.Text);
    Settings.SetStr('Connections', 'DB_PASS', EditDBPass.Text);

    Settings.SetStr('Connections', 'SDB_HOST', EditSDBHost.Text);
    Settings.SetStr('Connections', 'SDB_PORT', EditSDBPort.Text);
    Settings.SetStr('Connections', 'SDB_BASE', EditSDBDatabase.Text);
    Settings.SetStr('Connections', 'SDB_USER', EditSDBUser.Text);
    Settings.SetStr('Connections', 'SDB_PASS', EditSDBPass.Text);

    Settings.SetStr('Connections', 'LOCAL_PATH', EditLocalPath.Text);
    Settings.SetStr('Connections', 'LOCAL_SERVER', EditServerName.Text);

    Settings.SetInt('General', 'ChatColor', ChatColor);
    Settings.SetBool('General', 'RunOnStart', FRunOnStart);

    Settings.SetStr('Data', 'PIOrderBy', FPIOrderBy);

    Settings.SetStr('Connections', 'MAP_ADDRESS', EditMapAddress.Text);
    Settings.SetStr('Connections', 'SITE_ADDRESS', EditSiteAddress.Text);

    Settings.SetStr('Telegram', 'TelegramBotToken', TelegramBotToken);
    Settings.SetInt('Telegram', 'TelegramChatID', TelegramChatID);

    Settings.SetStr('General', 'AdminSteamName', AdminSteamName);
    Settings.SetInt('General', 'ChatDblToKick', ChatDblToKick);

    Settings.SetInt('Interface', 'TableExLogSystemFace', TableExLogSystemFace.Width);
    Settings.SetInt('Interface', 'TableExLogGamePlay', TableExLogGamePlay.Width);
    Settings.SetInt('Interface', 'TableExLogSystem', TableExLogSystem.Height);
    Settings.SetInt('Interface', 'PanelBottom', PanelBottom.Height);
  except
    on E: Exception do
    begin
      Log(FLogSystem, 'SettingsSave ' + E.Message);
      Result := False;
    end;
  end;
end;

function TFormMain.FindUnturnedProc(var PE: TProcessEntry32; var PHandle: THandle): Boolean;
var
  Snapshot: THandle;
begin
  LastAction('Поиск процесса сервера');
  Result := False;
  Snapshot := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  PE.dwSize := SizeOf(PE);
  if Process32First(Snapshot, PE) then
    repeat
      if LowerCase(string(PE.szExeFile)) = fileNameUnturned then
      begin
        PHandle := OpenProcess(PROCESS_QUERY_INFORMATION or PROCESS_VM_READ, False, PE.th32ProcessID);
        Exit(PHandle <> 0);
      end;
    until not Process32Next(Snapshot, PE);
end;

function TFormMain.CheckUseCommandForAll: Boolean;
begin
  if UseCommandForAll then
    Result := MessageBox(Application.Handle, 'Вы подтверждаете применение команды ко всем игрокам?', 'Подтвердите массовое применение команды!', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON2) = ID_YES
  else
    Result := True;
end;

function TFormMain.UserCommandProc(ChatRecord: TChatRecord): Boolean;
begin
  Result := False;
  if (Pos('/a ', ChatRecord.Text) = 1) or (Pos('/admin ', ChatRecord.Text) = 1) then
  begin
    ChatRecord.PM := True;
    InsertChat(ChatRecord);
    Result := True;
  end;
end;

function TFormMain.FindAndSelAdmin(SteamID: string): Boolean;
var
  i: Integer;
begin
  Result := False;
  if Admins.Count <= 0 then
    Exit;
  for i := 0 to Admins.Count - 1 do
  begin
    if Admins[i].PlayerSteamID = SteamID then
    begin
      TableExAdmins.ItemIndex := i;
      Exit(True);
    end;
  end;
end;

function TFormMain.FindAndSelPlayerInfo(SteamID: string): Boolean;
var
  i: Integer;
begin
  Result := False;
  if PlayerInfo.Count <= 0 then
    Exit;
  for i := 0 to PlayerInfo.Count - 1 do
  begin
    if PlayerInfo[i].SteamID = SteamID then
    begin
      TableExPlayerInfo.ItemIndex := i;
      Exit(True);
    end;
  end;
end;

function TFormMain.FindAndSelBanned(SteamID: string): Boolean;
var
  i: Integer;
begin
  Result := False;
  if Bans.Count <= 0 then
    Exit;
  for i := 0 to Bans.Count - 1 do
  begin
    if Bans[i].PlayerSteamID = SteamID then
    begin
      TableExBans.ItemIndex := i;
      Exit(True);
    end;
  end;
end;

function TFormMain.FindAndSelOnline(SteamID: string): Boolean;
var
  i: Integer;
begin
  Result := False;
  if Players.Count <= 0 then
    Exit;
  for i := 0 to Players.Count - 1 do
  begin
    if Players[i].SteamID = SteamID then
    begin
      ListBoxExPlayers.ItemIndex := i;
      Exit(True);
    end;
  end;
end;

function TFormMain.FindAndSelOnlineName(GameName: string; var ID: Integer): Boolean;
var
  i: Integer;
begin
  Result := False;
  if Players.Count <= 0 then
    Exit;
  for i := 0 to Players.Count - 1 do
  begin
    if Players[i].GameName = GameName then
    begin
      ID := i;
      Exit(True);
    end;
  end;
end;

function TFormMain.FindAndSelOnlineName(GameName: string): Boolean;
var
  SID: Integer;
begin
  Result := FindAndSelOnlineName(GameName, SID);
  if Result then
    ListBoxExPlayers.ItemIndex := SID;
end;

function TFormMain.DeactivateDonat(Data: TDonat): Boolean;
begin
  Result := False;
  if FServerDB.DeactivateDonat(Data.ID) then
  begin
    ExecuteCommand.PermRemove(Data.Player.SteamID, Data.Group);
    OnPlayerDeactivateDonat(Data);
    Result := True;
  end;
end;

procedure TFormMain.ThreadTelegramWork(Thread: TThreadProc);
var
  Updates: TTgUpdates;
  MessageOffset: Integer;
begin
  if not FormMain.MainManager then
  begin
    Thread.Work := twExit;
    Exit;
  end;
  try
    Thread.Work := twWork;
    MessageOffset := 0;
    Thread.Stopping := False;
    while (not Application.Terminated) and (not Thread.Terminated) and (not Thread.Stopping) do
    begin
      Thread.Synchronize(Thread.Beat);
      Sleep(TelegramInterval);
      try
        Updates := FTelegram.getUpdates(MessageOffset, 100, 1000);
      except
        on E: Exception do
        begin
          Thread.Synchronize(
            procedure
            begin
              Log(FLogSystem, 'ThreadTelegramWork ' + E.Message);
            end);
          Exit;
        end;
      end;
      if Length(Updates) <= 0 then
        Continue;
      Thread.Synchronize(
        procedure
        begin
          FormMain.UpdateHandler(Updates);
        end);
      MessageOffset := Updates[High(Updates)].ID + 1;
    end;
    Thread.Work := twExit;
  except
    on E: Exception do
    begin
      Thread.Synchronize(
        procedure
        begin
          Log(FLogSystem, 'ThreadTelegramWork ' + E.Message)
        end);
      Thread.Work := twExcept;
    end;
  end;
end;

procedure TFormMain.SetFullInfoBans;
var
  i, j: Integer;
  BP: TBannedPlayer;
  FoundName, FoundJudge: Boolean;
begin
  if Bans.Count <= 0 then
    Exit;
  if PlayerInfo.Count <= 0 then
    Exit;

  for i := 0 to Bans.Count - 1 do
  begin
    FoundName := Bans[i].PlayerSteamID = '0';
    FoundJudge := Bans[i].JudgeSteamID = '0';
    for j := 0 to PlayerInfo.Count - 1 do
    begin
      if not FoundName then
        if PlayerInfo[j].SteamID = Bans[i].PlayerSteamID then
        begin
          BP := Bans[i];
          BP.PlayerSteamName := PlayerInfo[j].SteamName;
          BP.PlayerGameName := PlayerInfo[j].CharName;
          Bans[i] := BP;
          FoundName := True;
        end;
      if not FoundJudge then
        if PlayerInfo[j].SteamID = Bans[i].JudgeSteamID then
        begin
          BP := Bans[i];
          BP.JudgeSteamName := PlayerInfo[j].SteamName;
          BP.JudgeGameName := PlayerInfo[j].CharName;
          Bans[i] := BP;
          FoundJudge := True;
        end;
      if FoundName and FoundJudge then
        Break;
    end;
  end;
  Bans.UpdateTable;
end;

procedure TFormMain.SetIsDay(const Value: Boolean);
begin
  FIsDay := Value;
  UpdateDayTime;
end;

procedure TFormMain.SetIsFullMoon(const Value: Boolean);
begin
  FIsFullMoon := Value;
  UpdateDayTime;
end;

procedure TFormMain.SetFastChat(Visible: Boolean);
begin
  if Visible then
    PanelFastChat.Height := 250
  else
    PanelFastChat.Height := 0;
  PanelFastChat.AlignWithMargins := Visible;
end;

procedure TFormMain.SetFullInfoAdmins;
var
  i, j: Integer;
  AP: TAdminPlayer;
  FoundName, FoundJudge: Boolean;
begin
  LastAction('SetFullInfoAdmins');
  if Admins.Count <= 0 then
    Exit;
  if PlayerInfo.Count <= 0 then
    Exit;

  for i := 0 to Admins.Count - 1 do
  begin
    FoundName := Admins[i].PlayerSteamID = '0';
    FoundJudge := Admins[i].JudgeSteamID = '0';
    for j := 0 to PlayerInfo.Count - 1 do
    begin
      if not FoundName then
        if PlayerInfo[j].SteamID = Admins[i].PlayerSteamID then
        begin
          AP := Admins[i];
          AP.PlayerSteamName := PlayerInfo[j].SteamName;
          AP.PlayerGameName := PlayerInfo[j].CharName;
          Admins[i] := AP;
          FoundName := True;
        end;
      if not FoundJudge then
        if PlayerInfo[j].SteamID = Admins[i].JudgeSteamID then
        begin
          AP := Admins[i];
          AP.JudgeSteamName := PlayerInfo[j].SteamName;
          AP.JudgeGameName := PlayerInfo[j].CharName;
          Admins[i] := AP;
          FoundJudge := True;
        end;
      if FoundName and FoundJudge then
        Break;
    end;
  end;
  Admins.UpdateTable;
end;

procedure TFormMain.SetMenuIconColor(Color: TColor);
var
  i, cnt: Integer;
begin
  for i := 0 to ImageList24.Count - 1 do
    ColorImages(ImageList24, i, Color);
  for i := 0 to ImageListMed.Count - 1 do
    ColorImages(ImageListMed, i, ColorDarker(clWhite));
  for i := 0 to ImageList16.Count - 1 do
    ColorImages(ImageList16, i, ColorDarker(clWhite));
  cnt := ImageList24.Count;
  for i := 0 to cnt - 1 do
    ImageList24.AddImage(ImageList24, i);
  for i := cnt to ImageList24.Count - 1 do
    ColorImages(ImageList24, i, $00FFA319);
end;

procedure TFormMain.SetButtonsColor(Value: TColor);
begin
  FButtonsColor := Value;
  SetMenuIconColor(FButtonsColor);
end;

procedure TFormMain.SetChatColor(const Value: TColor);
begin
  ShapeMiniChatColor.Brush.Color := Value;
  ShapeChatColor.Brush.Color := Value;
  ShapeFastChatColor.Brush.Color := Value;
  ShapeGroupChatColor.Brush.Color := Value;
end;

procedure TFormMain.SetChatEng(const Value: Boolean);
begin
  SwitchChatENG.Checked := Value;
end;

procedure TFormMain.SetMainManager(const Value: Boolean);
begin
  FMainManager := Value;
  CheckBoxMainManager.Checked := FMainManager;
  Settings.SetBool(IniMainManager, FMainManager);
end;

procedure TFormMain.SetMenuColor(Value: TColor);
var
  i: Integer;
begin
  FMenuColor := Value;
  PanelMenu.Color := FMenuColor;
 //ShapeOnlinePlayer.Pen.Color:=ColorDarker(Value, 10);
 //ShapeOnlinePlayer.Brush.Color:=Value;
 //ShapePlayer.Pen.Color:=ColorDarker(Value, 10);
 //ShapePlayer.Brush.Color:=Value;
 //ShapeFastChat.Pen.Color:=ColorDarker(Value, 10);
 //ShapeFastChat.Brush.Color:=Value;
 //PanelFastChatTitle.Color:=Value;
  for i := 0 to PanelMenu.ControlCount - 1 do
  begin
    if PanelMenu.Controls[i] is TShape then
    begin
      (PanelMenu.Controls[i] as TShape).Brush.Color := ColorDarker(FMenuColor, 10);
      (PanelMenu.Controls[i] as TShape).Pen.Color := ColorDarker(FMenuColor, 10);
    end;
    if PanelMenu.Controls[i] is TSpeedButton then
    begin
      (PanelMenu.Controls[i] as TSpeedButton).Font.Color := $00AFAFAF;
      //if (PanelMenu.Controls[i] as TSpeedButton).ImageIndex <> -1 then
      //  (PanelMenu.Controls[i] as TSpeedButton).ImageIndexHot := (ImageList24.Count div 2) + (PanelMenu.Controls[i] as TSpeedButton).ImageIndex;
    end;
  end;
  ColorImages(ImageList16, 1, clGreen);
  ColorImages(ImageList16, 2, clYellow);
  ColorImages(ImageList16, 3, clRed);
  ColorImages(ImageList16, 4, clGray);
end;

procedure TFormMain.Indicate(IM: TLabelEx; PBP: TPBPos);
begin
  case PBP of
    pbpNone:
      IM.StyledColor($00A0A0A0);
    pbpWork:
      IM.StyledColor($0005D3E4);
    pbpError:
      IM.StyledColor($000241E8);
    pbpOK:
      IM.StyledColor($0002C883);
  end;
  Application.ProcessMessages;
end;

procedure TFormMain.InsertChat(Data: TChatRecord);
begin
  ChatList.Add(Data);
  FIntDataBase.AddChat(Data);
  FUpdateChatList;
end;

procedure TFormMain.OnPlayerActivateDonat(Data: TDonat);
var
  SA: TServerAction;
begin
  FServerActions.Add(SA.Create(Now, 'Выданы привелегии (' + Data.Group + ')', Data.Player.SteamID));
  Chat(cfConsole, 'Привелегии включены', Data.Player.SteamID);
end;

procedure TFormMain.OnPlayerBan(SteamID: TSteamID; Reason: string; Duration: Cardinal);
var
  SA: TServerAction;
  PID: Integer;
  D: Cardinal;
  H, M, S: Word;
begin
 //Добавить событие на панель управления
  FServerActions.Add(SA.Create(Now, 'Игрок получил бан', SteamID));
  if GetPlayerInfoID(SteamID, PID) then
    SteamID := PlayerInfo[PID].CharName;
  if AnsiLowerCase(Reason) = 'raid' then
    Reason := 'рейд';
  if AnsiLowerCase(Reason) = 'cheat' then
    Reason := 'читы';
  if AnsiLowerCase(Reason) = 'actions' then
    Reason := 'поведение';
 //Сообщить игрокам
  Chat(cfInfo, 'Игрок ' + SteamID + ' получил бан (' + Reason + ')');
 //Выложить в группу
  SecToDateTime(Duration, D, H, M, S);
  VKGroup.Post('Игрок ' + SteamID + ' получил бан. '#13#10'Причина: ' + Reason + #13#10 + 'Длительность: ' + DaysAndTimeToStr(D, H, M, S), 'photo-125679402_456239148');
end;

procedure TFormMain.OnPlayerChat(ChatRec: TChatRecord);
begin
  InsertChat(ChatRec);
  if ChatRec.From in [cfPlayer] then
  begin
    if ChatRec.Text.Length > 0 then
    begin
      if ChatRec.Text[1] <> '/' then
      begin
       //Антиспам
        if (ChatRec.Player.SteamID = LastChatRec.Player.SteamID) and (ChatRec.Text = LastChatRec.Text) then
        begin
          FChatDblToKick := FChatDblToKick + 1;
          if FChatDblToKick > ChatDblToKick then
          begin
            FChatDblToKick := 0;
            Chat(cfInfo, ChatRec.Player.GameName + ' кикнут за спам');
            ExecuteCommand.Kick(ChatRec.Player.SteamID, 'SPAM');
          end;
        end
        else
          FChatDblToKick := 0;
        LastChatRec := ChatRec;
      end //Обработка команд пользователей
      else if UserCommandProc(ChatRec) then
        Exit;
     //Ответить игроку
      UserQuestionProc(ChatRec);
     //Передать обработчику Телеграм
      TelegramProc(ChatRec);
    end;
  end;
 //Если сообщение не с сайта и видимость "Мир", то отправляем на сайт
  if (ChatRec.From <> cfSite) and (ChatRec.Around = caWorld) then
    WorldChatToSite(ChatRec);
end;

procedure TFormMain.OnPlayerConnect(Player: TPlayer);
var
  PRev: TPlayerRev;
  PID: Integer;
begin
  PlayersRev.Add(PRev.Create(Player, True, Now));
  Players.Add(Player);
  if not GetPlayerInfoID(Player.SteamID, PID) then
  begin
    OnPlayerConnectNew(Player);
  end;
  FUpdatePlayerList;
  SendTelegram('Присоединился: ' + Player.GameName, False);
end;

procedure TFormMain.OnPlayerConnectNew(Player: TPlayer);
begin
  ExecuteCommand.Airdrop;
  Chat(cfConsole, 'У нас новенький. Ждите помощь!');
end;

procedure TFormMain.OnPlayerDeactivateDonat(Data: TDonat);
var
  SA: TServerAction;
begin
  FServerActions.Add(SA.Create(Now, 'Истёк срок доната игрока ' + Data.Player.GameName, Data.Player.SteamID));
  Chat(cfConsole, 'У тебя кончился донат', Data.Player.SteamID);
end;

procedure TFormMain.OnPlayerDisconnect(Player: TPlayer);
var
  PRev: TPlayerRev;
begin
  PlayersRev.Add(PRev.Create(Player, False, Now));
  Players.Delete(Player.SteamID);
  FUpdatePlayerList;
  SendTelegram('Отключился: ' + Player.GameName, False);
end;

procedure TFormMain.OnServerDBExcept(E: Exception; Text: string);
begin
  Log(FLogSystem, 'БД сервера - ' + Text + ': ' + E.Message);
end;

procedure TFormMain.OnSiteDBExcept(E: Exception; Text: string);
begin
  Log(FLogSystem, 'БД сайта - ' + Text + ': ' + E.Message);
end;

procedure TFormMain.OnStartManger;
begin
  LastAction('Установка соединения и запуск потоков');
  Log(FLogSystem, 'Подключение к RCON сервера');
  Application.ProcessMessages;
  ButtonRCONReconClick(nil);

  Log(FLogSystem, 'Загрузка данных из локальной БД');
  Application.ProcessMessages;
  LoadDatabase;

  Log(FLogSystem, 'Настройка модуля слежения за процессом');
  Application.ProcessMessages;
  SpeedButtonConProcClick(nil);

  Log(FLogSystem, 'Подключение к БД сервера');
  Application.ProcessMessages;
  ButtonDBReconClick(nil);

  Log(FLogSystem, 'Подключение к БД сайта');
  Application.ProcessMessages;
  ButtonSDBReconClick(nil);

  Log(FLogSystem, 'Подключение к локальной папке сервера');
  Application.ProcessMessages;
  ButtonManagerReconClick(nil);

  Log(FLogSystem, 'Подключение к Вконтакте');
  Application.ProcessMessages;
  SpeedButtonVKConClick(nil);

  Log(FLogSystem, 'Запуск таймеров');
  Application.ProcessMessages;
  TimerUpdate.Enabled := True;
  TimerHearthBeat.Enabled := True;
  TimerCheckDonat.Enabled := True;

  Log(FLogSystem, 'Запуск потока обновления списка онлайн-игроков');
  Application.ProcessMessages;
  FThreadUpdatePlayers.Start;

  Log(FLogSystem, 'Запуск потока обработки сообщений с сайта и на сайт');
  Application.ProcessMessages;
  FThreadChatSendToGame.Start;

  Log(FLogSystem, 'Запуск потока запросов на сервер');
  Application.ProcessMessages;
  FThreadGetServer.Start;

  Log(FLogSystem, 'Запуск потока мониторинга за процессом сервера');
  Application.ProcessMessages;
  FThreadProcInfo.Start;
  if MainManager then
  begin
    Log(FLogSystem, 'Запуск модуля игровых событий');
    Application.ProcessMessages;
    FGameEventManager.ActiveAll;
    FGameEventManager.Start;
  end;

  Log(FLogSystem, 'Запуск потока работы с Телеграмом');
  Application.ProcessMessages;
  FThreadTelegram.Start;

  Log(FLogSystem, 'Загрузка данных из базы данных сервера');
  RefreshPlayerInfo;
  CheckDonat;

  if DirectoryExists(FLocalPath) then
    if FUExplorer.Outdated then
      FNotify.Warning('Обновите базу предметов!', 'Внимание');
  FUpdateUExplorerData;
  AllReady;
end;

procedure TFormMain.OnTimerTerminateCommand(Sender: TObject);
begin
  ProcessMSG('END');
end;

procedure TFormMain.OnPlayerUnban(Data: TBannedPlayer);
var
  SA: TServerAction;
begin
  FServerActions.Add(SA.Create(Now, 'Игрок разбанен', Data.PlayerSteamID));
  if Data.PlayerGameName.IsEmpty then
    Data.PlayerGameName := Data.PlayerSteamID;
  Chat(cfInfo, 'Игрок ' + Data.PlayerGameName + ' разбанен');
end;

procedure TFormMain.ProcAdmins(Data: TStringList);
var
  i: Integer;
  Admin: TAdminPlayer;
begin
  LastAction('ProcAdmins');
  if Data.IndexOf('Admins:') <> 0 then
    Exit;
  Admin.JudgeSteamID := '';
  Admin.PlayerSteamID := '';
  Admins.BeginUpdate;
  Admins.Clear;
  for i := 0 to Data.Count - 1 do
  begin
    if Pos('PlayerID: ', Data.Strings[i]) = 1 then
      Admin.PlayerSteamID := Copy(Data.Strings[i], Length('PlayerID: ') + 1, 200);

    if Pos('JudgeID: ', Data.Strings[i]) = 1 then
      Admin.JudgeSteamID := Copy(Data.Strings[i], Length('JudgeID: ') + 1, 200);

    if (Admin.PlayerSteamID <> '') and (Admin.JudgeSteamID <> '') then
    begin
      Admins.Add(Admin);
      Admin.JudgeSteamID := '';
      Admin.PlayerSteamID := '';
    end;
  end;
  Admins.EndUpdate;
  SetFullInfoAdmins;
end;

procedure TFormMain.ProcBans(Data: TStringList);
var
  SubEvent: string;
  i: Integer;
  tryint: Int64;
  Ban: TBannedPlayer;
begin
  LastAction('ProcBans');
  if Data.IndexOf('Bans:') <> 0 then
    Exit;
  Bans.BeginUpdate;
  Bans.Clear;
  for i := 0 to Data.Count - 1 do
  begin
    if Pos('PlayerID: ', Data.Strings[i]) = 1 then
    begin
      Ban.PlayerSteamID := Copy(Data.Strings[i], Length('PlayerID: ') + 1, 200);
      Continue;
    end;

    if Pos('JudgeID: ', Data.Strings[i]) = 1 then
    begin
      Ban.JudgeSteamID := Copy(Data.Strings[i], Length('JudgeID: ') + 1, 200);
      Continue;
    end;

    if Pos('Reason: ', Data.Strings[i]) = 1 then
    begin
      try
        SubEvent := Copy(Data.Strings[i], Length('Reason: ') + 1, 200);
        SubEvent := Copy(SubEvent, 1, Pos(' Duration: ', SubEvent) - 1);
        Ban.Reason := SubEvent;

        SubEvent := Copy(Data.Strings[i], Pos('Duration: ', Data.Strings[i]) + 10, 200);
        SubEvent := Copy(SubEvent, 1, Pos(' Remaining: ', SubEvent) - 1);
        if not TryStrToInt64(SubEvent, tryint) then
          Ban.Duration := 0
        else
          Ban.Duration := tryint;

        SubEvent := Copy(Data.Strings[i], Pos('Remaining: ', Data.Strings[i]) + 11, 200);
        SubEvent := Copy(SubEvent, 1, 50);
        if not TryStrToInt64(SubEvent, tryint) then
          Ban.Remaining := 0
        else
          Ban.Remaining := tryint;
        Bans.Add(Ban);
        Ban.PlayerSteamName := '';
        Ban.PlayerGameName := '';
        Ban.PlayerSteamID := '';
        Ban.JudgeSteamID := '';
        Ban.JudgeGameName := '';
        Ban.JudgeSteamName := '';
        Ban.Reason := '';
        Ban.Duration := 0;
        Ban.Remaining := 0;
      except
        Log(FLogRCON, 'Пропущен: ' + Data.Strings[i]);
        Continue;
      end;
    end;
  end;
  Bans.EndUpdate;
  SetFullInfoBans;
  CheckBansToUnban;
  FServerDB.UpdateBansTable(Bans);
end;

procedure TFormMain.ProcPlayers(Data: TStringList);
var
  SubEvent: string;
  i: Integer;
  Player: TPlayer;
begin
  LastAction('ProcPlayers');
  if Data.IndexOf('Players:') < 0 then
    Exit;
  Players.BeginUpdate;
  Players.Clear;
  for i := 1 to Data.Count - 1 do
  begin
    if Pos('PlayerID: ', Data.Strings[i]) = 1 then
    begin
      try
        SubEvent := Copy(Data.Strings[i], Length('PlayerID: ') + 1, 200);
        SubEvent := Copy(SubEvent, 1, Pos(' Name: ', SubEvent) - 1);
        Player.SteamID := SubEvent;

        SubEvent := Copy(Data.Strings[i], Pos('Name: ', Data.Strings[i]) + 6, 200);
        SubEvent := Copy(SubEvent, 1, Pos(' Character: ', SubEvent) - 1);
        Player.SteamName := SubEvent;

        SubEvent := Copy(Data.Strings[i], Pos('Character: ', Data.Strings[i]) + 11, 200);
        SubEvent := Copy(SubEvent, 1, Pos(' Ping: ', SubEvent) - 1);
        Player.GameName := SubEvent;

        SubEvent := Copy(Data.Strings[i], Pos('Ping: ', Data.Strings[i]) + 6, 200);
        SubEvent := Copy(SubEvent, 1, 10);
        Player.Ping := SubEvent;
        Players.Add(Player);
      except
        Log(FLogRCON, 'Пропущен: ' + Data.Strings[i]);
        Continue;
      end;
    end
    else
      Log(FLogRCON, 'Упс, чет не моё: ' + Data.Strings[i]);
  end;
  Players.EndUpdate;
  FUpdatePlayerList;
  if MainManager then
    ExecuteCommand.GetBans;
 {
 Players:
 PlayerID: 76561198326392297 Name: VorontsEmil Character:  VorontsEmil Ping: 119
 PlayerID: 76561198309266497 Name: Oganek4 Character: (Мафия)Oganek Ping: 99
 PlayerID: 76561198253874271 Name: Ваня Character: anna-0976 Ping: 35
 }
end;

procedure TFormMain.ProcPlayerState(Data: string);
var
  SubEvent: string;
  Player: TPlayer;
  IsCon: Boolean;
begin
  LastAction('ProcPlayerState');
 {
 //Disconnecting: PlayerID: 76561198123840535 Name: سأقتلك Character: top
     if (Pos('Disconnecting: ', Buf) = 1) or
        (Pos('Connecting: ', Buf) = 1)
 }
  if Pos('Disconnecting: ', Data) = 1 then
  begin
    Data := Copy(Data, Length('Disconnecting: ') + 1, 200);
    IsCon := False;
  end
  else if Pos('Connecting: ', Data) = 1 then
  begin
    Data := Copy(Data, Length('Connecting: ') + 1, 200);
    IsCon := True;
  end
  else
  begin
    Log(FLogRCON, 'Упс, чет не моё: ' + Data);
    Exit;
  end;

  if Pos('PlayerID: ', Data) = 1 then
  begin
    try
      SubEvent := Copy(Data, Length('PlayerID: ') + 1, 200);
      SubEvent := Copy(SubEvent, 1, Pos(' Name: ', SubEvent) - 1);
      Player.SteamID := SubEvent;

      SubEvent := Copy(Data, Pos('Name: ', Data) + 6, 200);
      SubEvent := Copy(SubEvent, 1, Pos(' Character: ', SubEvent) - 1);
      Player.SteamName := SubEvent;

      SubEvent := Copy(Data, Pos('Character: ', Data) + 11, 200);
      SubEvent := Copy(SubEvent, 1, 200);
      Player.GameName := SubEvent;

      Player.Ping := 'New';
    except
      Log(FLogRCON, 'Пропущен: ' + Data);
    end;
  end
  else
    Log(FLogRCON, 'Упс, чёт не моё: ' + Data);

  if IsCon then
    OnPlayerConnect(Player)
  else
    OnPlayerDisconnect(Player);
end;

procedure TFormMain.ProcSuccess(Data: string);
begin
  LastAction('ProcSuccess');
  Log(FLogCommands, Data);
  if (Pos('Successfully permabanned', Data) = 1) or (Pos('Successfully unbanned', Data) = 1) then
    ExecuteCommand.GetBans;
end;

procedure TFormMain.ProcSaving(Data: string);
begin
  LastAction('ProcSaving');
  Log(FLogRCON, 'Сохранение сервера');
end;

procedure TFormMain.ProcServerGet(Data: string);
var
  Param, tmp, v1, v2, v3, v4, v5: string;
  i, v: Integer;
  coll: Boolean;
begin
  LastAction('ProcServerGet');
 //ServerControl >> VALUE ISDAYTIME [1]
  Delete(Data, 1, 23);
  Param := Copy(Data, 1, Pos(' ', Data) - 1);
  Delete(Data, 1, Pos(' ', Data));
 //Собираем параметры
  v := 1;
  tmp := '';
  coll := False;
  for i := 1 to Data.Length do
  begin
    if Data[i] = '[' then
    begin
      coll := True;
      Continue;
    end;
    if Data[i] = ']' then
    begin
      case v of
        1:
          v1 := tmp;
        2:
          v2 := tmp;
        3:
          v3 := tmp;
        4:
          v4 := tmp;
        5:
          v5 := tmp;
      else
        Break;
      end;
      Inc(v);
      tmp := '';
      coll := False;
      Continue;
    end;
    if coll then
      tmp := tmp + Data[i];
  end;
 //Определяем, что мы получили и что делать
  if Param = 'NOW' then
  begin
    IsDay := v1 = '1';
    IsFullMoon := v2 = '1';
    if TryStrToInt(v3, i) then
      TimeOnServer := i;
  end;
end;

procedure TFormMain.ProcPGroups(Data: string);
begin
  LastAction('ProcPGroups');
  EditPermGroups.Text := Copy(Data, Pos('p_groups: ', Data) + 10, 255);
end;

procedure TFormMain.ProcPlayerDied(Data: string);
var
  Str: string;
  ChatRec: TChatRecord;
begin
  LastAction('ProcPlayerDied');
 //DeathMessagesRemastered >> Broadcast: RaDDiKKyLliT был съеден зомби!
  Str := Copy(Data, Length('DeathMessagesRemastered >> Broadcast: ') + 1, 200);
  Log(FLogGamePlay, Str);
  ChatRec.Date := Now;
  ChatRec.Text := Str;
  ChatRec.Player.GameName := 'Info';
  WorldChatToSite(ChatRec);
end;

procedure TFormMain.ProcNoPlayers(Data: TStringList);
begin
  LastAction('ProcNoPlayers');
  Players.Clear;
  FUpdatePlayerList;
end;

procedure TFormMain.ProcNoAdmins;
begin
  LastAction('ProcNoAdmins');
  Admins.Clear;
end;

procedure TFormMain.ProcNoBans;
begin
  LastAction('ProcNoBans');
  Bans.Clear;
end;

procedure TFormMain.ProcCommandNotExec;
begin
  LastAction('ProcCommandNotExec');
  Log(FLogCommands, 'Команда не может быть выполнена через консоль');
end;

procedure TFormMain.ProcFailedWithParam(Buf: string);
begin
  LastAction('ProcFailedWithParam');
  Log(FLogCommands, Buf);
end;

procedure TFormMain.ProcChat(Data: string; FromAdmin: Boolean = False);
var
  ChatRec: TChatRecord;
  i: Integer;
  tmp: string;
begin
  LastAction('ProcChat');
  i := Pos(']: ', Data);                      //[World] [Зам.Гл.Мафии]Николай Белый [СпЕкТоР]: "да"
  if i > 0 then
  begin
    ChatRec.Text := Copy(Data, i + 4, 200);     //"да"
    ChatRec.Text := Copy(ChatRec.Text, 1, Length(ChatRec.Text) - 1);
    Data := Copy(Data, 1, i - 1);               //[World] [Зам.Гл.Мафии]Николай Белый [СпЕкТоР
    i := Pos(']', Data);
    tmp := Copy(Data, 2, i - 2);                //World
    if tmp = 'World' then
      ChatRec.Around := caWorld
    else if tmp = 'Area' then
      ChatRec.Around := caArea
    else if tmp = 'Group' then
      ChatRec.Around := caGroup
    else
      ChatRec.Around := caWorld;

    Data := Copy(Data, i + 2, 200);             // [Зам.Гл.Мафии]Николай Белый [СпЕкТоР
    i := Pos(' [', Data);
    ChatRec.Player.GameName := Copy(Data, 1, i - 1);   //[Зам.Гл.Мафии]Николай Белый
    ChatRec.Player.SteamName := Copy(Data, i + 2, 30); //СпЕкТоР
  end;
  ChatRec.From := cfPlayer;
  ChatRec.Date := Now;
  ChatRec.PM := False;
  if FindAndSelOnlineName(ChatRec.Player.GameName, i) then
  begin
    ChatRec.Player.SteamID := Players[i].SteamID;
  end;
  OnPlayerChat(ChatRec);
end;

procedure TFormMain.ProcessMSG(SocketData: string);
var
  DataStr, Buf: string;
  i, j: integer;
  MSGData: TStringList;

  function Next: Boolean;
  begin
    Result := True;
    MSGData.Delete(i);
  end;

begin
  DataStr := SocketData;
 {$IFDEF DEBUG}
  Log(FLogRCON, DataStr);
 {$ENDIF}
  MSGData := TStringList.Create;
  MSGData.Text := DataStr;

  if MSGData.Count > 0 then
  begin
    TimerTerminateCommand.Enabled := False;

    i := 0;
    while MSGData.Count > 0 do
    begin
      Buf := MSGData.Strings[i];

     ///////////////////////////////////////////////////////////////////////////
     //Игнорируемые сообщения
     //DropManager >> 3
      if (Pos('DropManager >> ', Buf) = 1) then
      begin
        if Next then
          Continue;
      end;
     //PlayerInfoLib >>
      if (Pos('PlayerInfoLib >> ', Buf) = 1) then
      begin
        if Next then
          Continue;
      end;
     //VehicleEvents >> Broadcast: Брошенный чёрный хетчбек в Arlington Farm! Найди его и он твой!
      if (Pos('VehicleEvents >> ', Buf) = 1) then
      begin
        if Next then
          Continue;
      end;
     //MessageAnnouncer >> dhfkhdffsdf
      if (Pos('MessageAnnouncer >> ', Buf) = 1) then
      begin
        if Next then
          Continue;
      end;
     //Client has executed command
      if (Pos('Client has executed command', Buf) = 1) then
      begin
        if Next then
          Continue;
      end;
     //Client has disconnected!
      if (Pos('Client has disconnected!', Buf) = 1) then
      begin
        if Next then
          Continue;
      end;
     //ChatControl >> Broadcast:
      if (Pos('ChatControl >> Broadcast:', Buf) = 1) then
      begin
        if Next then
          Continue;
      end;
     //ZaupUconomyEssentials >>
      if (Pos('ZaupUconomyEssentials >> ', Buf) = 1) then
      begin
        if Next then
          Continue;
      end;
     //" connected with IP "
      if (Pos(' connected with IP ', Buf) <> 0) then
      begin
        if Next then
          Continue;
      end;
     //RocketRcon
      if (Pos('RocketRcon ', Buf) = 1) then
      begin
        if Next then
          Continue;
      end;

     ///////////////////////////////////////////////////////////////////////////
     //"Однострочные" события
     //Чат
      if (Pos('[World]', Buf) = 1) or (Pos('[Area]', Buf) = 1) or (Pos('[Group]', Buf) = 1) then
      begin
        ProcChat(Buf);
        if Next then
          Continue;
      end;
     //Failed to find any players
      if (Pos('Failed to find any players', Buf) = 1) then
      begin
        ProcNoPlayers(nil);
        if Next then
          Continue;
      end;
     //p_groups: Normal, Guest
      if (Pos('p_groups: ', Buf) <> 0) then
      begin
        ProcPGroups(Buf);
        if Next then
          Continue;
      end;
     //Failed to find any bans
      if (Pos('Failed to find any bans', Buf) = 1) then
      begin
        ProcNoBans;
        if Next then
          Continue;
      end;
     //Failed to find any admins
      if (Pos('Failed to find any admins', Buf) = 1) then
      begin
        ProcNoAdmins;
        if Next then
          Continue;
      end;
     //This command can't be called from console
      if (Pos('This command can''t be called from console', Buf) = 1) then
      begin
        ProcCommandNotExec;
        if Next then
          Continue;
      end;
     //Failed to find parameters in format...
      if (Pos('Failed to find parameters in format', Buf) = 1) then
      begin
        ProcFailedWithParam(Buf);
        if Next then
          Continue;
      end;
     //Successfully set storm!
      if (Pos('Successfully', Buf) = 1) then
      begin
        ProcSuccess(Buf);
        if Next then
          Continue;
      end;
     //Saving server
      if (Pos('Saving server', Buf) = 1) then
      begin
        ProcSaving(Buf);
        if Next then
          Continue;
      end;
     //ServerGet
      if (Pos('ServerControl >> VALUE ', Buf) = 1) then
      begin
        ProcServerGet(Buf);
        if Next then
          Continue;
      end;
     //DeathMessagesRemastered >> Broadcast: RaDDiKKyLliT был съеден зомби!
      if (Pos('DeathMessagesRemastered >> Broadcast: ', Buf) = 1) then
      begin
        ProcPlayerDied(Buf);
        if Next then
          Continue;
      end;
     //Disconnecting: PlayerID: 76561198123840535 Name: سأقتلك Character: top
      if (Pos('Disconnecting: ', Buf) = 1) or (Pos('Connecting: ', Buf) = 1) then
      begin
        ProcPlayerState(Buf);
        if Next then
          Continue;
      end;

     ///////////////////////////////////////////////////////////////////////////
     //"Многострочные" события
     //Список игроков
      if Pos('Players:', Buf) = 1 then
      begin
        if FRCONCurEvent <> '' then
          ProcessMSG('END');
        FRCONCurEvent := Buf;
        FRCONProcData.Clear;
        FRCONProcData.Add(Buf);
        j := i;
        while j < MSGData.Count do
        begin
          if Pos('PlayerID: ', MSGData[j]) = 1 then
          begin
            FRCONProcData.Add(MSGData[j]);
            MSGData.Delete(j);
            Continue;
          end;
          Inc(j);
        end;
        if Next then
          Continue;
      end;
      if FRCONCurEvent = 'Players:' then
      begin
        if (Pos('PlayerID: ', MSGData[i]) = 1) then
        begin
          FRCONProcData.Add(MSGData[i]);
          if Next then
            Continue;
        end;
      end;
     //Список банов
      if Pos('Bans:', Buf) = 1 then
      begin
        if FRCONCurEvent <> '' then
          ProcessMSG('END');
        FRCONCurEvent := Buf;
        FRCONProcData.Clear;
        FRCONProcData.Add(Buf);
        if Next then
          Continue;
      end;
      if FRCONCurEvent = 'Bans:' then
      begin
        if (Pos('PlayerID: ', MSGData[i]) = 1) or (Pos('JudgeID: ', MSGData[i]) = 1) or (Pos('Reason: ', MSGData[i]) = 1) then
        begin
          FRCONProcData.Add(MSGData[i]);
          if Next then
            Continue;
        end;
      end;
     //Список админов
      if Pos('Admins:', Buf) = 1 then
      begin
        if FRCONCurEvent <> '' then
          ProcessMSG('END');
        FRCONCurEvent := Buf;
        FRCONProcData.Clear;
        FRCONProcData.Add(Buf);
        if Next then
          Continue;
      end;
      if FRCONCurEvent = 'Admins:' then
      begin
        if (Pos('PlayerID: ', MSGData[i]) = 1) or (Pos('JudgeID: ', MSGData[i]) = 1) then
        begin
          FRCONProcData.Add(MSGData[i]);
          if Next then
            Continue;
        end;
      end;

     ///////////////////////////////////////////////////////////////////////////
     //Терминатор
      if Buf = 'END' then
      begin
       //Log(FLogRCON, 'END with '+CurEvent);
       //Если идёт сбор данных
        if FRCONCurEvent = 'Players:' then
          ProcPlayers(FRCONProcData)
        else if FRCONCurEvent = 'Admins:' then
          ProcAdmins(FRCONProcData)
        else if FRCONCurEvent = 'Bans:' then
          ProcBans(FRCONProcData);
        FRCONCurEvent := '';
        FRCONProcData.Clear;
        if Next then
          Continue;
      end;

     ///////////////////////////////////////////////////////////////////////////
     //Если не нашлось обработчика
      Log(FLogRCON, 'Не обработано: ' + Buf);
      if Next then
        Continue;
    end;
  end;

  if (FRCONCurEvent <> '') then
  begin
   //Log(FLogRCON, 'TimerTerminateCommand.Enabled with '+CurEvent);
    TimerTerminateCommand.Enabled := True;
  end;

  MSGData.Free;
end;

procedure TFormMain.FUpdatePlayerList;
begin
  LabelPlayers.Caption := Format(strPlayerCount, [Players.Count, MaxPlayers]);
end;

procedure TFormMain.FUpdateSCData;
begin
  MaxPlayers := StartCommands.MaxPlayers;
  MaxPing := StartCommands.Timeout;
  EditSCMaxPlayers.Text := IntToStr(StartCommands.MaxPlayers);
  EditSCPort.Text := IntToStr(StartCommands.Port);
  EditSCName.Text := StartCommands.Name;
  EditSCMode.Text := StartCommands.Mode;
  case StartCommands.PVMode of
    modePVP:
      EditSCPVMode.Text := 'PvP';
    modePVE:
      EditSCPVMode.Text := 'PvE';
  end;
  EditSCMap.Text := StartCommands.Map;
  LabelSCGold.Visible := StartCommands.Gold;
  LabelSCCheats.Visible := StartCommands.Cheats;
end;

procedure TFormMain.FUpdateUExplorerData;
var
  i, k: Integer;
  BMP: TBitmap;
begin
  FUExplorer.GetDataItems(TDisplayDataItems(FUItems));
  FUExplorer.GetDataVehicles(TDisplayDataVehicles(FUVehicles));
  BMP := TBitmap.Create;
  for k := 0 to FKits.Count - 1 do
    for i := 0 to FKits[k].Count - 1 do
    begin
      FUExplorer.GetItemIcon(StrToInt(FKits[k][i].ID), BMP);
      FKits[k][i].Pic.Assign(BMP);
    end;
  BMP.Free;
end;

procedure TFormMain.GetCommands(Data: TStringList);
var
  i: Integer;

  function Find(Value, Source: string): Boolean;
  begin
    Result := Pos(AnsiLowerCase(Value), AnsiLowerCase(Source)) = 1;
  end;

  function GetIntData(Value: string): Integer;
  var
    i: Integer;
  begin
    Result := 0;
    Value := Trim(Value);
    i := Pos(' ', Value);
    if i <> 0 then
      TryStrToInt(Copy(Value, i + 1, 20), Result);
  end;

  function GetStrData(Value: string): string;
  var
    i: Integer;
  begin
    Result := '';
    Value := Trim(Value);
    i := Pos(' ', Value);
    if i <> 0 then
      Result := Copy(Value, i + 1, 200);
  end;

begin
{
  Maxplayers 24
  port 27015
  name HGM [RUS, PVE/PVP, KIT, REP, TPA] [Washington]
  map Washington
  mode Normal
  PVP
  Cheats
  Timeout 600
  Perspective Both
  log Y/Y/Y/Y
  loadout 0/406/405/426/85/276
  loadout 1/769/1454/241/1032/276
  loadout 2/223/224/225/276/1195/1196
  loadout 3/1172/1171/1044/121
  loadout 4/242/243/244/1031/343/343/336/336
  loadout 5/509/510/511/503/505/505
  loadout 6/670/550/193/141
  loadout 7/232/240/2/138/418
  loadout 8/230/239/231/93/78
  loadout 9/1157/1156/192
  loadout 10/311/312/15/388
  owner 76561198151655003
  votify Y/5/60/15/0.75/3
  welcome Добро_пожаловать!_Справка_и_правила:_"\p".
}
  if Data.Count <= 0 then
    Exit;

  StartCommands.SetDefault;
  for i := 0 to Data.Count - 1 do
  begin
    if Find('MaxPlayers ', Data[i]) then
    begin
      StartCommands.MaxPlayers := GetIntData(Data[i]);
      Continue;
    end;
    if Find('port ', Data[i]) then
    begin
      StartCommands.Port := GetIntData(Data[i]);
      Continue;
    end;
    if Find('Timeout ', Data[i]) then
    begin
      StartCommands.Timeout := GetIntData(Data[i]);
      Continue;
    end;
    if Find('Cycle ', Data[i]) then
    begin
      StartCommands.Cycle := GetIntData(Data[i]);
      Continue;
    end;
    if Find('name ', Data[i]) then
    begin
      StartCommands.Name := GetStrData(Data[i]);
      Continue;
    end;
    if Find('map ', Data[i]) then
    begin
      StartCommands.Map := GetStrData(Data[i]);
      Continue;
    end;
    if Find('BindIP ', Data[i]) then
    begin
      StartCommands.BindIP := GetStrData(Data[i]);
      Continue;
    end;
    if Find('mode ', Data[i]) then
    begin
      StartCommands.Mode := GetStrData(Data[i]);
      Continue;
    end;
    if Find('PVP', Data[i]) then
    begin
      StartCommands.PVMode := modePVP;
      Continue;
    end;
    if Find('PVE', Data[i]) then
    begin
      StartCommands.PVMode := modePVE;
      Continue;
    end;
    if Find('Cheats', Data[i]) then
    begin
      StartCommands.Cheats := True;
      Continue;
    end;
    if Find('Perspective ', Data[i]) then
    begin
      StartCommands.Perspective := GetStrData(Data[i]);
      Continue;
    end;
    if Find('log ', Data[i]) then
    begin
      StartCommands.Log := GetStrData(Data[i]);
      Continue;
    end;
    if Find('loadout ', Data[i]) then
    begin
      StartCommands.AddLoadout(GetStrData(Data[i]));
      Continue;
    end;
    if Find('owner ', Data[i]) then
    begin
      StartCommands.Owner := GetStrData(Data[i]);
      Continue;
    end;
    if Find('votify ', Data[i]) then
    begin
      StartCommands.Votify := GetStrData(Data[i]);
      Continue;
    end;
    if Find('Welcome ', Data[i]) then
    begin
      StartCommands.Welcome := GetStrData(Data[i]);
      Continue;
    end;
  end;
  FUpdateSCData;
end;

procedure TFormMain.UpdateHandler(FUpdates: TtgUpdates);
var
  TextData: string;
  LFile: TtgFileToSend;
  FUpdate: TtgUpdate;
begin
  for FUpdate in FUpdates do
  begin
    if not Assigned(FUpdate) then
      Exit;
    if Assigned(FUpdate.Message) then
    begin
      TextData := FUpdate.Message.Text;
      if TextData.IsEmpty then
        Exit;
      if HandleTelegram(TextData) then
        Exit
      else
        TelegramTimerReset;
      Chat(cfAdmin, TextData);
    end
    else if Assigned(FUpdate.CallbackQuery) then
    begin
      if AnsiLowerCase(FUpdate.CallbackQuery.Data) = 'lastchat' then
        SendTelegram(GetLastChat(20), True);
      if AnsiLowerCase(FUpdate.CallbackQuery.Data) = 'players' then
        SendTelegram(GetPlayers, True);
      if AnsiLowerCase(FUpdate.CallbackQuery.Data) = 'lastlog' then
        SendTelegram(GetLastLog(20), True);
      if AnsiLowerCase(FUpdate.CallbackQuery.Data) = 'stop' then
        StopTelegram;
      if AnsiLowerCase(FUpdate.CallbackQuery.Data) = 'screen' then
      begin
        if CreateSelfie then
        begin
          if FileExists(AppPath + '\lastscreen.png') then
          begin
            LFile := TtgFileToSend.Create(AppPath + '\lastscreen.png', nil);
            try
              FTelegram.SendPhoto(TelegramChatID, LFile, 'Скрин');
            finally
              LFile.Free;
            end;
          end;
        end
        else
          SendTelegram('Ошибка при создании снимка', True);
      end;
    end;
  end;
end;

function TFormMain.CreateSelfie: Boolean;
var
  PNG: TPngImage;
begin
  Result := False;
  SetPage(TabSheetMain);
  Application.ProcessMessages;
  PNG := TPngImage.CreateBlank(COLOR_RGB, 16, ClientWidth, ClientHeight);
  try
    PNG.Canvas.CopyRect(Rect(0, 0, ClientWidth, ClientHeight), Canvas, Rect(0, 0, ClientWidth, ClientHeight));
    PNG.SaveToFile(AppPath + '\lastscreen.png');
    Result := True;
  except
    on E: Exception do
      Log(FLogSystem, 'CreateSelfie ' + E.Message);
  end;
  PNG.Free;
end;

procedure TFormMain.GraphOnlineRepaint;
begin
  ImageGraphOnline.Picture.Bitmap.Canvas.Draw(0, 0, FBMPStatOnline);
end;

procedure TFormMain.GetPlayersSID(var Items: TStringList);
var
  i: Integer;
begin
  Items := TStringList.Create;
  if Players.Count <= 0 then
    Exit;
  for i := 0 to Players.Count - 1 do
    Items.Add(Players[i].SteamID);
end;

procedure TFormMain.FUpdateChatList;
var
  AutoMove: Boolean;
begin
  AutoMove := TableExMiniChat.ItemIndex = TableExMiniChat.ItemCount - 1;
  TableExMiniChat.ItemCount := ChatList.Count;
  if AutoMove then
    TableExMiniChat.ItemIndex := TableExMiniChat.ItemCount - 1;

  AutoMove := TableExFastChat.ItemIndex = TableExFastChat.ItemCount - 1;
  TableExFastChat.ItemCount := ChatList.Count;
  if AutoMove then
    TableExFastChat.ItemIndex := TableExFastChat.ItemCount - 1;
end;

procedure TFormMain.FUpdateKitData;
begin
  if (FSelKit < 0) or (not IndexInList(FSelKit, FKits.Count)) then
    TableExKitData.ItemCount := 0
  else
    TableExKitData.ItemCount := FKits[FSelKit].Count;
  TableExKitData.Repaint;
end;

procedure TFormMain.ComboBoxChatFilterDropDown(Sender: TObject);
begin
  FillChatPlayers;
end;

procedure TFormMain.ComboBoxGiveKitDropDown(Sender: TObject);
var
  i: Integer;
begin
  ComboBoxGiveKit.Items.Clear;
  for i := 0 to FKits.Count - 1 do
    ComboBoxGiveKit.Items.Add(FKits[i].KitName);
end;

procedure TFormMain.ConnectDB;
begin
  Indicate(LabelExConDBU, pbpWork);
  FServerDB.SetConnectionParam(FDBHost, FDBPort, FDBDataBase, FDBUser, FDBPass);
  if not FServerDB.Connect then
  begin
    Indicate(LabelExConDBU, pbpError);
    Exit;
  end
  else
    Indicate(LabelExConDBU, pbpOK);
end;

procedure TFormMain.ConnectSDB;
begin
  Indicate(LabelExConDBS, pbpWork);
  FSiteDB.SetConnectionParam(FSDBHost, FSDBPort, FSDBDatabase, FSDBUser, FSDBPass);
  if not FSiteDB.Connect then
  begin
    Indicate(LabelExConDBS, pbpError);
    Exit;
  end
  else
    Indicate(LabelExConDBS, pbpOK);
end;

procedure TFormMain.ConnectVK;
begin
  Indicate(LabelExConVK, pbpWork);
  if FVKGroup.Open(FVKUser, FVKPass, FVKGID) then
    Indicate(LabelExConVK, pbpOK)
  else
    Indicate(LabelExConVK, pbpError);
end;

procedure TFormMain.CreateTablesColumns;
begin
  with DrawGridTimers do
  begin
    DefaultColWidth := ClientWidth div ColCount;
    DefaultRowHeight := ClientHeight div RowCount;
    ColWidths[ColCount - 1] := DefaultColWidth + ClientWidth mod ColCount;
    RowHeights[RowCount - 1] := DefaultRowHeight + ClientHeight mod RowCount;
  end;
  with ListBoxExPlayers do
  begin
    AddColumn('', 100);
  end;
  with TableExPlayerInfo do
  begin
    AddColumn('Steam ID', 130);
    AddColumn('Steam', 200);
    AddColumn('Ник', 200);
    AddColumn('IP-адрес', 100);
    AddColumn('Последний вход', 150);
    AddColumn('Время игры', 100);
    AddColumn('Местонахождение', 200);
    AddColumn('Дата регистрации', 120);
    AddColumn('Баланс', 100);
    AddColumn('Счёт', 100);
  end;

  with TableExBans do
  begin
    AddColumn('Steam ID', 130);
    AddColumn('Steam', 100);
    AddColumn('Ник', 100);
    AddColumn('Модер.', 90);
    AddColumn('Причина', 120);
    AddColumn('Срок', 70);
    AddColumn('Осталось', 110);
    SetMaxColumn(6);
  end;

  with TableExChat do
  begin
    AddColumn('', 30);
    AddColumn('Игрок', 150);
    AddColumn('Сообщение', 450);
    AddColumn('Время', 120);
    SetMaxColumn(2);
  end;

  with TableExMiniChat do
  begin
    AddColumn('', 20);
    AddColumn('Игрок', 110);
    AddColumn('Сообщение', 190);
    AddColumn('Время', 50);
    SetMaxColumn(2);
  end;

  with TableExFastChat do
  begin
    AddColumn('', 20);
    AddColumn('Игрок', 55);
    AddColumn('Сообщение', 160);
    SetMaxColumn(2);
  end;

  with TableExAdmins do
  begin
    AddColumn('Steam ID', 130);
    AddColumn('Steam', 100);
    AddColumn('Ник', 100);
    AddColumn('Модер.', 90);
    SetMaxColumn(3);
  end;

  with TableExPlayersRev do
  begin
    AddColumn('', 20);
    AddColumn('Событие', 90);
    AddColumn('Игрок', 150);
    AddColumn('Время', 50);
    SetMaxColumn(3);
  end;

  with TableExKits do
  begin
    AddColumn('', 32);
    AddColumn('Название', 100);
    AddColumn('Элементов', 70);
    Columns[AddColumn('', 70)].AsButton := True;
    SetMaxColumn(1);
  end;

  with TableExKitData do
  begin
    AddColumn('', 32);
    AddColumn('', 32);
    AddColumn('ID', 80);
    AddColumn('Название', 170);
    AddColumn('Элементов', 70);
    Columns[AddColumn('', 70)].AsButton := True;
    SetMaxColumn(3);
  end;

  with TableExGroupPlayers do
  begin
    AddColumn('№ п/п', 50);
    AddColumn('Игрок', 100);
    with Columns[AddColumn('', 90)] do
    begin
      ShowButtonOnlySelect := True;
      AsButton := True;
    end;
    SetMaxColumn(1);
  end;

  with TableExMapPoints do
  begin
    AddColumn('Название', 50);
    SetMaxColumn(0);
  end;

  with TableExActions do
  begin
    AddColumn('', 120);
    AddColumn('Действие', 220);
    SetMaxColumn(1);
  end;

  with TableExLogSystem do
  begin
    AddColumn('', 120);
    AddColumn('Данные', 220);
    SetMaxColumn(1);
  end;

  with TableExLogCommands do
  begin
    AddColumn('', 120);
    AddColumn('Данные', 220);
    SetMaxColumn(1);
  end;

  with TableExLogGamePlay do
  begin
    AddColumn('', 120);
    AddColumn('Данные', 220);
    SetMaxColumn(1);
  end;

  with TableExLogRCON do
  begin
    AddColumn('', 120);
    AddColumn('Данные', 220);
    SetMaxColumn(1);
  end;

  with TableExLogSystemFace do
  begin
    AddColumn('', 120);
    AddColumn('Данные', 220);
    SetMaxColumn(1);
  end;

  with TableExDonat do
  begin
    AddColumn('', 20);
    AddColumn('Игрок', 260);
    AddColumn('Группа', 100);
    AddColumn('Дата начала', 160);
    AddColumn('Дата окончания', 160);
    AddColumn('Состояние', 100);
  end;

  with TableExMSG do
  begin
    AddColumn('', 30);
    AddColumn('', 20);
    AddColumn('Текст сообщения', 500);
    AddColumn('Цвет', 100);
    Columns[AddColumn('', 100)].AsButton := True;
  end;
end;

procedure TFormMain.DrawGridTimersDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  LD2DCanvas: TDirect2DCanvas;
  Color1, Color2: TColor;
  PWidth: Integer;
  FRect: TRect;
  EvName: string;
  EvPercent: Byte;
  EvLeft: Cardinal;
  EvId: Integer;
  EvIID: Integer;
  FActive: Boolean;
  FRadius: Word;

  function ScaleRect(Src: TRect; Scale: Integer): TRect;
  begin
    Result := Src;
    Result.Left := Result.Left - Scale;
    Result.Top := Result.Top - Scale;
    Result.Right := Result.Right + Scale;
    Result.Bottom := Result.Bottom + Scale;
  end;

  procedure DrawArc(const Canvas: TDirect2DCanvas; const Center: TPoint; const Radius: Integer; const StartDegrees, StopDegrees: Double);
  const
    Offset = 90;
  var
    X1, X2, X3, X4: Integer;
    Y1, Y2, Y3, Y4: Integer;
  begin
    X1 := Center.X - Radius;
    Y1 := Center.Y - Radius;
    X2 := Center.X + Radius;
    Y2 := Center.Y + Radius;
    X4 := Center.X + Round(Radius * Cos(DegToRad(Offset + StartDegrees)));
    Y4 := Center.y - Round(Radius * Sin(DegToRad(Offset + StartDegrees)));
    X3 := Center.X + Round(Radius * Cos(DegToRad(Offset + StopDegrees)));
    Y3 := Center.y - Round(Radius * Sin(DegToRad(Offset + StopDegrees)));
    Canvas.Arc(X1, Y1, X2, Y2, X3, Y3, X4, Y4);
  end;

begin
  with DrawGridTimers.Canvas do
  begin
    Brush.Color := $00333333;
    FillRect(Rect);
    Font.Color := clSilver;
  end;
  EvId := DrawGridTimers.ColCount * ARow + ACol;
  if EvId >= FGameEventManager.EventCount then
    Exit;
  with DrawGridTimers.Canvas do
  begin
    if (ACol = DrawGridTimers.Col) and (ARow = DrawGridTimers.Row) then
      Brush.Color := $00666666;
   //else Brush.Color:=ColorDarker($00FCFCFC, 10);
    FillRect(Rect);
  end;
  EvName := FGameEventManager.Events[EvId].Name;
  EvPercent := FGameEventManager.Events[EvId].LeftInPercent - 1;
  EvLeft := FGameEventManager.Events[EvId].LeftInSecond;
  EvIID := FGameEventManager.Events[EvId].ImageID;
  FActive := FGameEventManager.Events[EvId].Active;
  if FActive then
    Color1 := clHighlight
  else
    Color1 := $002FD5ED;
  Color2 := ColorDarker(Brush.Color);
  PWidth := 4;
  FRadius := 20;
  FRect := ScaleRect(Rect, -10);
  FRect.Right := FRect.Left + FRect.Height;
  OffsetRect(FRect, -5, 0);
  LD2DCanvas := TDirect2DCanvas.Create(DrawGridTimers.Canvas, ClientRect);
  if EvIID > 0 then
    ImageListMed.Draw(DrawGridTimers.Canvas, (FRect.Left + FRect.Width div 2) - 12, (FRect.Top + FRect.Height div 2) - 12, EvIID);
  with LD2DCanvas do
  try
    RenderTarget.BeginDraw;
    Font.Name := DrawGridTimers.Canvas.Font.Name;
    Font.Size := DrawGridTimers.Canvas.Font.Size;
    Font.Style := DrawGridTimers.Canvas.Font.Style;
    Font.Pitch := DrawGridTimers.Canvas.Font.Pitch;
    Font.Color := DrawGridTimers.Canvas.Font.Color;
    Font.Orientation := DrawGridTimers.Canvas.Font.Orientation;

    Pen.Width := PWidth - 2;
    Pen.Color := Color2;
    Brush.Style := bsClear;

    RenderTarget.SetAntialiasMode(D2D1_ANTIALIAS_MODE_PER_PRIMITIVE);
    RenderTarget.SetTransform(TD2DMatrix3x2F.Identity);
    DrawArc(LD2DCanvas, Point(FRect.Left + FRect.Width div 2, FRect.Top + FRect.Height div 2), FRadius, 0, 2);

    Pen.Width := PWidth;
    Pen.Color := Color1;
    DrawArc(LD2DCanvas, Point(FRect.Left + FRect.Width div 2, FRect.Top + FRect.Height div 2), FRadius, 0, EvPercent *  - 3.6);

    Pen.Width := 1;
    TextOut(FRect.Right + 10, FRect.Top + 1, EvName);
    TextOut(FRect.Right + 10, FRect.Top + 1 + 15, SecondsToStr(EvLeft));
   //TextOut(FRect.Right+10, FRect.Top+1+30, IntToStr(EvPercent));

    RenderTarget.EndDraw;
  finally
    LD2DCanvas.free;
  end;
end;

procedure TFormMain.DrawGridTimersMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  Handled := True;
end;

procedure TFormMain.LastAction(Text: string);
begin
  LabelLastAction.Caption := Text;
end;

procedure TFormMain.ListBoxExPlayersDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  str: string;
  Player: TPlayer;
  FColor: TColor;
begin
  str := '';
  with ListBoxExPlayers.Canvas do
  begin
    FColor := clSilver;
    if Players.Count > 0 then
      Player := Players[ARow]
    else
    begin
      Font.Color := FColor;
      TextOut(Rect.Left + 3, Rect.Top + Rect.Height div 3, 'Нет игроков');
      Exit;
    end;

   //Ник в игре
    Font.Color := ColorDarker(FColor, 5);
    Font.Style := [fsBold];
    TextOut(Rect.Left + 3, Rect.Top, Player.GameName + ' (' + Player.SteamName + ')');

   //Стим ИД
    str := 'ID: ' + Player.SteamID;
    Font.Style := [];
    TextOut(Rect.Right - (TextWidth(str) + 3), Rect.Top + Round(Rect.Height div 2), str);

   //Пинг
    Font.Color := FColor;
    Font.Style := [];
    TextOut(Rect.Left + 3, Rect.Top + Round(Rect.Height div 2), 'Пинг: ' + Player.Ping);
    Font.Style := [];
                  {
   //Ник в стиме
   Font.Color:=ColorDarker(FColor, 5);
   TextOut(Rect.Left+3, Rect.Top + Rect.Height div 3, 'S: '+Player.SteamName); }
  end;
end;

procedure TFormMain.PlayerSpy(SID: string);
begin
  if FileExists(FLocalServerPath + '\Spy\' + SID + '.jpg') then
  begin
    try
      ImageSpay.Picture.LoadFromFile(FLocalServerPath + '\Spy\' + SID + '.jpg');
    except
      on E: Exception do
      begin
        Log(FLogRCON, 'PlayerSpy ' + E.Message);
        ImageSpay.Picture.Assign(nil);
      end;
    end;
  end
  else
    ImageSpay.Picture.Assign(nil);
end;

procedure TFormMain.SetPlayerInfo(Data: TPlayerInfoRecord);
begin
  EditPlayerNick.Text := Data.CharName;
  EditPlayerSteamNick.Text := Data.SteamName;
  EditPlayerSteamID.Text := Data.SteamID;
  EditPlayerIP.Text := Data.IP;
  EditPlayerReg.Text := Data.RegDateString;
  EditPlayerPlayTime.Text := IntToStr(Data.TotalPlayTime div 3600) + ' ч.';
  EditPlayerGeo.Text := Data.From;
  PlayerSpy(Data.SteamID);
end;

procedure TFormMain.ListBoxExPlayersItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
var
  ID, PID: Integer;
  Data: TPlayerInfoRecord;
begin
  if ListBoxExPlayers.Row >= 0 then
  begin
    ID := Index;
    if ID < Players.Count then
    begin
      Data.SteamName := Players[ID].SteamName;
      Data.SteamID := Players[ID].SteamID;
      Data.CharName := Players[ID].GameName;
      if GetPlayerInfoID(Players[ID].SteamID, PID) then
      begin
        Data.IP := PlayerInfo[PID].IP;
        Data.RegDate := PlayerInfo[PID].RegDate;
        Data.TotalPlayTime := PlayerInfo[PID].TotalPlayTime;
        Data.FromCountry := PlayerInfo[PID].FromCountry;
        Data.FromCity := PlayerInfo[PID].FromCity;
      end;
      SetPlayerInfo(Data);
      if PageControl.ActivePage = TabSheetDBPlayersInfo then
        FindAndSelPlayerInfo(Players[ID].SteamID);
      if PageControl.ActivePage = TabSheetDBBans then
        FindAndSelBanned(Players[ID].SteamID);
      if PageControl.ActivePage = TabSheetDBAdmins then
        FindAndSelAdmin(Players[ID].SteamID);
    end;
  end;
  ListBoxExPlayers.Repaint;
end;

procedure TFormMain.ListBoxExPlayersMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssCtrl in Shift then
    ListBoxExPlayers.BeginDrag(False);
end;

procedure TFormMain.ListBoxExPlayersStartDrag(Sender: TObject; var DragObject: TDragObject);
var
  Col: Integer;
begin
  ListBoxExPlayers.MouseToItem(ListBoxExPlayers.ScreenToClient(Mouse.CursorPos), FDragGPlayerItem, Col);
end;

procedure TFormMain.RCONClose;
begin
  ClientSocket.Close;
  RCONState := csDisconnected;
end;

procedure TFormMain.RCONConnect;
begin
  if ClientSocket.Active then
    RCONClose;
  RCONState := csConnecting;
  ClientSocket.Host := FRCONHost;
  ClientSocket.Port := StrToInt(FRCONPort);
  ClientSocket.Open;
end;

procedure TFormMain.RestartServer;
begin
  FRestarting := True;
  FRestartTimeLeft := TimeToRestart;
  TimerRestart.Enabled := True;
end;

procedure TFormMain.EditSendChatFastKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_UP:
      PrevMessage(EditSendChatFast);
    VK_DOWN:
      NextMessage(EditSendChatFast);
  else
    Exit;
  end;
  Key := 0;
end;

procedure TFormMain.EditSendChatFastKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SpeedButtonFastChatSendClick(nil);
  end;
  if EditSendChatFast.Text = '' then
    SendedMessages.ResetCur;
end;

procedure TFormMain.EditTPPlaceDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  if Source = ListBoxExPlayers then
    SpeedButtonTPTargetClick(nil);
end;

procedure TFormMain.EditTPPlaceDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = ListBoxExPlayers;
end;

procedure TFormMain.EditWebURLKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    WebBrowserInfo.Navigate(EditWebURL.Text);
  end;
end;

procedure TFormMain.EditPISearchChange(Sender: TObject);
begin
  if not PlayerInfoSearch(EditPISearch.Text) then
    if PlayerInfo.Count > 0 then
      TableExPlayerInfo.ItemIndex := 0;
end;

procedure TFormMain.EditPISearchKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    EditPISearchChange(nil);
  end;
end;

procedure TFormMain.EditAdminSteamNameChange(Sender: TObject);
begin
  AdminSteamName := EditAdminSteamName.Text;
end;

procedure TFormMain.EditChatSendKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_UP:
      PrevMessage(EditChatSend);
    VK_DOWN:
      NextMessage(EditChatSend);
  else
    Exit;
  end;
  Key := 0;
end;

procedure TFormMain.EditChatSendKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SpeedButtonChatSendClick(nil);
  end;
  if EditChatSend.Text = '' then
    SendedMessages.ResetCur;
end;

procedure TFormMain.EditCommandSendKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_UP:
      PrevCommand;
    VK_DOWN:
      NextCommand;
  else
    Exit;
  end;
  Key := 0;
end;

procedure TFormMain.EditCommandSendKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SpeedButtonCommandExeClick(nil);
    Exit;
  end;
  if EditCommandSend.Text = '' then
    ExecutedCommands.ResetCur;
end;

procedure TFormMain.EditGroupChatSendKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SpeedButtonGroupChatSendClick(nil);
  end;
end;

procedure TFormMain.EditMiniChatSendKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_UP:
      PrevMessage(EditMiniChatSend);
    VK_DOWN:
      NextMessage(EditMiniChatSend);
  else
    Exit;
  end;
  Key := 0;
end;

procedure TFormMain.EditMiniChatSendKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    SpeedButtonMiniChatSendClick(nil);
  end;
  if EditMiniChatSend.Text = '' then
    SendedMessages.ResetCur;
end;

procedure TFormMain.EditPlayerSteamIDChange(Sender: TObject);
begin
  if EditPlayerSteamID.Text = '' then
    PanelPlayerCtrlHide;
end;

procedure TFormMain.WriteToFile(FileName: string; Value: string);
var
  Text: TextFile;
begin
  AssignFile(Text, FileName);
  if FileExists(FileName) then
    Append(Text)
  else
    Rewrite(Text);
  Writeln(Text, Value);
  CloseFile(Text);
end;

procedure TFormMain.LoadDatabase;
var
  i: Integer;
begin
 //Загружаем кит-наборы
  FIntDataBase.FillKitsTable(FKits);
  for i := 0 to FKits.Count - 1 do
  begin
    FIntDataBase.FillKitDataTable(FKits[i]);
  end;
  FIntDataBase.GetChat(FChatList, 300);
  FUpdateChatList;
  FIntDataBase.GetChat(FChatBase, 600);
  FChatFiltered := False;

  FIntDataBase.FillMessage(FGameMessages);
  FGameMessages.Randomize;
end;

procedure TFormMain.Log(Dest: TLog; Value: string);
var
  LR: TLogRecord;
begin
  Dest.Add(LR.Create(Value));
  if Dest = FLogRCON then
    WriteToFile(AppPath + 'Logs\' + LogNameRCON, Value);
  if Dest = FLogCommands then
    WriteToFile(AppPath + 'Logs\' + LogNameCommands, Value);
  if Dest = FLogGamePlay then
    WriteToFile(AppPath + 'Logs\' + LogNameGameplay, Value);
  if Dest = FLogSystem then
    WriteToFile(AppPath + 'Logs\' + LogNameSys, Value);
end;

procedure TFormMain.LogCommand(Text: string);
begin
  Log(FLogCommands, Text);
end;

procedure TFormMain.MenuItemChatFindPlayerClick(Sender: TObject);
begin
  if FindAndSelPlayerInfo(FPopupChatRecord.Player.SteamID) then
    SetPage(TabSheetDBPlayersInfo);
end;

procedure TFormMain.MenuItemChatTranslateClick(Sender: TObject);
begin
  ShowMessage(TranslateGoogle(FPopupChatRecord.Text, 'en', 'ru'));
end;

procedure TFormMain.MenuItemExeSlayClick(Sender: TObject);
var
  SID: string;
begin
  if GetCurrentPlayerSteamID(SID) then
  begin
    if MessageBox(Application.Handle, PWideChar('Отправить в бан на 1 год игрока ' + GetCurrentPlayerName + '?'), 'Внимание', MB_ICONWARNING or MB_YESNO or MB_DEFBUTTON2) <> ID_YES then
      Exit;
    ExecuteCommand.Slay(SID);
  end;
end;

procedure TFormMain.MenuItemаAirdropMaxClick(Sender: TObject);
begin
  ExecuteCommand.AirdropMass;
end;

procedure TFormMain.NextCommand;
var
  Cmd: string;
begin
  if ExecutedCommands.GetNext(Cmd) then
    EditCommandSend.Text := Cmd;
  EditCommandSend.SelStart := Length(EditCommandSend.Text);
end;

procedure TFormMain.NextMessage;
var
  Text: string;
begin
  if SendedMessages.GetNext(Text) then
    Edit.Text := Text;
  Edit.SelStart := Length(Edit.Text);
end;

procedure TFormMain.PrevCommand;
var
  Cmd: string;
begin
  if ExecutedCommands.GetPrev(Cmd) then
    EditCommandSend.Text := Cmd;
  EditCommandSend.SelStart := Length(EditCommandSend.Text);
end;

procedure TFormMain.PrevMessage;
var
  Text: string;
begin
  if SendedMessages.GetPrev(Text) then
    Edit.Text := Text;
  Edit.SelStart := Length(Edit.Text);
end;

procedure TFormMain.PanelMenuState(Minimazed: Boolean);
begin
  if Minimazed then
    PanelMenu.Width := 40
  else
    PanelMenu.Width := 250;
end;

procedure TFormMain.PanelPlayerCtrlHide;
begin
  PanelPlayerInfo.Height := 70;
  SpeedButtonPlayerCtrl.ImageIndex := 5;
end;

procedure TFormMain.PanelPlayerCtrlShow;
begin
  PanelPlayerInfo.Height := 190;
  SpeedButtonPlayerCtrl.ImageIndex := 15;
end;

procedure TFormMain.SendCommand(Text: string);
begin
  Log(FLogRCON, Text);
  if FormMain.ClientSocket.Active then
    ClientSocket.Socket.SendText(Text + CRLF);
end;

procedure TFormMain.SendGameMessage(Message: TGameMessage);
begin
  FCommands.Chat(Message.Text, Message.Color);
end;

procedure TFormMain.SendTelegram(MessageText: string; Force: Boolean);
begin
  if not MainManager then
    Exit;
  if not Force then
    if TelegramIsTimed then
      if TelegramTimer <= 0 then
        Exit;
  try
    if MessageText = '' then
      Exit;
    FTelegram.SendMessage(TelegramChatID, MessageText);
  except
    on E: Exception do
      Log(FLogSystem, 'SendTelegram ' + E.Message);
  end;
end;

procedure TFormMain.SetPage(Tab: TTabSheet);
begin
  PageControl.ActivePage := Tab;
  PanelMenuState(True);
  SetFastChat(not ((PageControl.ActivePage = TabSheetMain) or (PageControl.ActivePage = TabSheetChat)));
end;

procedure TFormMain.SetPIOrderBy(const Value: string);
begin
  FPIOrderBy := Value;
  RefreshPlayerInfo;
end;

procedure TFormMain.SetRCONState(const Value: TConState);
begin
  FRCONState := Value;
  case FRCONState of
    csNone:
      Indicate(LabelExConRCON, pbpNone);
    csConnected:
      Indicate(LabelExConRCON, pbpOk);
    csConnecting:
      Indicate(LabelExConRCON, pbpWork);
    csDisconnected:
      Indicate(LabelExConRCON, pbpError);
  end;
end;

procedure TFormMain.SetTimeOnServer(const Value: Cardinal);
begin
  FTimeOnServer := Value;
  UpdateDayTime;
end;

procedure TFormMain.SetUseCommandForAll(const Value: Boolean);
begin
  CheckBoxUseForAll.Checked := Value;
end;

procedure TFormMain.ShapeMiniChatColorMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ColorDialog.Execute(Handle) then
    ChatColor := ColorDialog.Color;
end;

procedure TFormMain.ShowChatPopup(ChatRecord: TChatRecord);
var
  MPos: TPoint;
begin
  FPopupChatRecord := ChatRecord;
  MPos := Mouse.CursorPos;
  PopupMenuChat.Popup(MPos.X, MPos.Y);
end;

procedure TFormMain.ShowSteamInfo(SteamID: string);
begin
  SetPage(TabSheetSteamInfo);
  WebBrowserInfo.Navigate(LinkSteamProfiles + '/' + SteamID + '/');
end;

procedure TFormMain.SpeedButtonAirdropClick(Sender: TObject);
begin
  ExecuteCommand.Airdrop;
end;

procedure TFormMain.SpeedButtonMenuBansClick(Sender: TObject);
begin
  SetPage(TabSheetDBBans);
end;

procedure TFormMain.SpeedButtonMenuChatClick(Sender: TObject);
begin
  SetPage(TabSheetChat);
end;

procedure TFormMain.SpeedButtonMenuDBClick(Sender: TObject);
begin
  SetPage(TabSheetDB);
end;

procedure TFormMain.SpeedButtonChatDownClick(Sender: TObject);
begin
  if TableExChat.ItemCount > 0 then
    TableExChat.ItemIndex := TableExChat.ItemCount - 1;
  TableExChat.Perform(WM_VSCROLL, SB_BOTTOM, 0);
end;

procedure TFormMain.SpeedButtonChatFilterClick(Sender: TObject);
var
  SID: TSteamID;
begin
  if not IndexInList(ComboBoxChatFilter.ItemIndex, FChatPlayers.Count) then
    Exit;
  SID := FChatPlayers[ComboBoxChatFilter.ItemIndex].SteamID;
  FChatFiltered := True;
  FIntDataBase.GetChatFilter(FChatBase, 1000, SID);
end;

procedure TFormMain.SpeedButtonChatRefreshClick(Sender: TObject);
begin
  FIntDataBase.GetChat(FChatBase, 1000);
  FChatFiltered := False;
end;

procedure TFormMain.SpeedButtonChatSendClick(Sender: TObject);
begin
  if EditChatSend.Text = '' then
    Exit;
  Chat(cfAdmin, EditChatSend.Text);
  EditChatSend.Text := '';
end;

procedure TFormMain.SpeedButtonClearCacheClick(Sender: TObject);
begin
  DeleteIECache;
end;

procedure TFormMain.SpeedButtonClearCookiesClick(Sender: TObject);
begin
  if MessageBox(Application.Handle, 'Вы дейстивтельно хотите очистить Cookies и кэш браузера?', 'Внимание', MB_ICONWARNING or MB_YESNO) <> ID_YES then
    Exit;
  DeleteIECache;
end;

procedure TFormMain.SpeedButtonCommandExeClick(Sender: TObject);
begin
  ExecutedCommands.New(EditCommandSend.Text);
  ExecuteCommand.Command(EditCommandSend.Text);
  EditCommandSend.Clear;
end;

procedure TFormMain.SpeedButtonConProcClick(Sender: TObject);
begin
  Indicate(LabelExConCP, pbpWork);
  if not FindUnturnedProc(PID, hProc) then
  begin
    Indicate(LabelExConCP, pbpError);
    Exit;
  end;
  if UpdateProcessData(PID, hProc, ProcInfo) then
  begin
    FThreadProcInfo.Wait := False;
    Indicate(LabelExConCP, pbpOK);
  end
  else
  begin
    FThreadProcInfo.Wait := True;
    Indicate(LabelExConCP, pbpError);
  end;
end;

procedure TFormMain.SpeedButtonCreateDonatClick(Sender: TObject);
var
  SID: TSteamID;
  Donat: TDonat;
  TInt: Integer;
begin
  if not GetCurrentPlayerSteamID(SID) then
    Exit;
  if GetPlayerInfoID(SID, TInt) then
    Donat.Player := PlayerInfo[TInt].GetPlayerData
  else
    Donat.Player.SteamID := SID;
  case ComboBoxDonatGroup.ItemIndex of
    0:
      Donat.Group := PermGroupModer;
    1:
      Donat.Group := PermGroupVIP;
  else
    Donat.Group := PermGroupModer;
  end;
  Donat.DateBegin := Now;
  case ComboBoxDonatTime.ItemIndex of
    0:
      Donat.Days := 7;
    1:
      Donat.Days := 30;
  else
    if TryStrToInt(ComboBoxDonatTime.Text, TInt) then
      Donat.Days := TInt
    else
      Exit;
  end;

  if not Ask('Вы хотите выдать игроку ' + Donat.Player.GameName + ' временные привилегии на ' + GetWithWord(twDays, Donat.Days) + '?') then
    Exit;

  Donat.Active := True;
  Donat.Unlimit := False;
  Donat.Comment := EditDonatComment.Text;
  EditDonatComment.Text := '';
  CreateDonat(Donat);
end;

procedure TFormMain.SpeedButtonMenuAdminsClick(Sender: TObject);
begin
  SetPage(TabSheetDBAdmins);
end;

procedure TFormMain.SpeedButtonMenuPlayersClick(Sender: TObject);
begin
  SetPage(TabSheetDBPlayersInfo);
end;

procedure TFormMain.SpeedButtonDayTimeClick(Sender: TObject);
begin
  ExecuteCommand.GetNowInfo;
end;

procedure TFormMain.SpeedButtonDBPIGeoClick(Sender: TObject);
begin
  UpdatePlayerInfoFrom;
end;

procedure TFormMain.SpeedButtonDBPIGeoStopClick(Sender: TObject);
begin
  FUpdatePlayerInfoFromStop := True;
end;

procedure TFormMain.SpeedButtonDBPIRefreshClick(Sender: TObject);
begin
  FPIOrderBy := DefPIOrderBy;
  RefreshPlayerInfo;
end;

procedure TFormMain.SpeedButtonDonatAddClick(Sender: TObject);
var
  Item: TDonat;
begin
 //Item.
  if FServerDB.CreateDonat(Item) then
  begin
    FDonats.Add(Item);
  end;
end;

procedure TFormMain.SpeedButtonDonatClick(Sender: TObject);
begin
  SetPage(TabSheetDonat);
end;

procedure TFormMain.SpeedButtonDonatDeactivateClick(Sender: TObject);
var
  ID: Integer;
begin
  ID := TableExDonat.ItemIndex;
  if not IndexInList(ID, FDonats.Count) then
    Exit;
  if not Ask('Деактивировать выбранный донат?') then
    Exit;
  DeactivateDonat(FDonats[ID]);
end;

procedure TFormMain.SpeedButtonDonatDeleteClick(Sender: TObject);
var
  ID: Integer;
begin
  ID := TableExDonat.ItemIndex;
  if not IndexInList(ID, FDonats.Count) then
    Exit;
  if FServerDB.DeleteDonat(FDonats[ID].ID) then
    FDonats.Delete(ID);
end;

procedure TFormMain.SpeedButtonDonatExtendClick(Sender: TObject);
var
  ID: Integer;
  Data: TDonat;
begin
  ID := TableExDonat.ItemIndex;
  if not IndexInList(ID, FDonats.Count) then
    Exit;
  Data := FDonats[ID];

  if (Data.DateEnd < Now) or (not Data.Active) then
  begin
    Data.DateBegin := Now;
    Data.Days := SpinEditDonatExtend.Value;
    Data.Comment := 'Продление';
    CreateDonat(Data);
  end
  else
  begin
    Data.Days := Data.Days + SpinEditDonatExtend.Value;
    if not FServerDB.UpdateDonat(Data) then
    begin
      Warning('Данные не обновлены. Проверьте лог.');
      Exit;
    end;
    FDonats[ID] := Data;
  end;
end;

procedure TFormMain.SpeedButtonDonatUnlimitClick(Sender: TObject);
var
  ID: Integer;
  Data: TDonat;
begin
  ID := TableExDonat.ItemIndex;
  if not IndexInList(ID, FDonats.Count) then
    Exit;
  Data := FDonats[ID];
  if Data.Unlimit then
  begin
    if not Ask('Убрать метку "Бессрочный"?') then
      Exit;
    Data.Unlimit := False;
  end
  else
  begin
    if not Ask('Поставить метку "Бессрочный"?') then
      Exit;
    Data.Unlimit := True;
  end;
  if not FServerDB.UnlimitDonat(Data) then
  begin
    Warning('Данные не обновлены. Проверьте лог.');
    Exit;
  end;
  FDonats[ID] := Data;
  FDonats.UpdateTable;
end;

procedure TFormMain.SpeedButtonEventsDownClick(Sender: TObject);
begin
  if TableExPlayersRev.ItemCount > 0 then
    TableExPlayersRev.ItemIndex := TableExPlayersRev.ItemCount - 1;
  TableExPlayersRev.Perform(WM_VSCROLL, SB_BOTTOM, 0);
end;

procedure TFormMain.Ban(SID, Reason: string; Duration: Cardinal);
begin
  ExecuteCommand.Ban(SID, Reason, Duration);
  OnPlayerBan(SID, Reason, Duration);
end;

procedure TFormMain.SpeedButtonExeBanClick(Sender: TObject);
var
  SID, Reason: string;
  Duration: Cardinal;
begin
  if not GetCurrentPlayerSteamID(SID) then
    Exit;
  if FormBan.ShowModal <> mrOk then
    Exit;
  if (FormBan.EditReason.ItemIndex >= 0) and (FormBan.EditReason.ItemIndex < Length(BanReasons)) then
    Reason := BanReasons[FormBan.EditReason.ItemIndex]
  else
    Reason := DefBanReason;
  Duration := FormBan.SpinEditDays.Value * SecsPerDay + FormBan.SpinEditHours.Value * SecsPerHour + FormBan.SpinEditMins.Value * SecsPerMin;
  Ban(SID, Reason, Duration);
end;

procedure TFormMain.SpeedButtonExeHealClick(Sender: TObject);
var
  SID: string;
begin
  if not CheckUseCommandForAll then
    Exit;
  if UseCommandForAll then
    ExecuteCommand.HealAll
  else if GetCurrentPlayerSteamID(SID) then
    ExecuteCommand.Heal(SID);
  UseCommandForAll := False;
end;

procedure TFormMain.SpeedButtonExeKickClick(Sender: TObject);
var
  SID: string;
begin
  if not CheckUseCommandForAll then
    Exit;
  if UseCommandForAll then
    ExecuteCommand.KickAll('')
  else if GetCurrentPlayerSteamID(SID) then
    ExecuteCommand.Kick(SID, '');
  UseCommandForAll := False;
end;

procedure TFormMain.SpeedButtonExeKillClick(Sender: TObject);
var
  SID: string;
begin
  if not CheckUseCommandForAll then
    Exit;
  if UseCommandForAll then
    ExecuteCommand.KillAll
  else if GetCurrentPlayerSteamID(SID) then
    ExecuteCommand.Kill(SID);
  UseCommandForAll := False;
end;

procedure TFormMain.SpeedButtonFastChatDownClick(Sender: TObject);
begin
  if TableExFastChat.ItemCount > 0 then
    TableExFastChat.ItemIndex := TableExFastChat.ItemCount - 1;
  TableExFastChat.Perform(WM_VSCROLL, SB_BOTTOM, 0);
end;

procedure TFormMain.SpeedButtonFastChatSendClick(Sender: TObject);
begin
  if EditSendChatFast.Text = '' then
    Exit;
  Chat(cfAdmin, EditSendChatFast.Text);
  EditSendChatFast.Text := '';
end;

procedure TFormMain.SpeedButtonFixIEClick(Sender: TObject);
var
  Reg: TRegistry;
begin
  Reg := TRegIniFile.Create(KEY_WRITE);
  Reg.RootKey := HKEY_CURRENT_USER;
  if Reg.OpenKey('SOFTWARE\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_BROWSER_EMULATION', True) then
  begin
    try
      Reg.WriteInteger(ExtractFileName(Application.ExeName), IEVersion);
    except
      on E: Exception do
        Log(FLogSystem, 'SpeedButtonFixIEClick ' + E.Message);
    end;
  end;
  Reg.CloseKey;
  Reg.Free;
end;

procedure TFormMain.SpeedButtonGEventResetClick(Sender: TObject);
var
  EvId: Integer;
begin
  EvId := DrawGridTimers.ColCount * DrawGridTimers.Row + DrawGridTimers.Col;
  if EvId >= FGameEventManager.EventCount then
    Exit;
  FGameEventManager.Events[EvId].ResetDays;
end;

procedure TFormMain.SpeedButtonGEventRunClick(Sender: TObject);
var
  EvId: Integer;
begin
  EvId := DrawGridTimers.ColCount * DrawGridTimers.Row + DrawGridTimers.Col;
  if EvId >= FGameEventManager.EventCount then
    Exit;
  FGameEventManager.Events[EvId].Execute;
end;

procedure TFormMain.SpeedButtonGEventStateClick(Sender: TObject);
var
  EvId: Integer;
begin
  EvId := DrawGridTimers.ColCount * DrawGridTimers.Row + DrawGridTimers.Col;
  if EvId >= FGameEventManager.EventCount then
    Exit;
  FGameEventManager.Events[EvId].Active := not FGameEventManager.Events[EvId].Active;
end;

procedure TFormMain.SpeedButtonGiveEPAFKClick(Sender: TObject);
var
  SID: string;
  Amount: Integer;
begin
  if not TryStrToInt(EditGiveEP.Text, Amount) then
    if Warning('Проверьте данные поля "Кол-во EP"') then
      Exit;
  if GetCurrentPlayerSteamID(SID) then
    if FServerDB.PayPlayer(SID, Amount) then
      FServerActions.Add('Выдача EP (' + EditGiveEP.Text + ')', SID);
end;

procedure TFormMain.SpeedButtonGiveEPClick(Sender: TObject);
var
  SID: string;
  Amount: Integer;
begin
  if not CheckUseCommandForAll then
    Exit;
  if not TryStrToInt(EditGiveEP.Text, Amount) then
    if Warning('Проверьте данные поля "Кол-во EP"') then
      Exit;
  if UseCommandForAll then
    ExecuteCommand.GiveMoneyAll(Amount)
  else if GetCurrentPlayerSteamID(SID) then
    ExecuteCommand.GiveMoney(SID, Amount);
  UseCommandForAll := False;
end;

procedure TFormMain.SpeedButtonGiveExpClick(Sender: TObject);
var
  SID: string;
  Amount: Integer;
begin
  if not CheckUseCommandForAll then
    Exit;
  if not TryStrToInt(EditGiveExp.Text, Amount) then
    if Warning('Проверьте данные поля "Кол-во опыта"') then
      Exit;
  if UseCommandForAll then
    ExecuteCommand.GiveExpirienceAll(Amount)
  else if GetCurrentPlayerSteamID(SID) then
    ExecuteCommand.GiveExpirience(SID, Amount);
  UseCommandForAll := False;
end;

procedure TFormMain.SpeedButtonGiveItemsClick(Sender: TObject);
var
  SID: string;
  Amount: Integer;
  Items: TStringList;
begin
  if not CheckUseCommandForAll then
    Exit;
  Amount := SpinEditGiveItemAmount.Value;
  Items := TStringList.Create;
  Items.Delimiter := ',';
  Items.DelimitedText := EditGiveItems.Text;
  if UseCommandForAll then
    ExecuteCommand.GiveItemsAll(Items, Amount)
  else if GetCurrentPlayerSteamID(SID) then
    ExecuteCommand.GiveItems(SID, Items, Amount);
  Items.Free;
  UseCommandForAll := False;
end;

procedure TFormMain.SpeedButtonGiveKitClick(Sender: TObject);
var
  SID: string;
  Amount, i: Integer;
  Item: string;
begin
  if not CheckUseCommandForAll then
    Exit;
  if not IndexInList(ComboBoxGiveKit.ItemIndex, FKits.Count) then
    Exit;

  for i := 0 to FKits[ComboBoxGiveKit.ItemIndex].Count - 1 do
  begin
    Amount := FKits[ComboBoxGiveKit.ItemIndex][i].Count;
    Item := FKits[ComboBoxGiveKit.ItemIndex][i].ID;
    if UseCommandForAll then
      ExecuteCommand.GiveItemAll(Item, Amount)
    else if GetCurrentPlayerSteamID(SID) then
      ExecuteCommand.GiveItem(SID, Item, Amount);
  end;

  UseCommandForAll := False;
end;

procedure TFormMain.SpeedButtonGiveVehicleClick(Sender: TObject);
var
  SID: string;
begin
  if not CheckUseCommandForAll then
    Exit;
  if UseCommandForAll then
  begin
    ExecuteCommand.GiveVehicleAll(EditGiveVehicle.Text);
    FServerActions.Add('Выдан всем транспорт ' + EditGiveVehicle.Text, '');
  end
  else if GetCurrentPlayerSteamID(SID) then
  begin
    ExecuteCommand.GiveVehicle(SID, EditGiveVehicle.Text);
    FServerActions.Add('Выдан транспорт ' + EditGiveVehicle.Text, SID);
  end;
  UseCommandForAll := False;
end;

procedure TFormMain.SpeedButtonGroupChatSendClick(Sender: TObject);
var
  i: Integer;
begin
  if EditGroupChatSend.Text = '' then
    Exit;
  for i := 0 to FGroupPlayers.Count - 1 do
    Chat(cfAdmin, EditGroupChatSend.Text, FGroupPlayers[i].SteamID);
  EditGroupChatSend.Text := '';
end;

procedure TFormMain.SpeedButtonKitAddClick(Sender: TObject);
var
  ID: Integer;
begin
  ID := FIntDataBase.AddKit('Новый набор');
  FKits.Add(TKit.Create(ID, 'Новый набор'));
end;

procedure TFormMain.SpeedButtonKitItemAddClick(Sender: TObject);
var
  ID: Integer;
  KItem: TKitItem;
begin
  if not IndexInList(FSelKit, FKits.Count) then
    Exit;
  ID := FIntDataBase.AddKitData(FKits[FSelKit].DBID, '0', 1);
  FKits[FSelKit].Add(KItem.Create(ID, '0', 1));
  FUpdateKitData;
  TableExKits.Repaint;
end;

procedure TFormMain.SpeedButtonMenuLogClick(Sender: TObject);
begin
  SetPage(TabSheetLog);
end;

procedure TFormMain.SpeedButtonMenuKitsClick(Sender: TObject);
begin
  SetPage(TabSheetKits);
end;

procedure TFormMain.SpeedButtonMenuMonitorClick(Sender: TObject);
begin
  SetPage(TabSheetMain);
end;

procedure TFormMain.SpeedButtonMapClick(Sender: TObject);
begin
  WebBrowserInfo.Navigate(MapAddress);
end;

procedure TFormMain.SpeedButtonMiniChatDownClick(Sender: TObject);
begin
  if TableExMiniChat.ItemCount > 0 then
    TableExMiniChat.ItemIndex := TableExMiniChat.ItemCount - 1;
  TableExMiniChat.Perform(WM_VSCROLL, SB_BOTTOM, 0);
end;

procedure TFormMain.SpeedButtonMiniChatSendClick(Sender: TObject);
var
  SID: TSteamID;
begin
  if EditMiniChatSend.Text = '' then
    Exit;
  if CheckBoxMiniChatPM.Checked then
    if GetCurrentPlayerSteamID(SID) then
    begin
      Chat(cfAdmin, EditMiniChatSend.Text, SID);
      EditMiniChatSend.Text := '';
      Exit;
    end
    else
      CheckBoxMiniChatPM.Checked := False;

  Chat(cfAdmin, EditMiniChatSend.Text);
  EditMiniChatSend.Text := '';
end;

procedure TFormMain.SpeedButtonMSGAddClick(Sender: TObject);
var
  Item: TGameMessage;
begin
  Item.Text := 'Текст сообщения';
  Item.Color := clYellow;
  Item.ID := FIntDataBase.AddMessage(Item.Text, Item.Color);
  FGameMessages.Add(Item);
end;

procedure TFormMain.SpeedButtonPCKickClick(Sender: TObject);
var
  SID: string;
begin
  if GetCurrentPlayerSteamID(SID) then
  begin
    if not Ask('Кикнуть игрока "' + GetPlayerName(SID) + '"?') then
      Exit;
    ExecuteCommand.Kick(SID, DefBanReason);
  end;
end;

procedure TFormMain.SpeedButtonPCKillClick(Sender: TObject);
var
  SID: string;
begin
  if GetCurrentPlayerSteamID(SID) then
  begin
    if not Ask('Убить игрока "' + GetPlayerName(SID) + '"?') then
      Exit;
    ExecuteCommand.Kill(SID);
  end;
end;

procedure TFormMain.SpeedButtonPCMuteClick(Sender: TObject);
var
  SID: string;
begin
  if GetCurrentPlayerSteamID(SID) then
  begin
    if not Ask('Запретить игроку "' + GetPlayerName(SID) + ' писать в чат"?') then
      Exit;
    ExecuteCommand.Mute(SID);
  end;
end;

procedure TFormMain.SpeedButtonPInfoClick(Sender: TObject);
var
  SID: string;
begin
  if GetCurrentPlayerSteamID(SID) then
    if FindAndSelPlayerInfo(SID) then
      SetPage(TabSheetDBPlayersInfo);
end;

procedure TFormMain.SpeedButtonPIReSpyClick(Sender: TObject);
var
  SID: string;
begin
  if GetCurrentPlayerSteamID(SID) then
  begin
    ExecuteCommand.Spy(SID);
    Sleep(1000);
    PlayerSpy(SID);
  end;
end;

procedure TFormMain.SpeedButtonPlayerCtrlClick(Sender: TObject);
begin
  if EditPlayerSteamID.Text = '' then
    Exit;
  SwitchPlayerCtrlPanel;
end;

procedure TFormMain.SpeedButtonMenuQuitClick(Sender: TObject);
begin
  Quit;
end;

procedure TFormMain.SpeedButtonRefreshBansClick(Sender: TObject);
begin
  ExecuteCommand.GetBans;
end;

procedure TFormMain.SpeedButtonRefreshDonatClick(Sender: TObject);
begin
  CheckDonat;
end;

procedure TFormMain.SpeedButtonRestartClick(Sender: TObject);
begin
  RestartServer;
end;

procedure TFormMain.SpeedButtonMenuReloadClick(Sender: TObject);
begin
  DashboardCtrl.Update;
end;

procedure TFormMain.SpeedButtonSetDayClick(Sender: TObject);
begin
  ExecuteCommand.SetDay;
end;

procedure TFormMain.SpeedButtonSetNightClick(Sender: TObject);
begin
  ExecuteCommand.SetNight;
end;

procedure TFormMain.SpeedButtonShutdownClick(Sender: TObject);
begin
  FDoStart;
end;

procedure TFormMain.SpeedButtonMenuSettingsClick(Sender: TObject);
begin
  SetPage(TabSheetSettings);
end;

procedure TFormMain.SpeedButtonSNNextClick(Sender: TObject);
begin
  try
    WebBrowserInfo.GoForward;
  except
    on E: Exception do
      Log(FLogSystem, E.Message);
  end;
end;

procedure TFormMain.SpeedButtonSNPrevClick(Sender: TObject);
begin
  try
    WebBrowserInfo.GoBack;
  except
    on E: Exception do
      Log(FLogSystem, E.Message);
  end;
end;

procedure TFormMain.SpeedButtonSNRefreshClick(Sender: TObject);
begin
  WebBrowserInfo.Refresh;
end;

procedure TFormMain.SpeedButtonTGReconClick(Sender: TObject);
begin
  if not TryStrToInt(EditTGChatID.Text, TelegramChatID) then
  begin
    Log(FLogSystem, 'Не верное значение Telegram ChatID');
    Exit;
  end;
  TelegramBotToken := EditTGBotToken.Text;
end;

procedure TFormMain.SpeedButtonTPClick(Sender: TObject);
var
  SID: string;
begin
  if not CheckUseCommandForAll then
    Exit;
  if UseCommandForAll then
    ExecuteCommand.TeleportAll(EditTPPlace.Text)
  else if GetCurrentPlayerSteamID(SID) then
    ExecuteCommand.Teleport(SID, EditTPPlace.Text);
  UseCommandForAll := False;
end;

procedure TFormMain.SpeedButtonTPTargetClick(Sender: TObject);
var
  SID: string;
begin
  if GetCurrentPlayerSteamID(SID) then
    EditTPPlace.Text := SID;
end;

procedure TFormMain.SpeedButtonMenuWebClick(Sender: TObject);
var
  SID: string;
begin
  if GetCurrentPlayerSteamID(SID) then
    ShowSteamInfo(SID)
  else
    WebBrowserInfo.Navigate(SiteAddress);
  SetPage(TabSheetSteamInfo);
end;

procedure TFormMain.SpeedButtonWBHomeClick(Sender: TObject);
begin
  WebBrowserInfo.Navigate(SiteAddress);
end;

procedure TFormMain.SpeedButtonWorkClick(Sender: TObject);
begin
  SetPage(TabSheetWorkWithGroup);
end;

procedure TFormMain.SpinEditChatDblToKickChange(Sender: TObject);
begin
  ChatDblToKick := SpinEditChatDblToKick.Value;
end;

procedure TFormMain.SQLConnectionSDB1AfterConnect(Sender: TObject);
begin
  Indicate(LabelExConDBS, pbpOK);
end;

procedure TFormMain.SQLConnectionSDB1AfterDisconnect(Sender: TObject);
begin
  Indicate(LabelExConDBS, pbpError);
end;

procedure TFormMain.SQLConnectionSDB1Login(Database: TSQLConnection; LoginParams: TStrings);
begin
  Indicate(LabelExConDBS, pbpOK);
end;

procedure TFormMain.StopTelegram;
begin
  TelegramTimer := 0;
  SendTelegram('Конец трансляции сообщений', True);
end;

procedure TFormMain.Quit;
begin
  Caption := 'Завершение работы...';
  Log(FLogSystem, 'Сохранение параметров');
  Application.ProcessMessages;
  SettingsSave;

  Log(FLogSystem, 'Остановка таймеров');
  Application.ProcessMessages;
  TimerUpdate.Enabled := False;
  TimerCheckDonat.Enabled := False;

  Log(FLogSystem, 'Закрытие соединения с RCON');
  Application.ProcessMessages;
  RCONClose;

  Log(FLogSystem, 'Закрытие соединения с БД сервера');
  Application.ProcessMessages;
  FServerDB.Disconnect;

  Log(FLogSystem, 'Закрытие соединения с БД сайта');
  Application.ProcessMessages;
  FSiteDB.Disconnect;

  Log(FLogSystem, 'Завершение работы потоков');
  Application.ProcessMessages;
  if FThreadTelegram.Started then
    FThreadTelegram.Stop;
  if FThreadUpdatePlayers.Started then
    FThreadUpdatePlayers.Stop;
  if FThreadChatSendToGame.Started then
    FThreadChatSendToGame.Stop;
  if FThreadGetServer.Started then
    FThreadGetServer.Stop;
  if FThreadProcInfo.Started then
    FThreadProcInfo.Stop;

  Log(FLogSystem, 'Ожидание завершения работы потоков');
  Application.ProcessMessages;
  while not FThreadTelegram.Stopped do
  begin
    Application.ProcessMessages;
    Sleep(300);
  end;
  while not FThreadUpdatePlayers.Stopped do
  begin
    Application.ProcessMessages;
    Sleep(300);
  end;
  while not FThreadChatSendToGame.Stopped do
  begin
    Application.ProcessMessages;
    Sleep(300);
  end;
  while not FThreadGetServer.Stopped do
  begin
    Application.ProcessMessages;
    Sleep(300);
  end;
  while not FThreadProcInfo.Stopped do
  begin
    Application.ProcessMessages;
    Sleep(300);
  end;

  Log(FLogSystem, 'Завершение работы');
  Application.ProcessMessages;
  Application.Terminate;
end;

procedure TFormMain.SpeedButtonMenuMainClick(Sender: TObject);
begin
  PanelMenuState(PanelMenu.Width >= 250);
end;

procedure TFormMain.SpeedButtonRefreshAdminsClick(Sender: TObject);
begin
  ExecuteCommand.GetAdmins;
end;

procedure TFormMain.SpeedButtonUEUpdateClick(Sender: TObject);
begin
  ProgressBarUELoad.Show;
  FUExplorer.ReloadFrom(FLocalPath);
  FUpdateUExplorerData;
  ProgressBarUELoad.Hide;
end;

procedure TFormMain.SpeedButtonUEUpdateVehiclesClick(Sender: TObject);
begin
  ProgressBarUELoad.Show;
  FUExplorer.LoadVehicleImages;
  FUpdateUExplorerData;
  ProgressBarUELoad.Hide;
end;

procedure TFormMain.SpeedButtonUnadminClick(Sender: TObject);
var
  ID: Integer;
begin
  ID := TableExAdmins.ItemIndex;
  if not IndexInList(ID, Admins.Count) then
    Exit;
  ExecuteCommand.Unadmin(Admins[ID].PlayerSteamID);
  Admins.Delete(ID);
end;

procedure TFormMain.SpeedButtonUnbanClick(Sender: TObject);
var
  ID: Integer;
begin
  ID := TableExBans.ItemIndex;
  if not IndexInList(ID, Bans.Count) then
    Exit;
  ExecuteCommand.Unban(Bans[ID].PlayerSteamID);
  Bans.Delete(ID);
end;

procedure TFormMain.SpeedButtonVKConClick(Sender: TObject);
begin
  FVKGID := EditVKGID.Text;
  FVKUser := EditVKLogin.Text;
  FVKPass := EditVKPass.Text;
  if FVKGID.IsEmpty or FVKUser.IsEmpty or FVKPass.IsEmpty then
    Log(FLogSystem, 'Группа ВК не настроена')
  else
    ConnectVK;
end;

procedure TFormMain.SpeedButtonSetStormClick(Sender: TObject);
begin
  ExecuteCommand.Storm;
end;

procedure TFormMain.SwitchPlayerCtrlPanel;
begin
  if PanelPlayerCtrlVisible then
    PanelPlayerCtrlHide
  else
    PanelPlayerCtrlShow;
end;

procedure TFormMain.TableExActionsEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
begin
  if not IndexInList(ARow, FServerActions.Count) then
    Exit;
  if FServerActions[ARow].SteamID <> '' then
    if FindAndSelPlayerInfo(FServerActions[ARow].SteamID) then
      SetPage(TabSheetDBPlayersInfo);
end;

procedure TFormMain.TableExActionsGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if FServerActions.Count = 0 then
  begin
    Value := '';
    if FCol = 0 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, FServerActions.Count) then
    Exit;
  case FCol of
    0:
      Value := HumanDateTime(FServerActions[FRow].Date);
    1:
      Value := FServerActions[FRow].Data;
  end;
end;

procedure TFormMain.TableExAdminsGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if Admins.Count = 0 then
  begin
    Value := '';
    if FCol = 0 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, Admins.Count) then
    Exit;
  case FCol of
    0:
      Value := Admins[FRow].PlayerSteamID;
    1:
      Value := Admins[FRow].PlayerSteamName;
    2:
      Value := Admins[FRow].PlayerGameName;
    3:
      Value := Admins[FRow].JudgeGameName;
  end;
end;

procedure TFormMain.TableExAdminsItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
var
  PID: Integer;
begin
  if not IndexInList(Index, Admins.Count) then
    Exit;
  if GetPlayerInfoID(Admins[Index].PlayerSteamID, PID) then
    SetPlayerInfo(PlayerInfo[PID]);
  FindAndSelOnline(Admins[Index].PlayerSteamID);
end;

procedure TFormMain.TableExBansGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if Bans.Count = 0 then
  begin
    Value := '';
    if FCol = 0 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, Bans.Count) then
    Exit;
  case FCol of
    0:
      Value := Bans[FRow].PlayerSteamID;
    1:
      Value := Bans[FRow].PlayerSteamName;
    2:
      Value := Bans[FRow].PlayerGameName;
    3:
      Value := Bans[FRow].JudgeGameName;
    4:
      Value := Bans[FRow].Reason;
    5:
      Value := IntToStr(Bans[FRow].Duration div 3600) + ' ч.';
    6:
      Value := IntToStr(Bans[FRow].Remaining div 3600) + ' ч.';
  end;
end;

procedure TFormMain.TableExBansItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
var
  PID: Integer;
begin
  if not IndexInList(Index, Bans.Count) then
    Exit;
  if GetPlayerInfoID(Bans[Index].PlayerSteamID, PID) then
    SetPlayerInfo(PlayerInfo[PID]);
  FindAndSelOnline(Bans[Index].PlayerSteamID);
  TableExBans.Repaint;
end;

procedure TFormMain.TableExChatDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Chat: TChatRecord;
begin
  if not IndexInList(ARow, FChatBase.Count) then
    Exit;
  with (Sender as TTableEx).Canvas do
  begin
    if ACol <> 0 then
      Exit;
    if FChatBase.Count > 0 then
      Chat := FChatBase[ARow]
    else
      Exit;

    if Chat.PM then
      ImageList16.Draw((Sender as TTableEx).Canvas, Rect.Left + 4, Rect.Top + Rect.Height div 2 - 16 div 2, 28)
    else
      case Chat.Around of
        caGroup:
          ImageList16.Draw((Sender as TTableEx).Canvas, Rect.Left + 4, Rect.Top + Rect.Height div 2 - 16 div 2, 14); //14
        caArea:
          ImageList16.Draw((Sender as TTableEx).Canvas, Rect.Left + 4, Rect.Top + Rect.Height div 2 - 16 div 2, 12);  //12
        caWorld:
          ImageList16.Draw((Sender as TTableEx).Canvas, Rect.Left + 4, Rect.Top + Rect.Height div 2 - 16 div 2, 13); //13
      end;
  end;
end;

procedure TFormMain.TableExChatEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
begin
  if not IndexInList(ARow, FChatBase.Count) then
    Exit;
  Data.EditMode := teText;
  Data.ReadOnly := True;
  Allow := True;
  case ACol of
    1:
      Data.TextValue := FChatBase[ARow].Player.GameName;
    2:
      Data.TextValue := FChatBase[ARow].Text;
    3:
      Data.TextValue := HumanDateTime(FChatBase[ARow].Date);
  else
    Allow := False;
  end;
end;

procedure TFormMain.TableExChatGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if FChatBase.Count = 0 then
  begin
    Value := '';
    if FCol = 1 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, FChatBase.Count) then
    Exit;
  case FCol of
    1:
      Value := FChatBase[FRow].Player.GameName;
    2:
      Value := FChatBase[FRow].Text;
    3:
      Value := HumanDateTime(FChatBase[FRow].Date);
  end;
end;

procedure TFormMain.TableExChatItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
  if IndexInList(Index, FChatBase.Count) then
    FindAndSelOnlineName(FChatBase[Index].Player.GameName);
end;

procedure TFormMain.TableExChatMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  ID: Integer;
begin
  if Button = mbRight then
  begin
    ID := TableExChat.ItemIndex;
    if not IndexInList(ID, FChatBase.Count) then
      Exit;
    ShowChatPopup(FChatBase[ID]);
  end;
end;

procedure TFormMain.TableExDonatGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if FDonats.Count = 0 then
  begin
    Value := '';
    if FCol = 1 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, FDonats.Count) then
    Exit;
  case FCol of
    1:
      Value := FDonats[FRow].Player.SteamName + ' (' + FDonats[FRow].Player.GameName + ')';
    2:
      Value := FDonats[FRow].Group;
    3:
      Value := HumanDateTime(FDonats[FRow].DateBegin);
    4:
      begin
        if FDonats[FRow].Unlimit then
          Value := 'Бессрочный'
        else
          Value := HumanDateTime(FDonats[FRow].DateEnd);
      end;
    5:
      Value := IFELSESTR(FDonats[FRow].Active, 'Активно', '');
  end;
end;

procedure TFormMain.TableExDonatItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
var
  PID: Integer;
begin
  if IndexInList(Index, FDonats.Count) then
  begin
    if GetPlayerInfoID(FDonats[Index].Player.SteamID, PID) then
      SetPlayerInfo(PlayerInfo[PID]);
    FindAndSelOnline(FDonats[Index].Player.SteamID);
  end;
end;

procedure TFormMain.TableExFastChatDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  Chat: TChatRecord;
begin
  with (Sender as TTableEx).Canvas do
  begin
    if ACol <> 0 then
      Exit;
    if not IndexInList(ARow, ChatList.Count) then
      Exit;
    Chat := ChatList[ARow];

    if Chat.PM then
      ImageList16.Draw((Sender as TTableEx).Canvas, Rect.Left + 4, Rect.Top + Rect.Height div 2 - 16 div 2, 28)
    else
      case Chat.Around of
        caGroup:
          ImageList16.Draw((Sender as TTableEx).Canvas, Rect.Left + 4, Rect.Top + Rect.Height div 2 - 16 div 2, 14); //14
        caArea:
          ImageList16.Draw((Sender as TTableEx).Canvas, Rect.Left + 4, Rect.Top + Rect.Height div 2 - 16 div 2, 12);  //12
        caWorld:
          ImageList16.Draw((Sender as TTableEx).Canvas, Rect.Left + 4, Rect.Top + Rect.Height div 2 - 16 div 2, 13); //13
      end;
  end;
end;

procedure TFormMain.TableExFastChatEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
begin
  if not IndexInList(ARow, ChatList.Count) then
    Exit;
  if ACol = 0 then
  begin
    if Sender = TableExMiniChat then
      EditMiniChatSend.Text := ChatList[ARow].Player.GameName + ', ' + EditMiniChatSend.Text;
    if Sender = TableExFastChat then
      EditSendChatFast.Text := ChatList[ARow].Player.GameName + ', ' + EditSendChatFast.Text;
    Exit;
  end;
  Data.EditMode := teText;
  Data.ReadOnly := True;
  Allow := True;
  case ACol of
    1:
      Data.TextValue := ChatList[ARow].Player.GameName;
    2:
      Data.TextValue := ChatList[ARow].Text;
    3:
      Data.TextValue := HumanDateTime(ChatList[ARow].Date);
  else
    Allow := False;
  end;
end;

procedure TFormMain.TableExFastChatGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if ChatList.Count = 0 then
  begin
    Value := '';
    if FCol = 1 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, ChatList.Count) then
    Exit;
  case FCol of
    1:
      Value := ChatList[FRow].Player.GameName;
    2:
      Value := ChatList[FRow].Text;
  end;
end;

procedure TFormMain.TableExGroupPlayersDragDrop(Sender, Source: TObject; X, Y: Integer);
var
  Item, Col: Integer;
begin
  if Source = Sender then
  begin
    if not IndexInList(FDragGPlayerItem, FGroupPlayers.Count) then
      Exit;
    TableExGroupPlayers.MouseToItem(Point(X, Y), Item, Col);
    if IndexInList(Item, FGroupPlayers.Count) then
    begin
      FGroupPlayers.Move(FDragGPlayerItem, Item);
      TableExGroupPlayers.ItemIndex := Item;
    end
    else
    begin
      FGroupPlayers.Move(FDragGPlayerItem, FGroupPlayers.Count - 1);
      TableExGroupPlayers.ItemIndex := FGroupPlayers.Count - 1;
    end;
    TableExGroupPlayers.Repaint;
  end;
  if Source = ListBoxExPlayers then
  begin
    if not IndexInList(FDragGPlayerItem, FPlayers.Count) then
      Exit;
    TableExGroupPlayers.MouseToItem(Point(X, Y), Item, Col);
    if IndexInList(Item, FGroupPlayers.Count) then
      FGroupPlayers.Insert(Item, FPlayers[FDragGPlayerItem])
    else
      Item := FGroupPlayers.Add(FPlayers[FDragGPlayerItem]);
    TableExGroupPlayers.ItemIndex := Item;
  end;
end;

procedure TFormMain.TableExGroupPlayersDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source is TTableEx;
end;

procedure TFormMain.TableExGroupPlayersGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if FGroupPlayers.Count = 0 then
  begin
    Value := '';
    if FCol = 1 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, FGroupPlayers.Count) then
    Exit;
  case FCol of
    0:
      Value := IntToStr(FRow + 1);
    1:
      Value := FGroupPlayers[FRow].GameName + ' (' + FGroupPlayers[FRow].SteamName + ')';
    2:
      Value := 'Удалить';
  end;
end;

procedure TFormMain.TableExGroupPlayersItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
  if not IndexInList(TableExGroupPlayers.ItemIndex, FGroupPlayers.Count) then
    Exit;
  case Index of
    2:
      begin
        FGroupPlayers.Delete(TableExGroupPlayers.ItemIndex);
      end;
  end;
end;

procedure TFormMain.TableExKitDataDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if not IndexInList(FSelKit, FKits.Count) then
    Exit;
  if not IndexInList(ARow, FKits[FSelKit].Count) then
    Exit;
  if ACol = 0 then
  begin
    if Assigned(FKits[FSelKit][ARow].Pic) then
      TableExKitData.Canvas.Draw(Rect.Left, Rect.Top, FKits[FSelKit][ARow].Pic);
  end;
end;

procedure TFormMain.TableExKitDataEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
begin
  if not IndexInList(FSelKit, FKits.Count) then
    Exit;
  if not IndexInList(ARow, FKits[FSelKit].Count) then
    Exit;
  Data.ReadOnly := False;
  Allow := True;
  case ACol of
    2:
      begin
        Data.EditMode := teText;
        Data.TextValue := FKits[FSelKit][ARow].ID;
      end;
    4:
      begin
        Data.EditMode := teInt;
        Data.TextValue := IntToStr(FKits[FSelKit][ARow].Count);
      end;
  else
    Allow := False;
  end;
end;

procedure TFormMain.TableExKitDataEditOk(Sender: TObject; Value: string; ItemValue, ACol, ARow: Integer);
var
  KItem: TKitItem;
begin
  if not IndexInList(FSelKit, FKits.Count) then
    Exit;
  if not IndexInList(ARow, FKits[FSelKit].Count) then
    Exit;
  KItem := FKits[FSelKit][ARow];
  case ACol of
    2:
      begin
        KItem.ID := Value;
        FIntDataBase.EditKitData(KItem.DBID, Value, KItem.Count);
      end;
    4:
      begin
        try
          KItem.Count := StrToInt(Value);
        except
          on E: Exception do
          begin
            Log(FLogSystem, E.Message);
            Exit;
          end;
        end;
        FIntDataBase.EditKitData(KItem.DBID, Value, KItem.Count);
      end;
  end;
  FKits[FSelKit][ARow] := KItem;
  FUpdateKitData;
  TableExKits.Repaint;
end;

procedure TFormMain.TableExKitDataGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if (not IndexInList(FSelKit, FKits.Count)) or (FKits.Count = 0) then
  begin
    Value := '';
    if FCol = 3 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, FKits[FSelKit].Count) then
    Exit;

  case FCol of
  //0:Value:=IntToStr(FRow+1);
    2:
      Value := FKits[FSelKit][FRow].ID;
    3:
      Value := GetUnturnedItemID(FKits[FSelKit][FRow].ID);
    4:
      Value := IntToStr(FKits[FSelKit][FRow].Count);
    5:
      Value := 'Удалить';
  end;
end;

procedure TFormMain.TableExKitDataItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
  if not IndexInList(FSelKit, FKits.Count) then
    Exit;
  if not IndexInList(TableExKitData.ItemIndex, FKits[FSelKit].Count) then
    Exit;
  case Index of
    5:
      begin
        FIntDataBase.DeleteKitData(FKits[FSelKit][TableExKitData.ItemIndex].DBID);
        FKits[FSelKit].Delete(TableExKitData.ItemIndex);
        TableExKits.Repaint;
      end;
  end;
  FUpdateKitData;
end;

procedure TFormMain.TableExKitsDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  i: Integer;
begin
  if not IndexInList(ARow, FKits.Count) then
    Exit;
  if ACol = 0 then
  begin
    for i := 0 to Min(3, FKits[ARow].Count - 1) do
      if Assigned(FKits[ARow][i].Pic) then
        TableExKits.Canvas.Draw(Rect.Left + i * 2, Rect.Top + i * 2, FKits[ARow][i].Pic);
  end;
end;

procedure TFormMain.TableExKitsEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
begin
  if not IndexInList(ARow, FKits.Count) then
    Exit;
  Data.EditMode := teText;
  Data.ReadOnly := False;
  Allow := True;
  case ACol of
    1:
      Data.TextValue := FKits[ARow].KitName;
  else
    Allow := False;
  end;
end;

procedure TFormMain.TableExKitsEditOk(Sender: TObject; Value: string; ItemValue, ACol, ARow: Integer);
begin
  if not IndexInList(ARow, FKits.Count) then
    Exit;
  case ACol of
    1:
      begin
        FKits[ARow].KitName := Value;
        FIntDataBase.EditKit(FKits[ARow].DBID, Value);
      end;
  end;
end;

procedure TFormMain.TableExKitsGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if Kits.Count = 0 then
  begin
    Value := '';
    if FCol = 1 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, Kits.Count) then
    Exit;
  case FCol of
  //0:Value:=IntToStr(FRow+1);
    1:
      Value := Kits[FRow].KitName;
    2:
      Value := IntToStr(Kits[FRow].Count);
    3:
      Value := 'Удалить';
  end;
end;

procedure TFormMain.TableExKitsItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
  if not IndexInList(Index, FKits.Count) then
  begin
    FSelKit := -1;
    FUpdateKitData;
    Exit;
  end;
  FSelKit := Index;
  FUpdateKitData;
end;

procedure TFormMain.TableExKitsItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
  if not IndexInList(TableExKits.ItemIndex, FKits.Count) then
    Exit;
  case Index of
    3:
      begin
        FIntDataBase.DeleteKit(FKits[TableExKits.ItemIndex].DBID);
        FKits.Delete(TableExKits.ItemIndex);
      end;
  end;
end;

procedure TFormMain.TableExMapPointsGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if FMapPlaces.Count = 0 then
  begin
    Value := '';
    if FCol = 1 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, FMapPlaces.Count) then
    Exit;
  case FCol of
    0:
      Value := FMapPlaces[FRow].Desc;
  end;
end;

procedure TFormMain.TableExMapPointsItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
  if IndexInList(Index, FMapPlaces.Count) then
    EditTPPlace.Text := FMapPlaces[Index].Name;
end;

procedure TFormMain.TableExMiniChatGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if ChatList.Count = 0 then
  begin
    Value := '';
    if FCol = 1 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, ChatList.Count) then
    Exit;
  case FCol of
    1:
      Value := ChatList[FRow].Player.GameName;
    2:
      Value := ChatList[FRow].Text;
    3:
      Value := FormatDateTime('HH:NN:SS', ChatList[FRow].Date);
  end;
end;

procedure TFormMain.TableExMiniChatItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
  if IndexInList(Index, ChatList.Count) then
    FindAndSelOnlineName(ChatList[Index].Player.GameName);
end;

procedure TFormMain.TableExMiniChatMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  ID: Integer;
begin
  if Button = mbRight then
  begin
    ID := (Sender as TTableEx).ItemIndex;
    if not IndexInList(ID, ChatList.Count) then
      Exit;
    ShowChatPopup(ChatList[ID]);
  end;
end;

procedure TFormMain.TableExMSGDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if not IndexInList(ARow, FGameMessages.Count) then
    Exit;
  with TableExMSG.Canvas do
  begin
    if ACol = 3 then
    begin
      Brush.Color := FGameMessages[ARow].Color;
      FillRect(ScaledRect(Rect, -4));
      Exit;
    end;
    if (ACol = 1) and (ARow = FGameMessages.CurrentMessage) then
      ImageList16.Draw(TableExMSG.Canvas, Rect.Left + Centred(Rect.Width, ImageList16.Width), Rect.Top + Centred(Rect.Height, ImageList16.Width), 9, True);
  end;
end;

procedure TFormMain.TableExMSGEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
var
  Item: TGameMessage;
begin
  if not IndexInList(ARow, FGameMessages.Count) then
    Exit;
  Data.EditMode := teText;
  Data.ReadOnly := False;
  Allow := True;
  case ACol of
    2:
      Data.TextValue := FGameMessages[ARow].Text;
    3:
      begin
        Item := FGameMessages[ARow];
        ColorDialog.Color := Item.Color;
        if ColorDialog.Execute(Application.Handle) then
        begin
          Item.Color := ColorDialog.Color;
          FIntDataBase.EditMessage(Item.ID, Item.Text, Item.Color);
          FGameMessages[ARow] := Item;
          TableExMSG.Repaint;
        end;
        Allow := False;
        Exit;
      end;
  else
    Allow := False;
  end;
end;

procedure TFormMain.TableExMSGEditOk(Sender: TObject; Value: string; ItemValue, ACol, ARow: Integer);
var
  Item: TGameMessage;
begin
  if not IndexInList(ARow, FGameMessages.Count) then
    Exit;
  case ACol of
    2:
      begin
        Item := FGameMessages[ARow];
        Item.Text := Value;
        FIntDataBase.EditMessage(Item.ID, Item.Text, Item.Color);
        FGameMessages[ARow] := Item;
        TableExMSG.Repaint;
      end;
  end;
end;

procedure TFormMain.TableExMSGGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if FGameMessages.Count = 0 then
  begin
    Value := '';
    if FCol = 1 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, FGameMessages.Count) then
    Exit;

  case FCol of
    0:
      Value := IntToStr(FRow + 1);
    2:
      Value := FGameMessages[FRow].Text;
    4:
      Value := 'Удалить';
  end;
end;

procedure TFormMain.TableExMSGItemColClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
var
  ID: Integer;
begin
  ID := TableExMSG.ItemIndex;
  if not IndexInList(ID, FGameMessages.Count) then
    Exit;
  case Index of
    4:
      begin
        FIntDataBase.DeleteMessage(FGameMessages[ID].ID);
        FGameMessages.Delete(ID);
      end;
  end;
end;

procedure TFormMain.TableExPlayerInfoColumnClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
begin
  case Index of
    0:
      if PIOrderBy = fieldPI_SteamID + ' ASC' then
        PIOrderBy := fieldPI_SteamID + ' DESC'
      else
        PIOrderBy := fieldPI_SteamID + ' ASC';
    1:
      if PIOrderBy = fieldPI_SteamName + ' ASC' then
        PIOrderBy := fieldPI_SteamName + ' DESC'
      else
        PIOrderBy := fieldPI_SteamName + ' ASC';
    2:
      if PIOrderBy = fieldPI_CharName + ' ASC' then
        PIOrderBy := fieldPI_CharName + ' DESC'
      else
        PIOrderBy := fieldPI_CharName + ' ASC';
    3:
      if PIOrderBy = fieldPI_IP + ' ASC' then
        PIOrderBy := fieldPI_IP + ' DESC'
      else
        PIOrderBy := fieldPI_IP + ' ASC';
    4:
      if PIOrderBy = fieldPI_LastLoginGlobal + ' ASC' then
        PIOrderBy := fieldPI_LastLoginGlobal + ' DESC'
      else
        PIOrderBy := fieldPI_LastLoginGlobal + ' ASC';
    5:
      if PIOrderBy = fieldPI_TotalPlayTime + ' ASC' then
        PIOrderBy := fieldPI_TotalPlayTime + ' DESC'
      else
        PIOrderBy := fieldPI_TotalPlayTime + ' ASC';
    6:
      if PIOrderBy = fieldPI_FromCountry + ' ASC, ' + fieldPI_FromCity + ' DESC' then
        PIOrderBy := fieldPI_FromCountry + ' DESC, ' + fieldPI_FromCity + ' DESC'
      else
        PIOrderBy := fieldPI_FromCountry + ' ASC, ' + fieldPI_FromCity + ' ASC';
    7:
      if PIOrderBy = fieldPI_RegDate + ' ASC' then
        PIOrderBy := fieldPI_RegDate + ' DESC'
      else
        PIOrderBy := fieldPI_RegDate + ' ASC';
    8:
      if PIOrderBy = fieldPI_Balance + ' ASC' then
        PIOrderBy := fieldPI_Balance + ' DESC'
      else
        PIOrderBy := fieldPI_Balance + ' ASC';
    9:
      if PIOrderBy = fieldPI_Score + ' ASC' then
        PIOrderBy := fieldPI_Score + ' DESC'
      else
        PIOrderBy := fieldPI_Score + ' ASC';
  end;
end;

procedure TFormMain.TableExPlayerInfoGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if PlayerInfo.Count = 0 then
  begin
    Value := '';
    if FCol = 0 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, PlayerInfo.Count) then
    Exit;
  case FCol of
    0:
      Value := PlayerInfo[FRow].SteamID;
    1:
      Value := PlayerInfo[FRow].SteamName;
    2:
      Value := PlayerInfo[FRow].CharName;
    3:
      Value := PlayerInfo[FRow].IP;
    4:
      Value := HumanDateTime(PlayerInfo[FRow].LastLoginGlobal);
    5:
      Value := IntToStr(PlayerInfo[FRow].TotalPlayTime div 3600) + ' ч.';
    6:
      Value := PlayerInfo[FRow].From;
    7:
      Value := PlayerInfo[FRow].RegDateString;
    8:
      Value := FormatFloat('### ### ##0.00', PlayerInfo[FRow].Balance);
    9:
      Value := FormatFloat('### ### ##0', PlayerInfo[FRow].Score);
  end;
end;

procedure TFormMain.TableExPlayerInfoItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
var
  ID: Integer;
begin
  if TableExPlayerInfo.Row >= 0 then
  begin
    ID := Index;
    if ID < PlayerInfo.Count then
    begin
      SetPlayerInfo(PlayerInfo[ID]);
      FindAndSelOnline(PlayerInfo[ID].SteamID);
    end;
  end;
  LabelPICount.Caption := IntToStr(TableExPlayerInfo.ItemIndex + 1) + ' из ' + IntToStr(PlayerInfo.Count);
  TableExPlayerInfo.Repaint;
end;

procedure TFormMain.TableExPlayersRevDrawCellData(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  PRev: TPlayerRev;
begin
  with (Sender as TTableEx).Canvas do
  begin
    if ACol <> 0 then
      Exit;
    if PlayersRev.Count > 0 then
      PRev := PlayersRev[ARow]
    else
      Exit;

    case PRev.Connected of
      True:
        ImageList16.Draw((Sender as TTableEx).Canvas, Rect.Left + 4, Rect.Top + 4, 14);  //14
      False:
        ImageList16.Draw((Sender as TTableEx).Canvas, Rect.Left + 4, Rect.Top + 4, 12);  //12
    end;
  end;
end;

procedure TFormMain.TableExPlayersRevGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if PlayersRev.Count = 0 then
  begin
    Value := '';
    if FCol = 1 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, PlayersRev.Count) then
    Exit;
  case FCol of
    1:
      if PlayersRev[FRow].Connected then
        Value := 'Подключился'
      else
        Value := 'Отключился';
    2:
      Value := PlayersRev[FRow].Player.GameName;
    3:
      Value := HumanDateTime(PlayersRev[FRow].DateTime);
  end;
end;

procedure TFormMain.TableExPlayersRevItemClick(Sender: TObject; MouseButton: TMouseButton; const Index: Integer);
var
  SID: TSteamID;
begin
  if IndexInList(Index, FServerActions.Count) then
  begin
    SID := FServerActions[Index].SteamID;
    if SID <> '' then
    begin
      FindAndSelOnlineName(SID);
      FindAndSelPlayerInfo(SID);
    end;
  end;
end;

procedure TFormMain.TableExLogCommandsGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if FLogCommands.Count = 0 then
  begin
    Value := '';
    if FCol = 1 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, FLogCommands.Count) then
    Exit;
  case FCol of
    0:
      Value := HumanDateTime(FLogCommands[FRow].Date);
    1:
      Value := FLogCommands[FRow].Value;
  end;
end;

procedure TFormMain.TableExLogGamePlayGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if FLogGamePlay.Count = 0 then
  begin
    Value := '';
    if FCol = 1 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, FLogGamePlay.Count) then
    Exit;
  case FCol of
    0:
      Value := HumanDateTime(FLogGamePlay[FRow].Date);
    1:
      Value := FLogGamePlay[FRow].Value;
  end;
end;

procedure TFormMain.TableExLogRCONGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if FLogRCON.Count = 0 then
  begin
    Value := '';
    if FCol = 1 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, FLogRCON.Count) then
    Exit;
  case FCol of
    0:
      Value := HumanDateTime(FLogRCON[FRow].Date);
    1:
      Value := FLogRCON[FRow].Value;
  end;
end;

procedure TFormMain.TableExLogSystemFaceEdit(Sender: TObject; var Data: TTableEditStruct; ACol, ARow: Integer; var Allow: Boolean);
begin
  Allow := False;
  if not IndexInList(ARow, FLogSystem.Count) then
    Exit;
  TFormMemo.ShowText(FLogSystem[ARow].Value);
end;

procedure TFormMain.TableExLogSystemGetData(FCol, FRow: Integer; var Value: string);
begin
  Value := '';
  if FLogSystem.Count = 0 then
  begin
    Value := '';
    if FCol = 1 then
      Value := 'Пусто';
    Exit;
  end;
  if not IndexInList(FRow, FLogSystem.Count) then
    Exit;
  case FCol of
    0:
      Value := HumanDateTime(FLogSystem[FRow].Date);
    1:
      Value := FLogSystem[FRow].Value;
  end;
end;

procedure TFormMain.TelegramProc(ChatItem: TChatRecord);
var
  i: Byte;
begin
  if not MainManager then
    Exit;
  for i := Low(AdminWords) to High(AdminWords) do
    if Pos(AdminWords[i], AnsiLowerCase(ChatItem.Text)) > 0 then
    begin
      TelegramTimerReset;
      Break;
    end;
  SendTelegram(ChatItem.Player.GameName + ': ' + ChatItem.Text, False);
end;

procedure TFormMain.TelegramTimerReset;
begin
  TelegramTimer := TTValue;
end;

procedure TFormMain.ThreadChatSendToGame(Thread: TThreadProc);
var
  CR: TChatRecord;
var
  ChatItem: TChatRecord;
  ContinueFlag: Boolean;
begin
  try
    Thread.Work := twWork;
    Thread.Stopping := False;
    while (not Application.Terminated) and (not Thread.Terminated) and (not Thread.Stopping) do
    begin
      Thread.Synchronize(Thread.Beat);
      Sleep(ChatSendInterval);
    //С сайта в игру
      if not FSiteDB.Connected then
        Continue;
      CheckSiteChat;
      Thread.Synchronize(
        procedure
        begin
          if FChatFromSite.Count > 0 then
          begin
            CR := FChatFromSite.Items[0];
            InsertChat(CR);
            Chat(cfSite, CR.Player.GameName + ': ' + CR.Text);
            FChatFromSite.Delete(0);
          end;
        end);
    //На сайт из игры
      if not FSiteDB.Connected then
        Continue;
      ContinueFlag := False;
      Thread.Synchronize(
        procedure
        begin
          if FChatFromGame.Count <= 0 then
          begin
            ContinueFlag := True;
            Exit;
          end;
          ChatItem := FChatFromGame[0];
          FChatFromGame.Delete(0);
        end);
      if ContinueFlag then
        Continue;
      FSiteDB.SendChatToSite(ChatItem);
    end;
    Thread.Work := twExit;
  except
    on E: Exception do
    begin
      Thread.Work := twExcept;
      Thread.Synchronize(
        procedure
        begin
          Log(FLogSystem, 'ThreadChatSendToGame ' + E.Message)
        end);
    end;
  end;
end;

procedure TFormMain.ThreadServerGet(Thread: TThreadProc);
begin
  Thread.Work := twWork;
  Thread.Stopping := False;
  try
    while (not Application.Terminated) and (not Thread.Terminated) and (not Thread.Stopping) do
    begin
      Thread.Synchronize(Thread.Beat);
      Sleep(GetHInterval);
      Thread.Synchronize(ExecuteCommand.GetNowInfo);
    end;
    Thread.Work := twExit;
  except
    on E: Exception do
    begin
      Thread.Synchronize(
        procedure
        begin
          Log(FLogSystem, 'ThreadServerGet ' + E.Message)
        end);
      Thread.Work := twExcept;
    end;
  end;
end;

procedure TFormMain.UpdateDayTime;
var
  H, M, S: Word;
begin
  if IsDay then
  begin
    LabelDayTime.Caption := 'День';
    SpeedButtonDayTime.ImageIndex := 2;
  end
  else if IsFullMoon then
  begin
    LabelDayTime.Caption := 'Полнолуние';
    SpeedButtonDayTime.ImageIndex := 0;
  end
  else
  begin
    LabelDayTime.Caption := 'Ночь';
    SpeedButtonDayTime.ImageIndex := 1;
  end;
  SecToTime(TimeOnServer * 24, H, M, S);
  LabelTimeOnServer.Caption := FormatDateTime('HH:NN', EncodeTime(H, M, S, 0));
end;

procedure TFormMain.UpdateGraphStatOnline;
var
  i, j, vMin, NP: Integer;
  FRect: TRect;
  Points: TListInt;
  P1, P2: TPoint;
  Step, GridStep: Integer;
  str: string;
  DSOnline, DSPing: Integer;
  D2: TDirect2DCanvas;
  SRect: TRect;
  DrawGrid: Boolean;
begin
  DrawGrid := False;
 //Оперативные данные
  DSOnline := Players.Count;
  DSPing := GetPingAvg;
 //Записываем в базу
  FIntDataBase.AddStatistic(stTypeOnline, DSOnline);
  FIntDataBase.AddStatistic(stTypeAvgPing, DSPing);
 //Пишем в статистику текущего дня
  Statistics.MaxPlayers := Max(DSOnline, Statistics.MaxPlayers);
  UpdateStat;
 //Для графиков
  StatOnline.Add(DSOnline);
  StatPing.Add(DSPing);
  SRect := Rect(0, 0, FBMPStatOnlineBuf.Width, FBMPStatOnlineBuf.Height);
 //D2:=TDirect2DCanvas.Create(FBMPStatOnlineBuf.Canvas, SRect);
  with FBMPStatOnlineBuf.Canvas do
  begin
   //RenderTarget.BeginDraw;
    Brush.Color := FDashboardCtrl.Color;
    Pen.Color := Brush.Color;
    Brush.Style := bsSolid;
    FRect := Rect(0, 0, FBMPStatOnlineBuf.Width, FBMPStatOnlineBuf.Height);
    FillRect(FRect);

    Step := 5;

   //Рисовать сетку
    if DrawGrid then
    begin
      Pen.Color := clWhite;
      Pen.Width := 2;
      GridStep := FRect.Height div (MaxPlayers div 2);
      FGridVertPos := FGridVertPos + Step;
      if FGridVertPos > GridStep then
        FGridVertPos := Step;

      Pen.Color := ColorLighter(clGray, 10);
      Pen.Width := 1;
      for i := 0 to FRect.Height div GridStep do
      begin
        MoveTo(0, i * GridStep);
        LineTo(FRect.Width, i * GridStep);
      end;
      for i := 0 to FRect.Width div GridStep do
      begin
        MoveTo(i * GridStep + FGridVertPos, 0);
        LineTo(i * GridStep + FGridVertPos, FRect.Width);
      end;
    end;

    Points := TListInt.Create;
    if StatOnline.Count > 0 then
    begin
      Points.Clear;
      vMin := Max(0, (StatOnline.Count - (FRect.Width div Step)) - 1);
      for j := StatOnline.Count - 1 downto vMin do
        Points.Add(StatOnline[j]);
      if Points.Count > 0 then
      begin
        Pen.Color := $00FFCC00;
        P1 := Point(1, Round(FRect.Bottom - (FRect.Bottom / 100 * ((100 / MaxPlayers) * Points[0]))));
        for i := 1 to Points.Count - 1 do
        begin
          NP := Round(FRect.Bottom - (FRect.Bottom / 100 * ((100 / MaxPlayers) * Points[i]))) - 1;
          P2 := Point(i * Step, NP);
          WuLine(FBMPStatOnlineBuf, P1, P2, $00FFCC00, clBlue);
          P1 := P2;
        end;
      end;
    end;
    Pen.Width := 2;
   //StatPing
    if StatPing.Count > 0 then
    begin
      Points.Clear;
      vMin := Max(0, (StatPing.Count - (FRect.Width div Step)) - 1);
      for j := StatPing.Count - 1 downto vMin do
        Points.Add(StatPing[j]);
      if Points.Count > 0 then
      begin
        Pen.Color := $0066CCCC;
        P1 := Point(1, Round(FRect.Bottom - (FRect.Bottom / 100 * ((100 / MaxPing) * Points[0]))));
        for i := 1 to Points.Count - 1 do
        begin
          NP := Round(FRect.Bottom - (FRect.Bottom / 100 * ((100 / MaxPing) * Points[i]))) - 1;
          P2 := Point(i * Step, NP);
          WuLine(FBMPStatOnlineBuf, P1, P2, $0066CCCC, $0000FFCC);
          P1 := P2;
        end;
       //BitBlt(FBMPStatOnline.Canvas.Handle, 0, 0, FBMPStatOnline.Width, FBMPStatOnline.Height, BMP.Canvas.Handle, 0, 0, SRCCOPY);
      end;
    end;
    Points.Free;

   //Font.Color:=clWhite;
   //TextOut(2, 2, IntToStr(MaxPlayers));
   //TextOut(20, 2, IntToStr(MaxPing));
   //TextOut(2, FRect.Bottom-17, '0');
          {
   if StatOnline.Count > 0 then
    begin
     Pen.Color:=$00FFCC00;
     Pen.Width:=2;
     //
     j:=FRect.Width;
     P1:=Point(-1, -1);
     for i:= StatOnline.Count-1 downto 0 do
      begin
       NP:=Round(FRect.Bottom / 100 * ((100 / MaxPlayers) * StatOnline[i]));
       P2:=Point(j, FRect.Bottom-NP);
       if i = StatOnline.Count-1 then
        begin
         P1:=P2;
         MoveTo(P1.X, P2.Y);
        end;
       j:=j-Step;
       if P2.Y <> P1.Y then LineTo(P1.X, P1.Y);
       P1:=P2;
       if P1.X < 0 then Break;
      end;
     LineTo(P1.X, P1.Y);
     LineTo(P1.X, FRect.Bottom);
      {
     Points.Clear;
     vMin:=Max(0, (StatOnline.Count-(FRect.Width div Step))-1);
     for j:= StatOnline.Count-1 downto vMin do
      begin
       Points.Add(StatOnline[j]);
      end;
     if Points.Count > 0 then
      begin
       P1:=Point(1, Round(FRect.Bottom-(FRect.Bottom/100*((100 / MaxPlayers) * Points[0]))));
       for i:= 1 to Points.Count-1 do
        begin
         NP:=Round(FRect.Bottom-(FRect.Bottom/100*((100 / MaxPlayers) * Points[i])))-1;
         P2:=Point(i * Step, NP);
         WuLine(FBMPStatOnlineBuf, P1, P2, $00FFCC00, clBlue);
         P1:=P2;
        end;
      end;
    end;    }

    str := 'Сред. Ping ' + IntToStr(DSPing) + '/' + IntToStr(MaxPing);
    Font.Color := $0000FFCC;
    TextOut(FRect.Width - TextWidth(str) - 2, FRect.Top + 2, str);

    str := 'Игроков ' + IntToStr(DSOnline) + '/' + IntToStr(MaxPlayers);
    Font.Color := $00FFCC00;
    TextOut(FRect.Width - TextWidth(str) - 2, FRect.Top + 20, str);

   //RenderTarget.SetAntialiasMode(D2D1_ANTIALIAS_MODE_PER_PRIMITIVE);
   //RenderTarget.SetTransform(TD2DMatrix3x2F.Identity);
   //RenderTarget.EndDraw;
    FBMPStatOnline.Canvas.Draw(0, 0, FBMPStatOnlineBuf);
    GraphOnlineRepaint;
  end;
end;

procedure TFormMain.ThreadUpdateProc(Thread: TThreadProc);
var
  PCount: Integer;
begin
  try
    Thread.Work := twWork;
    while (not Application.Terminated) and (not Thread.Terminated) and (not Thread.Stopping) do
    begin
      Thread.Synchronize(Thread.Beat);
      Sleep(PlayerUpdateWait);
      if MainManager then
      begin
        Thread.Synchronize(FormMain.ExecuteCommand.GetPlayers);
      end;
      PCount := FServerDB.PlayerInfoCount;
      Thread.Synchronize(
        procedure
        begin
          if PCount <> PlayerInfo.Count then
            RefreshPlayerInfo;
        end);
    end;
    Thread.Work := twExit;
  except
    on E: Exception do
    begin
      Thread.Synchronize(
        procedure
        begin
          Log(FLogSystem, 'ThreadUpdateProc ' + E.Message)
        end);
      Thread.Work := twExcept;
    end;
  end;
end;

procedure TFormMain.ThreadUpdateProcessData(Thread: TThreadProc);
var
  PIBuf: TProcessData;
  OldCPU, NewCPU: Extended;
  lpMemoryStatus: TMemoryStatus;
begin
  try
    Thread.Work := twWork;
    OldCPU := 0;
    while (not Application.Terminated) and (not Thread.Terminated) and (not Thread.Stopping) do
    begin
      Sleep(ProcInterval);
      if Thread.Wait then
        Continue;
      Thread.Synchronize(Thread.Beat);
      if not UpdateProcessData(PID, hProc, PIBuf) then
      begin
        Thread.Synchronize(
          procedure
          begin
            Thread.Wait := True;
            Indicate(LabelExConCP, pbpError);
          end);
        Continue;
      end;
      Thread.Synchronize(
        procedure
        begin
          ProcInfo := PIBuf;
          NewCPU := 100 - (CPUUsage(preIdleTime, preUserTime, preKrnlTime, ProcInterval) - ProcInfo.CPUUse);
          lpMemoryStatus.dwLength := SizeOf(lpMemoryStatus);
          GlobalMemoryStatus(lpMemoryStatus);
          LabelPICPU.Caption := 'ЦП: ' + IntToStr(Round(ProcInfo.CPUUse)) + '/' + IntToStr(Round((OldCPU + NewCPU) / 2)) + '%';
          LabelPIMem.Caption := Format('ОЗУ: %d мб/%d мб', [ProcInfo.UseMemory div Sqr(1024), lpMemoryStatus.dwAvailPhys div Sqr(1024)]);
          LabelPIThreads.Caption := 'Потоков: ' + IntToStr(ProcInfo.CntThreads);
          OldCPU := NewCPU;
        end);
    end;
    Thread.Work := twExit;
  except
    on E: Exception do
    begin
      Thread.Synchronize(
        procedure
        begin
          Log(FLogSystem, 'ThreadUpdateProcessData ' + E.Message)
        end);
      Thread.Work := twExcept;
    end;
  end;
end;

procedure TFormMain.TimerCheckDonatTimer(Sender: TObject);
var
  TMP: Cardinal;
begin
  TMP := GetTickCount;
  CheckDonat;
  LabelTimerCheckDonat.Caption := IntToStr((GetTickCount - TMP));
end;

procedure TFormMain.TimerHearthBeatTimer(Sender: TObject);
var
  TMP: Cardinal;

  function SetBeatColor(Value: Byte): TColor;
  begin
    Result := clGray;
    case Value of
      1:
        Exit($004FFCFF);
      2:
        Exit($0030FF9B);
    else
      Exit;
    end;
  end;

  function SetBeatTh(Thread: TThreadProc): TColor;
  begin
    Result := SetBeatColor(Thread.HearthBeat);
    if Thread.Wait or Thread.Stopped then
      Result := $001CA8FF;
    if Thread.Stopping then
      Result := $00FFF240;
  end;

begin
  TMP := GetTickCount;
  LabelExThDB.StyledColor(SetBeatTh(FThreadUpdatePlayers));
  LabelExThWebChat.StyledColor(SetBeatTh(FThreadChatSendToGame));
  LabelExThGet.StyledColor(SetBeatTh(FThreadGetServer));
  LabelExThleg.StyledColor(SetBeatTh(FThreadTelegram));
  LabelExEM.StyledColor(SetBeatColor(FGameEventManager.HearthBeat.BeatValue));
  LabelExRCON.StyledColor(SetBeatColor(FRCONHB.BeatValue));
  LabelExThProc.StyledColor(SetBeatTh(FThreadProcInfo));
  LabelTimerHearthBeat.Caption := IntToStr((GetTickCount - TMP));
end;

procedure TFormMain.TimerRestartTimer(Sender: TObject);
var
  TMP: Cardinal;

  procedure Say;
  begin
    Chat(cfInfo, 'Рестарт через ' + IntToStr(FRestartTimeLeft) + ' ' + GetWord(twSeconds, FRestartTimeLeft));
  end;

begin
  TMP := GetTickCount;
  Dec(FRestartTimeLeft);
  if FRestartTimeLeft <= 0 then
  begin
    TimerRestart.Enabled := False;
    Chat(cfInfo, 'Рестарт!');
    FDoRestart;
    LabelTimerRestart.Caption := IntToStr((GetTickCount - TMP));
    Exit;
  end;
  if FRestartTimeLeft = (TimeToRestart - 1) then
    Say
  else if FRestartTimeLeft = (TimeToRestart div 2) then
    Say
  else if FRestartTimeLeft = (TimeToRestart div 3) then
    Say
  else if FRestartTimeLeft <= 10 then
    Say;
  LabelTimerRestart.Caption := IntToStr((GetTickCount - TMP));
end;

procedure TFormMain.TimerUpdateTimer(Sender: TObject);
var
  TMP: Cardinal;
begin
  TMP := GetTickCount;
  if MainManager then
  begin
    if TelegramIsTimed then
      if TelegramTimer > 0 then
      begin
        TelegramTimer := Max(0, TelegramTimer - 10);
        if TelegramTimer <= 0 then
          StopTelegram;
      end;
  end;
  SetLocalPath;
  UpdateGraphStatOnline;
  LabelTimerUpdate.Caption := IntToStr((GetTickCount - TMP));
end;

procedure TFormMain.Chat(From: TChatFrom; Text: string; ToPlayer: TSteamID = '');
var
  ChatRec: TChatRecord;
  CColor: TColor;
begin
  ChatRec.From := From;
  ChatRec.Date := Now;
  ChatRec.Text := Text;
  ChatRec.Player.SteamID := '';
  ChatRec.Around := caWorld;
  ChatRec.PM := ToPlayer <> '';
  case From of
    cfAdmin:
      begin
        ChatRec.Player.GameName := 'Администратор';
        ChatRec.Player.SteamName := AdminSteamName;
        if ChatEng then
          ChatRec.Text := TranslateGoogle(ChatRec.Text, 'ru', 'en');
        CColor := ChatColor;
        SendedMessages.New(Text);
        if ChatRec.PM then
          Text := 'Админ, ЛС: ' + Text
        else
          Text := 'Админ: ' + Text;
      end;
    cfSite:
      begin
        ChatRec.Player.GameName := 'Сайт';
        ChatRec.Player.SteamName := 'Сайт';
        CColor := $0026B0FF;
      end;
    cfInfo:
      begin
        ChatRec.Player.GameName := 'Консоль';
        ChatRec.Player.SteamName := 'Консоль';
        CColor := $0026FFC6;
      end;
    cfConsole:
      begin
        ChatRec.Player.GameName := 'Консоль';
        ChatRec.Player.SteamName := 'Консоль';
        CColor := clWhite;
      end;
    cfPlayer:
      Exit;
  else
    Exit;
  end;
  OnPlayerChat(ChatRec);
  if ChatRec.PM then
    FCommands.Chat(Text, CColor, ToPlayer)
  else
    FCommands.Chat(Text, CColor);
end;

procedure TFormMain.ChatFromSiteInsert(Item: TChatRecord);
begin
  FChatFromSite.Add(Item);
end;

procedure TFormMain.CheckBansToUnban;
var
  i: Integer;
begin
  for i := 0 to Bans.Count - 1 do
  begin
    if not Bans[i].PlayerSteamID.IsEmpty then
    begin
      if Bans[i].Remaining > Bans[i].Duration then
      begin
        ExecuteCommand.Unban(Bans[i].PlayerSteamID);
        OnPlayerUnban(Bans[i]);
        Exit;
      end;
    end;
  end;
end;

procedure TFormMain.CheckBoxMainManagerClick(Sender: TObject);
begin
  MainManager := CheckBoxMainManager.Checked;
end;

procedure TFormMain.CheckBoxMiniChatPMClick(Sender: TObject);
var
  SID: TSteamID;
begin
  if not GetCurrentPlayerSteamID(SID) then
    CheckBoxMiniChatPM.Checked := False;
end;

procedure TFormMain.CheckDonat;
var
  DRecord: TDonat;
  i, PID: Integer;
begin
  if not FServerDB.Connected then
    Exit;
  if not FServerDB.GetDonats(FDonats) then
    Exit;
  for i := 0 to FDonats.Count - 1 do
  begin
    DRecord := FDonats[i];
    if GetPlayerInfoID(DRecord.Player.SteamID, PID) then
    begin
      DRecord := FDonats[i];
      DRecord.Player.GameName := PlayerInfo[PID].CharName;
      DRecord.Player.SteamName := PlayerInfo[PID].SteamName;
      FDonats[i] := DRecord;
    end;

    if DRecord.Unlimit then
      Continue;
    if not DRecord.Active then
      Continue;
    if DRecord.DateEnd < Now then
    begin
      DeactivateDonat(DRecord);
    end;
  end;
  FDonats.UpdateTable;
end;

procedure TFormMain.CheckSiteChat;
var
  CR: TChatList;
  i: Integer;
begin
  if not FSiteDB.Connected then
    Exit;
  if FLastSiteChatID < 0 then
  begin
    FLastSiteChatID := FSiteDB.GetLastSiteChatID;
    if FLastSiteChatID < 0 then
      Exit;
  end;

  CR := TChatList.Create(nil);
  if FSiteDB.GetLastChat(CR, FLastSiteChatID) then
    for i := 0 to CR.Count - 1 do
      ChatFromSiteInsert(CR[i]);
end;

procedure TFormMain.UpdatePlayerInfoFrom;
var
  i: Integer;
  Updated: TUpdatedDataPlayerFromList;
  Item: TUpdatedDataPlayerFrom;
begin
  if PlayerInfo.Count <= 0 then
    Exit;
  if not FServerDB.Connected then
    Exit;
  FUpdatePlayerInfoFromStop := False;
  ProgressBarProc.Position := 0;
  ProgressBarProc.Visible := True;
  SpeedButtonDBPIGeoStop.Visible := True;
  Updated := TUpdatedDataPlayerFromList.Create;
  for i := 0 to PlayerInfo.Count - 1 do
  begin
    Application.ProcessMessages;
    ProgressBarProc.Position := Round((100 / (PlayerInfo.Count - 1)) * i);
    if FUpdatePlayerInfoFromStop then
      Break;
    if PlayerInfo[i].From = '' then
    begin
      PlayerInfo[i] := GetFromUserFor(PlayerInfo[i]);
      Item.City := PlayerInfo[i].FromCity;
      Item.Country := PlayerInfo[i].FromCountry;
      Item.SteamID := PlayerInfo[i].SteamID;
      if PlayerInfo[i].From <> '' then
        Updated.Add(Item);
    end;
  end;
  FServerDB.UpdatePlayerFrom(Updated);
  Updated.Free;
  ProgressBarProc.Visible := False;
  SpeedButtonDBPIGeoStop.Visible := False;
  PlayerInfo.UpdateTable;
end;

procedure TFormMain.UserQuestionProc(ChatRecord: TChatRecord);
var
  i: Integer;
begin
  for i := 0 to FConsoleAnswer.Count - 1 do
  begin
    if SimpleStrCompare(ChatRecord.Text, FConsoleAnswer[i].Question) * 100 > 85 then
    begin
      if ChatRecord.Around in [caWorld, caArea] then
        Chat(cfConsole, FConsoleAnswer[i].Answer)
      else
        Chat(cfConsole, FConsoleAnswer[i].Answer, ChatRecord.Player.SteamID);
      Exit;
    end;
  end;
end;

procedure TFormMain.WebBrowserInfoNavigateComplete2(ASender: TObject; const pDisp: IDispatch; const URL: OleVariant);
begin
  EditWebURL.Text := WebBrowserInfo.LocationURL;
end;

procedure TFormMain.WebBrowserInfoProgressChange(ASender: TObject; Progress, ProgressMax: Integer);
begin
  ProgressBarWBLoad.Max := ProgressMax;
  ProgressBarWBLoad.Position := Progress;
end;

procedure TFormMain.WorldChatToSite(ChatItem: TChatRecord);
begin
  if ChatItem.Text = '' then
    Exit;
  if not MainManager then
    Exit;
  if ChatItem.Text[1] = '/' then
    Exit;
  FChatFromGame.Add(ChatItem);
end;

procedure TFormMain.ActionPlayersUpdateExecute(Sender: TObject);
begin
  ExecuteCommand.GetPlayers;
end;

procedure TFormMain.ActionSteamInfoExecute(Sender: TObject);
var
  SID: string;
begin
  if GetCurrentPlayerSteamID(SID) then
    ShowSteamInfo(SID);
end;

procedure TFormMain.AllReady;
begin
  Log(FLogSystem, 'Запуск совершён');
  FNotify.Info('Добро пожаловать!', 'Система загружена');
end;

procedure TFormMain.ButtonDBReconClick(Sender: TObject);
begin
  FDBHost := EditDBHost.Text;
  FDBPort := EditDBPort.Text;
  FDBPass := EditDBPass.Text;
  FDBDatabase := EditDBDataBase.Text;
  FDBUser := EditDBUser.Text;
  if FDBHost.IsEmpty or FDBPort.IsEmpty or FDBPass.IsEmpty or FDBDatabase.IsEmpty or FDBUser.IsEmpty then
    Log(FLogSystem, 'База данных Unturned не нестроена')
  else
    ConnectDB;
end;

procedure TFormMain.ButtonFlatOpenLocalDirClick(Sender: TObject);
var
  Dir: string;
begin
  Dir := EditLocalPath.Text;
  if AdvSelectDirectory('Выберите каталог с игрой', '', Dir, False, False, False) then
  begin
    EditLocalPath.Text := Dir;
  end;
end;

procedure TFormMain.ButtonGetPlayerPClick(Sender: TObject);
begin
  EditPermNick.Text := EditPlayerNick.Text;
  EditPermSteam.Text := EditPlayerSteamID.Text;
  EditPermGroups.Text := '';
  ExecuteCommand.GetPerms(EditPermSteam.Text);
end;

procedure TFormMain.ButtonManagerReconClick(Sender: TObject);
begin
  FLocalPath := EditLocalPath.Text;
  FLocalServerName := EditServerName.Text;
  FLocalServerPath := FLocalPath + '\Servers\' + FLocalServerName;
  Indicate(LabelExConPath, pbpWork);
  if SetLocalPath then
    Indicate(LabelExConPath, pbpOK)
  else
    Indicate(LabelExConPath, pbpError);
end;

procedure TFormMain.ButtonPermAddClick(Sender: TObject);
var
  Gr: string;
begin
  case ComboBoxPremGroup.ItemIndex of
    0:
      Gr := PermGroupModer;
    1:
      Gr := PermGroupVIP;
    2:
      Gr := PermGroupTrueModer;
  else
    Exit;
  end;
  ExecuteCommand.PermAdd(EditPermSteam.Text, Gr);
  ExecuteCommand.GetPerms(EditPermSteam.Text);
end;

procedure TFormMain.ButtonPermRemoveClick(Sender: TObject);
var
  Gr: string;
begin
  case ComboBoxPermGroupRemove.ItemIndex of
    0:
      Gr := PermGroupModer;
    1:
      Gr := PermGroupVIP;
    2:
      Gr := PermGroupTrueModer;
  else
    Exit;
  end;
  ExecuteCommand.PermRemove(EditPermSteam.Text, Gr);
  ExecuteCommand.GetPerms(EditPermSteam.Text);
end;

procedure TFormMain.ButtonRCONReconClick(Sender: TObject);
begin
  FRCONHost := EditRCONHost.Text;
  FRCONPort := EditRCONPort.Text;
  FRCONPass := EditRCONPass.Text;
  if FRCONHost.IsEmpty or FRCONPort.IsEmpty or FRCONPass.IsEmpty then
    Log(FLogSystem, 'RCON не настроен')
  else
    RCONConnect;
end;

procedure TFormMain.ButtonSDBReconClick(Sender: TObject);
begin
  FSDBHost := EditSDBHost.Text;
  FSDBPort := EditSDBPort.Text;
  FSDBPass := EditSDBPass.Text;
  FSDBDatabase := EditSDBDataBase.Text;
  FSDBUser := EditSDBUser.Text;
  if FSDBHost.IsEmpty or FSDBPort.IsEmpty or FSDBPass.IsEmpty or FSDBDatabase.IsEmpty or FSDBUser.IsEmpty then
    Log(FLogSystem, 'База данных сайта не настроена')
  else
    ConnectSDB;
end;

procedure TFormMain.ClientSocketConnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  FRCONHB.Beat;
  Log(FLogSystem, 'RCON Соединение установлено');
  RCONState := csConnected;
  ExecuteCommand.Login(FRCONPass);
  ExecuteCommand.GetPlayers;
end;

procedure TFormMain.ClientSocketConnecting(Sender: TObject; Socket: TCustomWinSocket);
begin
  FRCONHB.Beat;
  Log(FLogSystem, 'RCON Соединение');
  RCONState := csConnecting;
end;

procedure TFormMain.ClientSocketDisconnect(Sender: TObject; Socket: TCustomWinSocket);
begin
  FRCONHB.Beat;
  Log(FLogSystem, 'RCON соединение разорвано');
  RCONState := csDisconnected;
end;

procedure TFormMain.ClientSocketError(Sender: TObject; Socket: TCustomWinSocket; ErrorEvent: TErrorEvent; var ErrorCode: Integer);
begin
  FRCONHB.Beat;
  ErrorCode := 0;
  case ErrorEvent of
    eeGeneral:
      Log(FLogSystem, 'RCON eeGeneral');
    eeSend:
      Log(FLogSystem, 'RCON Ошибка при отправке');
    eeReceive:
      Log(FLogSystem, 'RCON Ошибка при приёме');
    eeConnect:
      begin
        Log(FLogSystem, 'RCON Не смог подключиться');
        RCONState := csDisconnected;
      end;
    eeDisconnect:
      begin
        Log(FLogSystem, 'RCON Соединение разорвано');
        RCONState := csDisconnected;
      end;
    eeAccept:
      Log(FLogSystem, 'RCON eeAccept');
    eeLookup:
      Log(FLogSystem, 'RCON eeLookup');
  end;
end;

procedure TFormMain.ClientSocketLookup(Sender: TObject; Socket: TCustomWinSocket);
begin
  FRCONHB.Beat;
 //Log(FLogSystem, 'ClientSocketLookup');
end;

procedure TFormMain.ClientSocketRead(Sender: TObject; Socket: TCustomWinSocket);
var
  Data: string;
begin
  FRCONHB.Beat;
  Data := UTF8ToString(Socket.ReceiveText);
  ProcessMSG(Data);
end;

procedure TFormMain.ClientSocketWrite(Sender: TObject; Socket: TCustomWinSocket);
begin
  FRCONHB.Beat;
  Log(FLogSystem, 'RCON отправка данных');
end;

procedure TFormMain.FillChatPlayers;
var
  i: Integer;
  LastSID: TSteamID;

  function FindPlayer(SID: TSteamID): Boolean;
  var
    j: Integer;
  begin
    Result := False;
    for j := 0 to FChatPlayers.Count - 1 do
      if FChatPlayers[j].SteamID = SID then
        Exit(True);
  end;

begin
  if FChatFiltered then
    Exit;
  LastSID := '';
  FChatPlayers.Clear;
  for i := 0 to FChatBase.Count - 1 do
  begin
    if LastSID = FChatBase[i].Player.SteamID then
      Continue;
    LastSID := FChatBase[i].Player.SteamID;
    if FindPlayer(LastSID) then
      Continue;
    FChatPlayers.Add(FChatBase[i].Player);
  end;
  ComboBoxChatFilter.Items.Clear;
  for i := 0 to FChatPlayers.Count - 1 do
    ComboBoxChatFilter.Items.Add(FChatPlayers[i].GameName);
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caNone;
  Quit;
end;

procedure TFormMain.EventProcMassAirdrop(Sender: TObject);
begin
  Log(FLogRCON, 'EventProcMassAirdrop');
  FCommands.AirdropMass;
end;

procedure TFormMain.EventProcMassHeal(Sender: TObject);
begin
  Log(FLogRCON, 'EventProcMassHeal');
  FCommands.HealAll;
end;

procedure TFormMain.EventProcMSG(Sender: TObject);
begin
  Log(FLogRCON, 'EventProcMSG');
  SendGameMessage(FGameMessages.GetNext);
 //ExecuteCommand.Chat('Аирдроп через '+SecondsToStr(FGameEventManager.Events[0].LeftInSecond), clYellow);
end;

procedure TFormMain.EventProcStorm(Sender: TObject);
begin
  Log(FLogRCON, 'EventProcStorm');
  ExecuteCommand.Storm;
end;

procedure TFormMain.EventProcEcho(Sender: TObject);
begin
  Log(FLogRCON, 'EventProcEcho');
  ExecuteCommand.Chat('Аирдроп через ' + SecondsToStr(FGameEventManager.Events[0].LeftInSecond), clYellow);
end;

procedure TFormMain.FDoRestart;
var
  WEnd: Cardinal;
begin
  ExecuteCommand.Shutdown;
  WEnd := GetTickCount + 5 * MSecsPerSec;
  while GetTickCount < WEnd do
  begin
    Sleep(200);
    Application.ProcessMessages;
  end;
  FDoStart;
end;

procedure TFormMain.FDoStart;
begin
  if FRunServer(GetServerStartCommandLine) then
    SpeedButtonConProcClick(nil);
end;

procedure TFormMain.FGridTimersUpdate;
begin
  DrawGridTimers.Repaint;
 //DrawGridTimers.RowCount:=FGameEventManager.EventCount div DrawGridTimers.ColCount + 1;
end;

procedure TFormMain.CreateGameEventsManager;
var
  Event: TGameEvent;
  DaySet: TGameEvent.TDaySet;
begin
  FGameEventManager := TGameEventManager.Create;
  FGameEventManager.OnUpdate := FGridTimersUpdate;
  Event := TGameEvent.Create;
  with Event do
  begin
    Active := False;
    Name := 'Аирдроп';
    DaySet.TimeLeft := 0;
    DaySet.Active := True;
    DaySet.Interval := inSecondsHour * 5;
    DaySet.EventInterval := eiInterval;
    SetAllDay(DaySet);

    DaySet.Interval := inSecondsHour * 2;
    Days[6] := DaySet;
    ExecuteProc := EventProcMassAirdrop;
    ImageID := 3;
    ResetDays;
  end;
  FGameEventManager.RegEvent(Event);

  Event := TGameEvent.Create;
  with Event do
  begin
    Active := False;
    Name := 'Смена погоды';
    DaySet.Active := True;
    DaySet.TimeLeft := 0;
    DaySet.Time := EncodeTime(16, 35, 00, 00);
    DaySet.EventInterval := eiTime;
    SetAllDay(DaySet);
    ExecuteProc := EventProcStorm;
    ImageID := 10;
    ResetDays;
  end;
  FGameEventManager.RegEvent(Event);

  Event := TGameEvent.Create;
  with Event do
  begin
    Active := False;
    Name := 'Излечение';
    DaySet.Active := True;
    DaySet.TimeLeft := 0;
    DaySet.Interval := inSecondsHour * 3;
    DaySet.EventInterval := eiInterval;
    SetAllDay(DaySet);
    DaySet.Active := False;
    Days[6] := DaySet;
    ExecuteProc := EventProcMassHeal;
    ImageID := 1;
    ResetDays;
  end;
  FGameEventManager.RegEvent(Event);

  Event := TGameEvent.Create;
  with Event do
  begin
    Active := False;
    Name := 'Оповещение - air';
    DaySet.Active := True;
    DaySet.TimeLeft := 0;
    DaySet.Interval := inSecondsMin * 10;
    DaySet.EventInterval := eiInterval;
    SetAllDay(DaySet);
    ExecuteProc := EventProcEcho;
    ImageID := 16;
    ResetDays;
  end;
  FGameEventManager.RegEvent(Event);

  Event := TGameEvent.Create;
  with Event do
  begin
    Active := False;
    Name := 'Объявления';
    DaySet.Active := True;
    DaySet.TimeLeft := 0;
    DaySet.Interval := inSecondsMin * 2;
    DaySet.EventInterval := eiInterval;
    SetAllDay(DaySet);
    ExecuteProc := EventProcMSG;
    ImageID := 21;
    ResetDays;
  end;
  FGameEventManager.RegEvent(Event);
  FGridTimersUpdate;
end;

procedure TFormMain.CreateDashboardCtrl;
begin
  FDashboardCtrl := TDashboard.Create(ScrollBoxMonitor);
  FDashboardCtrl.Cols := 4;
  FDashboardCtrl.Reg(TDashboard.CreateItem(0, 0, PanelServerInfo));
  FDashboardCtrl.Reg(TDashboard.CreateItem(0, 1, PanelGameplayCtrl));
  FDashboardCtrl.Reg(TDashboard.CreateItem(0, 2, PanelPRev));

  FDashboardCtrl.Reg(TDashboard.CreateItem(1, 0, PanelConnections));
  FDashboardCtrl.Reg(TDashboard.CreateItem(1, 1, PanelMiniChat));
  FDashboardCtrl.Reg(TDashboard.CreateItem(1, 2, PanelCollapsedSpay));

  FDashboardCtrl.Reg(TDashboard.CreateItem(2, 0, PanelGraphOnline));
  FDashboardCtrl.Reg(TDashboard.CreateItem(2, 1, PanelEvents));
  FDashboardCtrl.Reg(TDashboard.CreateItem(2, 2, PanelCollapsedActions));

  FDashboardCtrl.Reg(TDashboard.CreateItem(3, 0, PanelStat));
  FDashboardCtrl.Reg(TDashboard.CreateItem(3, 1, PanelPerms));
  FDashboardCtrl.Reg(TDashboard.CreateItem(3, 2, PanelGive));

  FDashboardCtrl.Color := $00333333;
  FDashboardCtrl.ColorBorder := ColorDarker(DashboardCtrl.Color);
  FDashboardCtrl.FontContent := clSilver;

  FDashboardCtrl.Update;
end;

procedure TFormMain.CreateDonat(var Data: TDonat);
begin
  if FServerDB.CreateDonat(Data) then
  begin
    OnPlayerActivateDonat(Data);
    ExecuteCommand.PermAdd(Data.Player.SteamID, Data.Group);
    FDonats.Add(Data);
  end;
end;

procedure TFormMain.CreateGraphStatOnline;
begin
  FStatOnline := TListInt.Create;
  FStatPing := TListInt.Create;
  FBMPStatOnline := TBitmap.Create;
  FBMPStatOnline.PixelFormat := pf24bit;
  FBMPStatOnline.Width := ImageGraphOnline.Width;
  FBMPStatOnline.Height := ImageGraphOnline.Height;

  FBMPStatOnlineBuf := TBitmap.Create;
  FBMPStatOnlineBuf.PixelFormat := pf24bit;
  FBMPStatOnlineBuf.Width := ImageGraphOnline.Width;
  FBMPStatOnlineBuf.Height := ImageGraphOnline.Height;

  ImageGraphOnline.Picture.Assign(FBMPStatOnline);
end;

procedure TFormMain.CreateServerConfig;
begin
  StartCommands.Create;
  StartCommands.SetDefault;
end;

procedure TFormMain.OnLoadProgress(AMax, APos: Integer; Info: string);
begin
  ProgressBarUELoad.Max := AMax;
  ProgressBarUELoad.Position := APos;
 //LabelCurrentLoad.Caption:=Info;
 //LabelVehicleCount.Caption:=IntToStr(UBase.VehicleCount);
 //LabelItemCount.Caption:=IntToStr(UBase.ItemCount);
  Application.ProcessMessages;
end;

procedure TFormMain.CreateLowSystem;
begin
  FRunningServer := False;
  FStopRunServer := False;
  FNotify := TNotify.Create(Self);
  FNotify.Bottom := 50;
  FLogSystem := TLog.Create(TableExLogSystem, 1000);
  FLogSystem.AddTable(TableExLogSystemFace);
  FLogRCON := TLog.Create(TableExLogRCON, 1000);
  FLogCommands := TLog.Create(TableExLogCommands, 1000);
  FLogGamePlay := TLog.Create(TableExLogGamePlay, 1000);
  FServerDB := TServerDB.Create;
  FServerDB.OnExcept := OnServerDBExcept;
  FSiteDB := TSiteDB.Create;
  FServerDB.OnExcept := OnSiteDBExcept;
  MaxPlayers := 24;
  MaxPing := 500;
  FLastSiteChatID := -1;
  FChatFiltered := False;
  FGridVertPos := 0;
  FIntDataBase := TUDatabase.Create(ExtractFilePath(Application.ExeName) + 'database.db');
  FRCONProcData := TStringList.Create;
  FSettings := TSettings.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
  FChatList := TChatList.Create(nil);
  FChatBase := TChatList.Create(TableExChat);
  FChatFromSite := TChatList.Create(nil);
  FChatFromGame := TChatList.Create(nil);
  FExecutedCommands := TExecutedCommands.Create;
  FSendedMessages := TExecutedCommands.Create;
  FGameMessages := TGameMessages.Create(TableExMSG);
  FChatPlayers := TPlayers.Create(nil);
  FVKGroup := TVKGroup.Create;
  FDonats := TDonats.Create(TableExDonat);
  FServerActions := TServerActions.Create(TableExActions);
  PlayerInfo := TPlayerInfo.Create(TableExPlayerInfo);
  FPlayers := TPlayers.Create(ListBoxExPlayers);
  FGroupPlayers := TPlayers.Create(TableExGroupPlayers);
  FPlayersRev := TPlayersRev.Create(TableExPlayersRev);
  FBans := TBans.Create(TableExBans);
  FAdmins := TAdmins.Create(TableExAdmins);
  FConsoleAnswer := TConsoleAnswers.Create;
  FKits := TKits.Create(TableExKits);
  FKits.UpdateTable;
  FSelKit := -1;
  FUpdateKitData;
  FMapPlaces := TMapPlaces.Create(TableExMapPoints);
  FMapPlaces.AddTable(TableExGroupTP);
 //Telegram Bot
  FTelegram := TTelegramBot.Create(Self);
  FTelegram.Token := TelegramBotToken;
  TelegramTimer := 0;
  TelegramIsTimed := True;

  FThreadUpdatePlayers := TThreadProc.Create(True);
  FThreadUpdatePlayers.Proc := ThreadUpdateProc;

  FThreadChatSendToGame := TThreadProc.Create(True);
  FThreadChatSendToGame.Proc := ThreadChatSendToGame;

  FThreadGetServer := TThreadProc.Create(True);
  FThreadGetServer.Proc := ThreadServerGet;

  FThreadProcInfo := TThreadProc.Create(True);
  FThreadProcInfo.Proc := ThreadUpdateProcessData;

  FThreadTelegram := TThreadProc.Create(True);
  FThreadTelegram.Proc := ThreadTelegramWork;

  TimerTerminateCommand := TTimer.Create(nil);
  with TimerTerminateCommand do
  begin
    Enabled := False;
    Interval := 1500;
    OnTimer := OnTimerTerminateCommand;
  end;

  FUExplorer := TUnturnedItemBase.Create(AppPath + '\database.db');
  FUExplorer.OnProgress := OnLoadProgress;
  FUItems := TUEItems.Create;
  FUVehicles := TUEVehicles.Create;

  ChatColor := clSilver;
  ClientWidth := 1140;

  ButtonsColor := ColorLighter(MenuColor);
  MenuColor := $002F2F2F;
  PageControl.Left := -2;
  PageControl.Top := -6;
  PageControl.Width := PanelPages.Width - PageControl.Left + 4;
  PageControl.Height := PanelPages.Height - PageControl.Top + 4;
  ScrollBoxMonitor.VertScrollBar.Position := 0;
  ScrollBoxMonitor.HorzScrollBar.Position := 0;
  PanelMenu.Left := 0;
  PanelMenu.Top := 0;
  PanelMenu.Height := ClientHeight;
  PanelMenu.BringToFront;
  PanelPlayerCtrlHide;
  RCONState := csNone;
  Indicate(LabelExConDBU, pbpNone);
  Indicate(LabelExConPath, pbpNone);
  SetPage(TabSheetMain);
  FUpdatePlayerList;
end;

procedure TFormMain.CreateCommandsSystem;
begin
  FCommands := TCommands.Create;
  FCommands.SendCommandHandler := SendCommand;
  FCommands.GetPlayersID := GetPlayersSID;
  FCommands.LogHandler := LogCommand;
end;

procedure TFormMain.DeleteIECache;
var
  lpEntryInfo: PInternetCacheEntryInfo;
  hCacheDir: LongWord;
  dwEntrySize: LongWord;
begin
  dwEntrySize := 0;
  FindFirstUrlCacheEntry(nil, TInternetCacheEntryInfo(nil^), dwEntrySize);
  GetMem(lpEntryInfo, dwEntrySize);
  if dwEntrySize > 0 then
    lpEntryInfo^.dwStructSize := dwEntrySize;
  hCacheDir := FindFirstUrlCacheEntry(nil, lpEntryInfo^, dwEntrySize);
  if hCacheDir <> 0 then
  begin
    repeat
      DeleteUrlCacheEntry(lpEntryInfo^.lpszSourceUrlName);
      FreeMem(lpEntryInfo, dwEntrySize);
      dwEntrySize := 0;
      FindNextUrlCacheEntry(hCacheDir, TInternetCacheEntryInfo(nil^), dwEntrySize);
      GetMem(lpEntryInfo, dwEntrySize);
      if dwEntrySize > 0 then
        lpEntryInfo^.dwStructSize := dwEntrySize;
    until not FindNextUrlCacheEntry(hCacheDir, lpEntryInfo^, dwEntrySize);
  end;
  FreeMem(lpEntryInfo, dwEntrySize);
  FindCloseUrlCache(hCacheDir);
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
 //Создание объектов и классов
  CreateLowSystem;
  CreateCommandsSystem;
  CreateServerConfig;
  CreateGraphStatOnline;
  CreateGameEventsManager;
  CreateTablesColumns;
  CreateDashboardCtrl;
 //Всё создано
  UpdateGraphStatOnline;
 //Загружаем настройки пользователя
  SettingsLoad;
end;

procedure TFormMain.UpdateStat;
var
  D: Cardinal;
  H, M, S: Word;
begin
  with FStatistics do
  begin
    LabelStatMaxP.Caption := IntToStr(MaxPlayers);
    LabelStatAllPToday.Caption := IntToStr(AllPlayersToday);
    LabelStatNewP.Caption := IntToStr(NewPlayers);
    LabelStatEndP.Caption := IntToStr(EndPlayers);

    LabelStatAllP.Caption := IntToStr(AllPlayers);
    LabelStatNewYest.Caption := IntToStr(NewPlayersYest);
    LabelStatAllPYest.Caption := IntToStr(AllPlayersYest);
    LabelStatAllPMonth.Caption := IntToStr(AllPlayersMonth);

    LabelStatEndPYest.Caption := IntToStr(EndPlayersYest);
    LabelStatActiveP.Caption := IntToStr(ActivePlayers);
    LabelStatNoPlayers.Caption := IntToStr(NoPlayers);
    SecToDateTime(AvgPlayTime, D, H, M, S);
    if D > 0 then
    begin
      H := 0;
      M := 0;
    end
    else if H > 0 then
      M := 0;

    LabelStatAvgPlayTime.Caption := DaysAndTimeToStr(D, H, M, 0);
  end;
end;

initialization
  AppPath := ExtractFilePath(Application.ExeName);
  UpdateLogSystem;

end.

