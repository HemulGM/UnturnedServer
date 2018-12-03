unit UServer.Banning;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  HGM.Controls.SpinEdit;

type
  TFormBan = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpinEditDays: TlkSpinEdit;
    SpinEditHours: TlkSpinEdit;
    SpinEditMins: TlkSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    ButtonCancel: TButton;
    ButtonOK: TButton;
    EditReason: TComboBox;
    procedure ButtonOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBan: TFormBan;

implementation

{$R *.dfm}

procedure TFormBan.ButtonOKClick(Sender: TObject);
begin
 if SpinEditDays.Value + SpinEditHours.Value + SpinEditMins.Value <= 0 then
  begin
   MessageBox(Handle, 'Нельзя забанить игрока на 0 минут!', 'Проверка', MB_ICONWARNING or MB_OK or MB_DEFBUTTON1);
   Exit;
  end;
 ModalResult:=mrOk;
end;

procedure TFormBan.FormCreate(Sender: TObject);
var D, H, M, Lost:Cardinal;
begin
 Lost:=7;
 D:=Lost div SecsPerDay;
 Lost:=Lost - D * SecsPerDay;

 H:=Lost div SecsPerHour;
 Lost:=Lost - H * SecsPerHour;

 M:=Lost div SecsPerMin;
 Lost:=Lost - M * SecsPerMin;

 if Lost > 0 then Inc(M);

 SpinEditDays.Value:=D;
 SpinEditHours.Value:=H;
 SpinEditMins.Value:=M;
end;

end.
