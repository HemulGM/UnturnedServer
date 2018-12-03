unit UServer.Memo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormMemo = class(TForm)
    Memo: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    class function ShowText(Data:string):Boolean;
  end;

var
  FormMemo: TFormMemo;

implementation

{$R *.dfm}

{ TFormMemo }

procedure TFormMemo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caNone;
 Free;
end;

class function TFormMemo.ShowText(Data:string):Boolean;
begin
 with TFormMemo.Create(nil) do
  begin
   Memo.Text:=Data;
   Show;
  end;
end;

end.
