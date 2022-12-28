program UServer;

uses
  Vcl.Forms,
  UServer.Main in 'UServer.Main.pas' {FormMain},
  UServer.CommonFunc in 'UServer.CommonFunc.pas',
  PngBitBtn in 'Import\PngBitBtn.pas',
  PngButtonFunctions in 'Import\PngButtonFunctions.pas',
  PngCheckListBox in 'Import\PngCheckListBox.pas',
  PngFunctions in 'Import\PngFunctions.pas',
  PngImageList in 'Import\PngImageList.pas',
  PngSpeedButton in 'Import\PngSpeedButton.pas',
  PNGWork in 'Import\PNGWork.pas',
  UServer.GameEvents in 'UServer.GameEvents.pas',
  UServer.Commands in 'UServer.Commands.pas',
  UServer.Types in 'UServer.Types.pas',
  TelegAPI.Bot in '..\SRC\TelegAPI-master\Source\TelegAPI.Bot.pas',
  TelegAPi.Classes in '..\SRC\TelegAPI-master\Source\TelegAPi.Classes.pas',
  TelegAPi.RegisterIDE in '..\SRC\TelegAPI-master\Source\TelegAPi.RegisterIDE.pas',
  TelegAPi.Utils in '..\SRC\TelegAPI-master\Source\TelegAPi.Utils.pas',
  XSuperJSON in '..\SRC\TelegAPI-master\Source\XSuperJSON.pas',
  XSuperObject in '..\SRC\TelegAPI-master\Source\XSuperObject.pas',
  UServer.Banning in 'UServer.Banning.pas' {FormBan},
  VK.Classes in 'VK.Classes.pas',
  UServer.Database in 'UServer.Database.pas',
  UServer.Notify in 'UServer.Notify.pas',
  UServer.Memo in 'UServer.Memo.pas' {FormMemo},
  UServer.Donat in 'UServer.Donat.pas' {FormDonat},
  Vcl.Themes,
  Vcl.Styles,
  UnturnedIDB in '..\UnturnedExplorer\UnturnedIDB.pas',
  HGM.SQLang in '..\SQLite\HGM.SQLang.pas',
  HGM.SQLite in '..\SQLite\HGM.SQLite.pas',
  HGM.SQLite.Wrapper in '..\SQLite\HGM.SQLite.Wrapper.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TFormBan, FormBan);
  Application.CreateForm(TFormDonat, FormDonat);
  FormMain.Show;
  Application.ProcessMessages;
  FormMain.OnStartManger;
  Application.Run;
end.
