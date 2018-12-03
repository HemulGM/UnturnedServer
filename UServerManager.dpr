program UServerManager;

uses
  Vcl.Forms,
  UServer.Manager in 'UServer.Manager.pas' {FormManager},
  UServer.CommonFunc in 'UServer.CommonFunc.pas',
  PngBitBtn in 'Import\PngBitBtn.pas',
  PngButtonFunctions in 'Import\PngButtonFunctions.pas',
  PngCheckListBox in 'Import\PngCheckListBox.pas',
  PngFunctions in 'Import\PngFunctions.pas',
  PngImageList in 'Import\PngImageList.pas',
  PngSpeedButton in 'Import\PngSpeedButton.pas',
  PNGWork in 'Import\PNGWork.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormManager, FormManager);
  Application.Run;
end.
