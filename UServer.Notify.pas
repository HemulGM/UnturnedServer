unit UServer.Notify;

interface
 uses
  Winapi.Windows, System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Buttons;

 type

  TNotify = class
   type
    TLastRecord = record
     Empty:Boolean;
     Caption:string;
     Text:string;
     Image:Integer;
     Color:TColor;
    end;
   private
    FBottom:Integer;
    FButtonClose:TSpeedButton;
    FColor: TColor;
    FLabelCaption:TLabel;
    FLabelText:TLabel;
    FLastNotify:TLastRecord;
    FOwner:TForm;
    FPanel:TForm;
    FPanelClient:TPanel;
    FPanelLeft:TPanel;
    FPanelTop:TPanel;
    FRight:Integer;
    FTimerHide:TTimer;
    FVisible:Boolean;
    procedure AnimateWait;
    procedure BeforeShow;
    procedure HideNotify;
    procedure OnClickClose(Sender:TObject);
    procedure OnClickText(Sender:TObject);
    procedure OnTimerHide(Sender:TObject);
    procedure SetColor(const Value: TColor);
    procedure SetPanel(const Value: TForm);
    procedure ShowNotify;
   public
    constructor Create(AOwner: TForm);
    procedure Close;
    procedure Error(Caption, Text:string);
    procedure HideLastNotify;
    procedure Info(Caption, Text:string);
    procedure ShowLastNotify;
    procedure ShowTextMessage;
    procedure Update;
    procedure Warning(Caption, Text:string);
    property Bottom:Integer read FBottom write FBottom;
    property Color:TColor read FColor write SetColor;
    property LabelCaption:TLabel read FLabelCaption;
    property LabelText:TLabel read FLabelText;
    property LastNotify:TLastRecord read FLastNotify;
    property Owner:TForm read FOwner;
    property Panel:TForm read FPanel write SetPanel;
    property PanelClient:TPanel read FPanelClient;
    property PanelLeft:TPanel read FPanelLeft;
    property Right:Integer read FRight write FRight;
  end;

implementation

{ TNotify }

constructor TNotify.Create(AOwner: TForm);
begin
 FOwner:=AOwner;
 FVisible:=False;
 FRight:=20;
 FBottom:=20;
 HideLastNotify;
 FPanel:=TForm.Create(nil);
 with FPanel do
  begin
   Visible:=False;
   Caption:='Notify';
   DoubleBuffered:=True;
   BorderStyle:=bsNone;
  end;
 SetPanel(FPanel);
 Color:=clGray;

 FPanelLeft:=TPanel.Create(FPanel);
 with FPanelLeft do
  begin
   Parent:=FPanel;
   Align:=alLeft;
   BevelOuter:=bvNone;
   ParentBackground:=False;
   ParentColor:=False;
   Color:=clMaroon;
   Caption:='!';
   Font.Size:=45;
   Width:=FPanel.Height;
  end;

 FPanelClient:=TPanel.Create(FPanel);
 with FPanelClient do
  begin
   Parent:=FPanel;
   Align:=alClient;
   BevelOuter:=bvNone;
   ParentBackground:=False;
   ParentColor:=True;
   //Color:=FColor;
   Caption:='';
  end;

 FPanelTop:=TPanel.Create(FPanelClient);
 with FPanelTop do
  begin
   Parent:=FPanelClient;
   Height:=25;
   Align:=alTop;
   BevelOuter:=bvNone;
   ParentBackground:=True;
   ParentColor:=True;
   Caption:='';
  end;

 FLabelCaption:=TLabel.Create(FPanelTop);
 with FLabelCaption do
  begin
   Parent:=FPanelTop;
   AlignWithMargins:=True;
   Align:=alClient;
   WordWrap:=False;
   OnClick:=OnClickText;
   Cursor:=crHandPoint;
   Font.Size:=12;
   Caption:='';
  end;

 FButtonClose:=TSpeedButton.Create(FPanelTop);
 with FButtonClose do
  begin
   Parent:=FPanelTop;
   Height:=25;
   Width:=25;
   Align:=alRight;
   Caption:='×';
   Font.Color:=clWhite;
   Font.Size:=14;
   Font.Style:=[fsBold];
   Flat:=True;
   OnClick:=OnClickClose;
  end;

 FLabelText:=TLabel.Create(FPanelClient);
 with FLabelText do
  begin
   Parent:=FPanelClient;
   AlignWithMargins:=True;
   Align:=alClient;
   Margins.Bottom:=10;
   Margins.Right:=10;
   Margins.Left:=10;
   Margins.Top:=3;
   Font.Size:=9;
   OnClick:=OnClickText;
   Cursor:=crHandPoint;
   Caption:='';
   WordWrap:=TRue;
  end;

 FTimerHide:=TTimer.Create(nil);
 FTimerHide.Enabled:=False;
 FTimerHide.Interval:=3500;
 FTimerHide.OnTimer:=OnTimerHide;
end;

procedure TNotify.AnimateWait;
begin
 Application.ProcessMessages;
 Sleep(5);
end;

procedure TNotify.BeforeShow;
begin
 if FVisible then HideNotify;
end;

procedure TNotify.Close;
begin
 if FVisible then HideNotify;
end;

procedure TNotify.HideLastNotify;
begin
 FLastNotify.Empty:=True;
end;

procedure TNotify.HideNotify;
var Incr:Integer;
begin
 FTimerHide.Enabled:=False;
 Incr:=2;
 while Panel.Top < Screen.Height do
  begin
   Incr:=Incr+2;
   Panel.Top:=Panel.Top + Incr;
   AnimateWait;
  end;
 Panel.Top:=Screen.Height;
 Panel.Visible:=False;
 FVisible:=False;
end;

procedure TNotify.ShowLastNotify;
begin
 if FLastNotify.Empty then Exit;
 ShowNotify;
end;

procedure TNotify.ShowNotify;
var incr, ToPos:Integer;
begin
 FLabelCaption.Caption:=FLastNotify.Caption;
 FLabelText.Caption:=FLastNotify.Text;
 FPanelLeft.Color:=FLastNotify.Color;
 FVisible:=True;
 FTimerHide.Enabled:=False;
 Panel.Visible:=True;
 Panel.BringToFront;
 Incr:=2;

 Panel.Left:=Screen.Width - Panel.Width - FRight;
 ToPos:=Screen.Height - Panel.Height - FBottom;
 while Panel.Top > ToPos do
  begin
   Incr:=Incr+2;
   Panel.Top:=Panel.Top - Incr;
   AnimateWait;
  end;
 Panel.Top:=ToPos;

 FTimerHide.Enabled:=True;
end;

procedure TNotify.ShowTextMessage;
begin
 MessageBox(Application.Handle, PWideChar(FLastNotify.Text), PWideChar(FLastNotify.Caption), MB_ICONQUESTION or MB_OK);
end;

procedure TNotify.Update;
begin
 if FVisible then ShowNotify;
end;

procedure TNotify.OnClickClose(Sender: TObject);
begin
 Close;
end;

procedure TNotify.OnClickText(Sender: TObject);
begin
 ShowTextMessage;
end;

procedure TNotify.OnTimerHide(Sender: TObject);
begin
 if Panel.MouseInClient or PtInRect(Panel.ClientRect, Panel.ScreenToClient(Mouse.CursorPos)) then Exit;
 HideNotify;
end;

procedure TNotify.Error(Caption, Text: string);
begin
 BeforeShow;
 FLastNotify.Empty:=False;
 FLastNotify.Caption:=Caption;
 FLastNotify.Text:=Text;
 FLastNotify.Image:=0;
 FLastNotify.Color:=clMaroon;
 ShowNotify;
end;

procedure TNotify.Info(Caption, Text: string);
begin
 BeforeShow;
 FLastNotify.Empty:=False;
 FLastNotify.Caption:=Caption;
 FLastNotify.Text:=Text;
 FLastNotify.Image:=1;
 FLastNotify.Color:=$00FFCC66;
 ShowNotify;
end;

procedure TNotify.Warning(Caption, Text: string);
begin
 BeforeShow;
 FLastNotify.Empty:=False;
 FLastNotify.Caption:=Caption;
 FLastNotify.Text:=Text;
 FLastNotify.Image:=2;
 FLastNotify.Color:=$000066FF;
 ShowNotify;
end;

procedure TNotify.SetColor(const Value: TColor);
begin
 FColor:=Value;
 FPanel.Color:=FColor;
end;

procedure TNotify.SetPanel(const Value: TForm);
begin
 FPanel:=Value;
 FPanel.Visible:=False;
 FPanel.Width:=350;
 FPanel.Height:=93;
 FPanel.Color:=FColor;
 FPanel.Left:=Screen.Width - FPanel.Width - FRight;
 FPanel.Top:=Screen.Height;
end;

end.
