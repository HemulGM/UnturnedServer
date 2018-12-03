object FormManager: TFormManager
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1052#1077#1085#1077#1076#1078#1077#1088' '#1089#1077#1088#1074#1077#1088#1072' '#1076#1083#1103' UnturnedServer'
  ClientHeight = 425
  ClientWidth = 409
  Color = clBtnFace
  Constraints.MaxHeight = 463
  Constraints.MaxWidth = 425
  Constraints.MinHeight = 463
  Constraints.MinWidth = 425
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelRCON: TPanel
    Left = 138
    Top = 8
    Width = 263
    Height = 89
    BevelKind = bkFlat
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 5
      Top = 36
      Width = 30
      Height = 13
      Caption = #1051#1086#1075#1080#1085
    end
    object Label2: TLabel
      Left = 116
      Top = 36
      Width = 37
      Height = 13
      Caption = #1055#1072#1088#1086#1083#1100
    end
    object Panel5: TPanel
      Left = 0
      Top = 0
      Width = 259
      Height = 30
      Align = alTop
      Alignment = taLeftJustify
      BevelEdges = [beBottom]
      BevelOuter = bvNone
      Caption = ' '#1051#1086#1075#1080#1085' '#1080' '#1087#1072#1088#1086#1083#1100' '#1076#1083#1103' UnturnedServer'
      Color = 182403
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 309
      object ImageRCON: TImage
        Left = 242
        Top = 0
        Width = 17
        Height = 30
        Align = alRight
        Center = True
        ExplicitLeft = 158
        ExplicitTop = 2
        ExplicitHeight = 28
      end
    end
    object EditUser: TEdit
      Left = 5
      Top = 55
      Width = 105
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'root'
    end
    object EditPass: TEdit
      Left = 116
      Top = 55
      Width = 140
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PasswordChar = #9679
      TabOrder = 2
      Text = '22031994'
    end
  end
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 124
    Height = 89
    BevelKind = bkFlat
    BevelOuter = bvNone
    Caption = 'z'
    ShowCaption = False
    TabOrder = 1
    object Label3: TLabel
      Left = 5
      Top = 36
      Width = 25
      Height = 13
      Caption = #1055#1086#1088#1090
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 120
      Height = 30
      Align = alTop
      Alignment = taLeftJustify
      BevelEdges = [beBottom]
      BevelOuter = bvNone
      Caption = ' '#1057#1077#1090#1100
      Color = 182403
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      object Image1: TImage
        Left = 103
        Top = 0
        Width = 17
        Height = 30
        Align = alRight
        Center = True
        ExplicitLeft = 158
        ExplicitTop = 2
        ExplicitHeight = 28
      end
    end
    object EditPort: TEdit
      Left = 5
      Top = 55
      Width = 110
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
      Text = '27117'
    end
  end
  object Panel3: TPanel
    Left = 8
    Top = 103
    Width = 393
    Height = 89
    BevelKind = bkFlat
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 2
    object Label4: TLabel
      Left = 5
      Top = 36
      Width = 111
      Height = 13
      Caption = #1055#1091#1090#1100' '#1082' '#1087#1072#1087#1082#1077' '#1089#1077#1088#1074#1077#1088#1072
    end
    object SpeedButtonOpenDir: TsSpeedButton
      Left = 360
      Top = 54
      Width = 23
      Height = 22
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000120000
        002C0046699C005C8BBF005C8BBF005C8BBF005C8BBF005C8BBF005C8BBF005C
        8BBF005C8BBF005C8BBF005C8BBF0046699C0000002C000000120000000A0000
        0014006395B486CFF0FF81CBEDFF81CBEDFF81CBEDFF81CBEDFF81CBEDFF81CB
        EDFF81CBEDFF81CBEDFF86CFF0FF006395B4000000160000000A000000000052
        7B00006CA3A884CEEEFF7CC7E8FF7CC7E8FF7CC7E8FF7CC7E8FF7CC7E8FF7CC7
        E8FF7CC7E8FF7CC7E8FF84CEEEFF006CA3A800527B0000000000005681000072
        AB000072ABA087D0EFFF7FCAE9FF7FCAE9FF7FCAE9FF7FCAE9FF7FCAE9FF7FCA
        E9FF7FCAE9FF7FCAE9FF87D0EFFF0072ABA00072AB00005681000074AE000074
        AE000074AE9D8AD3F0FF82CDEBFF82CDEBFF82CDEBFF82CDEBFF82CDEBFF82CD
        EBFF82CDEBFF4F95B6FF3E82A4FF006EA5A600699E00006CA1000076B1000076
        B1000076B19A8ED6F2FF87D0EDFF87D0EDFF87D0EDFF87D0EDFF87D0EDFF87D0
        EDFF87D0EDFF4488AAFFA1E5FFFF005E8EBC005F8F5400639500007AB700007A
        B7000079B59796DDF6FF8BD4F0FF8BD4F0FF8BD4F0FF83CBE7FF75BDDAFF64AA
        CAFF5498BAFF4B8FB1FF8CD0ECFFA1E5FFFF006395B400649651007BB900007B
        B934007BB89478BDDCFF9AE0F7FF90D8F2FF90D8F2FF93DAF4FF96DDF7FF9BE0
        FAFF9FE4FEFFA1E5FFFFA1E5FFFFA1E5FFFFA1E5FFFF00699EAD007DBB00007D
        BB91E9E9DBFF7CC0DEFF7CC0DEFF9BE1F7FF94DBF4FF8DD3EDFF81C7E2FF71B7
        D5FF63A7C8FF5B9FC1FF8FD3EFFFA1E5FFFF006FA6A4006EA54B007FBE00007F
        BE8EF0F0E6FF9EE5F9FF72B6D8FF9EE5F9FF98DFF6FF98DFF6FF98DFF6FF98DF
        F6FF98DFF6FF63A7C9FFA1E5FFFF0075AF9C0074AE47006FA6000081C1000081
        C18BF8F8F3FFA3E8FBFF75B9DBFFA3E8FBFF9DE3F9FF9DE3F9FF9DE3F9FF9DE3
        F9FF9DE3F9FF78BDDCFF6CB0D2FF007FBF8E007BB9000078B4000083C4000083
        C489FEFEFDFFA6EBFCFF77BBDDFFA6EBFCFFA1E6FBFFA1E6FBFFA1E6FBFFA1E6
        FBFFA1E6FBFFA1E6FBFFA6EBFCFF0083C4890083C4000083C4000084C6000084
        C686F4B62EFFA9EEFDFF7ABEE0FFA9EEFDFFA4E9FCFFA4E9FCFFA4E9FCFFA4E9
        FCFFA4E9FCFFA4E9FCFFA9EEFDFF0084C6860084C6000084C6000086C9000086
        C984FEC941FFACF1FFFF7CC0E2FFACF1FFFFA7ECFEFFA7ECFEFFA7ECFEFFA7EC
        FEFFA7ECFEFFA7ECFEFFACF1FFFF0086C9840086C9000086C9000086CA000087
        CA2E0087CA82B1F5FFFF7EC2E4FFB1F5FFFFAEF2FFFFAEF2FFFFAEF2FFFFAEF2
        FFFFAEF2FFFFAEF2FFFFB1F5FFFF0087CA820087CA000087CA000086CA000087
        CA000088CC610088CC810088CC810088CC810088CC810088CC810088CC810088
        CC810088CC810088CC810088CC810088CC610088CB000088CB00}
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 389
      Height = 30
      Align = alTop
      Alignment = taLeftJustify
      BevelEdges = [beBottom]
      BevelOuter = bvNone
      Caption = ' '#1057#1077#1088#1074#1077#1088' Unturned'
      Color = 182403
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 387
      object Image2: TImage
        Left = 372
        Top = 0
        Width = 17
        Height = 30
        Align = alRight
        Center = True
        ExplicitLeft = 158
        ExplicitTop = 2
        ExplicitHeight = 28
      end
    end
    object EditPath: TEdit
      Left = 5
      Top = 55
      Width = 356
      Height = 21
      BevelKind = bkSoft
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 
        'H:\Games\SteamLibrary\steamapps\common\Unturned\Servers\Russia_H' +
        'GM'
    end
  end
  object Panel6: TPanel
    Left = 8
    Top = 198
    Width = 393
    Height = 101
    BevelKind = bkFlat
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 3
    object LabelConnected: TLabel
      Left = 86
      Top = 36
      Width = 299
      Height = 13
      AutoSize = False
    end
    object Panel7: TPanel
      Left = 0
      Top = 0
      Width = 389
      Height = 30
      Align = alTop
      Alignment = taLeftJustify
      BevelEdges = [beBottom]
      BevelOuter = bvNone
      Caption = ' '#1057#1086#1089#1090#1086#1103#1085#1080#1077
      Color = 13025284
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 387
      object Image3: TImage
        Left = 372
        Top = 0
        Width = 17
        Height = 30
        Align = alRight
        Center = True
        ExplicitLeft = 158
        ExplicitTop = 2
        ExplicitHeight = 28
      end
    end
    object ButtonStart: TButton
      Left = 5
      Top = 36
      Width = 75
      Height = 25
      Caption = #1047#1072#1087#1091#1089#1082
      TabOrder = 1
      OnClick = ButtonStartClick
    end
    object Button2: TButton
      Left = 5
      Top = 67
      Width = 75
      Height = 25
      Caption = #1054#1089#1090#1072#1085#1086#1074#1082#1072
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object ListBoxLog: TListBox
    Left = 8
    Top = 305
    Width = 393
    Height = 112
    ItemHeight = 13
    TabOrder = 4
  end
  object ServerSocket: TServerSocket
    Active = False
    Port = 0
    ServerType = stNonBlocking
    OnListen = ServerSocketListen
    OnAccept = ServerSocketAccept
    OnGetThread = ServerSocketGetThread
    OnGetSocket = ServerSocketGetSocket
    OnThreadStart = ServerSocketThreadStart
    OnThreadEnd = ServerSocketThreadEnd
    OnClientConnect = ServerSocketClientConnect
    OnClientDisconnect = ServerSocketClientDisconnect
    OnClientRead = ServerSocketClientRead
    OnClientWrite = ServerSocketClientWrite
    OnClientError = ServerSocketClientError
    Left = 176
    Top = 320
  end
end
