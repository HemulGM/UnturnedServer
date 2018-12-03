object FormBan: TFormBan
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1073#1072#1085
  ClientHeight = 177
  ClientWidth = 316
  Color = 2171169
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clSilver
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 56
    Height = 16
    Caption = #1055#1088#1080#1095#1080#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 68
    Width = 32
    Height = 16
    Caption = #1057#1088#1086#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 98
    Width = 31
    Height = 19
    AutoSize = False
    Caption = #1044#1085#1077#1081':'
  end
  object Label4: TLabel
    Left = 108
    Top = 98
    Width = 35
    Height = 19
    AutoSize = False
    Caption = #1063#1072#1089#1086#1074':'
  end
  object Label5: TLabel
    Left = 204
    Top = 98
    Width = 35
    Height = 19
    AutoSize = False
    Caption = #1052#1080#1085#1091#1090':'
  end
  object SpinEditDays: TlkSpinEdit
    Left = 53
    Top = 95
    Width = 49
    Height = 22
    Ctl3D = False
    MaxValue = 0
    MinValue = 0
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 1
    Value = 0
  end
  object SpinEditHours: TlkSpinEdit
    Left = 149
    Top = 95
    Width = 49
    Height = 22
    Ctl3D = False
    MaxValue = 0
    MinValue = 0
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 2
    Value = 0
  end
  object SpinEditMins: TlkSpinEdit
    Left = 245
    Top = 95
    Width = 49
    Height = 22
    Ctl3D = False
    MaxValue = 0
    MinValue = 0
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 3
    Value = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 138
    Width = 316
    Height = 39
    Align = alBottom
    BevelEdges = [beTop]
    BevelOuter = bvNone
    Color = 3355443
    ParentBackground = False
    TabOrder = 4
    ExplicitTop = 137
    object ButtonCancel: TButton
      Left = 233
      Top = 7
      Width = 75
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      Default = True
      ModalResult = 2
      TabOrder = 0
    end
    object ButtonOK: TButton
      Left = 152
      Top = 7
      Width = 75
      Height = 25
      Caption = #1043#1086#1090#1086#1074#1086
      TabOrder = 1
      OnClick = ButtonOKClick
    end
  end
  object EditReason: TComboBox
    Left = 22
    Top = 34
    Width = 272
    Height = 24
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 0
    Text = #1055#1086#1074#1077#1076#1077#1085#1080#1077
    Items.Strings = (
      #1055#1086#1074#1077#1076#1077#1085#1080#1077
      #1056#1077#1081#1076
      #1063#1080#1090#1099)
  end
end
