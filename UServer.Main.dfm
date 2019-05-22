object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1089#1077#1088#1074#1077#1088#1086#1084' Unturned'
  ClientHeight = 785
  ClientWidth = 1233
  Color = 2171169
  Constraints.MinHeight = 467
  Constraints.MinWidth = 683
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clSilver
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  ShowHint = True
  StyleElements = [seClient, seBorder]
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelClient: TPanel
    AlignWithMargins = True
    Left = 38
    Top = 0
    Width = 1195
    Height = 785
    Margins.Left = 38
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object SplitterMainLog: TSplitter
      Left = 0
      Top = 635
      Width = 1195
      Height = 2
      Cursor = crVSplit
      Align = alBottom
      AutoSnap = False
      Color = 4539717
      ParentColor = False
      ResizeStyle = rsUpdate
      ExplicitTop = 628
      ExplicitWidth = 1107
    end
    object PanelPlayers: TPanel
      Left = 932
      Top = 0
      Width = 263
      Height = 635
      Align = alRight
      BevelEdges = [beLeft]
      BevelOuter = bvNone
      TabOrder = 0
      object PanelPlayerInfo: TPanel
        AlignWithMargins = True
        Left = 7
        Top = 7
        Width = 249
        Height = 190
        Margins.Left = 7
        Margins.Top = 7
        Margins.Right = 7
        Margins.Bottom = 0
        Align = alTop
        BevelOuter = bvNone
        Color = 3355443
        ParentBackground = False
        ShowCaption = False
        TabOrder = 0
        DesignSize = (
          249
          190)
        object SpeedButtonPlayerCtrl: TsSpeedButton
          Left = 226
          Top = 49
          Width = 23
          Height = 22
          Anchors = [akTop, akRight]
          Flat = True
          OnClick = SpeedButtonPlayerCtrlClick
          Images = ImageList16
          ImageIndex = 5
          ExplicitLeft = 228
        end
        object EditPlayerSteamID: TEdit
          Left = 6
          Top = 50
          Width = 218
          Height = 21
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          TextHint = 'SteamID'
          OnChange = EditPlayerSteamIDChange
        end
        object EditPlayerSteamNick: TEdit
          Left = 6
          Top = 26
          Width = 218
          Height = 21
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          TabOrder = 1
          TextHint = #1053#1080#1082' '#1074' Steam'
        end
        object EditPlayerNick: TEdit
          Left = 6
          Top = 2
          Width = 218
          Height = 21
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          TabOrder = 2
          TextHint = #1053#1080#1082' '#1074' '#1080#1075#1088#1077
        end
        object PanelPlayerCtrl: TPanel
          Left = 0
          Top = 73
          Width = 249
          Height = 119
          Align = alCustom
          Anchors = [akLeft, akTop, akRight, akBottom]
          BevelOuter = bvNone
          Color = 3355443
          ParentBackground = False
          TabOrder = 3
          object EditPlayerIP: TEdit
            Left = 6
            Top = 1
            Width = 218
            Height = 21
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            TextHint = 'IP-'#1072#1076#1077#1088#1089
          end
          object EditPlayerReg: TEdit
            Left = 6
            Top = 25
            Width = 218
            Height = 21
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 1
            TextHint = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
          end
          object EditPlayerPlayTime: TEdit
            Left = 6
            Top = 49
            Width = 218
            Height = 21
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 2
            TextHint = #1042#1088#1077#1084#1103' '#1080#1075#1088#1099
            OnChange = EditPlayerSteamIDChange
          end
          object EditPlayerGeo: TEdit
            Left = 6
            Top = 72
            Width = 218
            Height = 20
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 3
            TextHint = #1052#1077#1089#1090#1086#1085#1072#1093#1086#1078#1076#1077#1085#1080#1077
            OnChange = EditPlayerSteamIDChange
          end
          object Panel25: TPanel
            Left = 0
            Top = 94
            Width = 249
            Height = 25
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 4
            object SpeedButtonPCBan: TsSpeedButton
              Left = 0
              Top = 0
              Width = 23
              Height = 25
              Hint = #1047#1072#1073#1072#1085#1080#1090#1100' '#1080#1075#1088#1086#1082#1072' ('#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086' '#1091#1082#1072#1079#1072#1090#1100' '#1074#1088#1077#1084#1103' '#1080' '#1087#1088#1080#1095#1080#1085#1091')'
              Align = alLeft
              Flat = True
              OnClick = SpeedButtonExeBanClick
              Images = ImageList16
              TextAlignment = taLeftJustify
              ImageIndex = 6
              ExplicitLeft = 28
              ExplicitTop = 3
              ExplicitHeight = 22
            end
            object SpeedButtonPCKick: TsSpeedButton
              Left = 23
              Top = 0
              Width = 23
              Height = 25
              Hint = #1050#1080#1082#1085#1091#1090#1100' '#1080#1075#1088#1086#1082#1072' '#1089' '#1089#1077#1088#1074#1077#1088#1072
              Align = alLeft
              Flat = True
              OnClick = SpeedButtonPCKickClick
              Images = ImageList16
              TextAlignment = taLeftJustify
              ImageIndex = 7
              ExplicitLeft = 51
              ExplicitTop = 3
              ExplicitHeight = 22
            end
            object SpeedButtonPCKill: TsSpeedButton
              Left = 46
              Top = 0
              Width = 23
              Height = 25
              Hint = #1059#1073#1080#1090#1100' '#1087#1077#1089#1088#1086#1085#1072#1078#1072' '#1080#1075#1088#1086#1082#1072
              Align = alLeft
              Flat = True
              OnClick = SpeedButtonPCKillClick
              Images = ImageList16
              TextAlignment = taLeftJustify
              ImageIndex = 16
              ExplicitLeft = 74
              ExplicitTop = 3
              ExplicitHeight = 22
            end
            object SpeedButtonCurSteamInfo: TsSpeedButton
              Left = 226
              Top = 0
              Width = 23
              Height = 25
              Hint = #1048#1085#1092#1086#1088#1072#1094#1080#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' Steam'
              Align = alRight
              Flat = True
              OnClick = ActionSteamInfoExecute
              Images = ImageList16
              TextAlignment = taLeftJustify
              ImageIndex = 17
              ExplicitLeft = 13
              ExplicitTop = 3
              ExplicitHeight = 22
            end
            object SpeedButtonTPTarget: TsSpeedButton
              Left = 96
              Top = 0
              Width = 23
              Height = 25
              Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1082#1072#1082' '#1094#1077#1083#1100' '#1076#1083#1103' '#1058#1055
              Align = alLeft
              Flat = True
              OnClick = SpeedButtonTPTargetClick
              Images = ImageList16
              TextAlignment = taLeftJustify
              ImageIndex = 29
              ExplicitLeft = 126
              ExplicitTop = -8
            end
            object SpeedButtonPCPerm: TsSpeedButton
              Left = 203
              Top = 0
              Width = 23
              Height = 25
              Hint = #1055#1088#1080#1074#1077#1083#1077#1075#1080#1080
              Align = alRight
              Flat = True
              OnClick = ButtonGetPlayerPClick
              Images = ImageList16
              TextAlignment = taLeftJustify
              ImageIndex = 30
              ExplicitLeft = 120
              ExplicitTop = 3
              ExplicitHeight = 22
            end
            object SpeedButtonPCMute: TsSpeedButton
              Left = 69
              Top = 0
              Width = 23
              Height = 25
              Hint = #1047#1072#1087#1088#1077#1090#1080#1090#1100' '#1095#1072#1090
              Align = alLeft
              Flat = True
              OnClick = SpeedButtonPCMuteClick
              Images = ImageList16
              TextAlignment = taLeftJustify
              ImageIndex = 34
              ExplicitLeft = 143
              ExplicitTop = 3
              ExplicitHeight = 22
            end
            object Shape9: TShape
              AlignWithMargins = True
              Left = 93
              Top = 5
              Width = 2
              Height = 15
              Margins.Left = 1
              Margins.Top = 5
              Margins.Right = 1
              Margins.Bottom = 5
              Align = alLeft
              Brush.Color = 4539717
              Pen.Color = 4539717
              ExplicitLeft = 118
              ExplicitTop = 3
              ExplicitHeight = 19
            end
            object SpeedButtonPInfo: TsSpeedButton
              Left = 180
              Top = 0
              Width = 23
              Height = 25
              Hint = #1042#1089#1077' '#1076#1072#1085#1085#1099#1077
              Align = alRight
              Flat = True
              OnClick = SpeedButtonPInfoClick
              Images = ImageList16
              TextAlignment = taLeftJustify
              ImageIndex = 20
              ExplicitLeft = 120
              ExplicitTop = 3
              ExplicitHeight = 22
            end
          end
        end
      end
      object PanelFastChat: TPanel
        AlignWithMargins = True
        Left = 7
        Top = 430
        Width = 249
        Height = 200
        Margins.Left = 7
        Margins.Top = 0
        Margins.Right = 7
        Margins.Bottom = 5
        Align = alBottom
        BevelOuter = bvNone
        Locked = True
        ShowCaption = False
        TabOrder = 1
        object PanelFastChatSend: TPanel
          Left = 0
          Top = 170
          Width = 249
          Height = 30
          Align = alBottom
          BevelOuter = bvNone
          Color = 4539717
          ParentBackground = False
          TabOrder = 0
          object SpeedButtonFastChatSend: TsSpeedButton
            AlignWithMargins = True
            Left = 221
            Top = 0
            Width = 25
            Height = 30
            Margins.Left = 0
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alRight
            Flat = True
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000006666
              66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000006F6F6F178787877BA3A3
              A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
              8C7A555555060000000000000000000000000000000000000000000000000000
              0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
              C2FE969696AA7171711200000000000000000000000000000000000000000000
              00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
              0000000000008A8A8A7AC2C2C2FECBCBCBFFB6B6B6FFB0B0B0FFB0B0B0FFB0B0
              B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB5B5
              B5FFCACACAFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
              00006F6F6F17ADADADEECACACAFFBBBBBBFF656565FF636363FF636363FF6363
              63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6565
              65FFB6B6B6FFCACACAFFADADADEE6F6F6F170000000000000000000000000000
              00008787877BC9C9C9FECBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
              63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6363
              63FFAEAEAEFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
              6605A3A3A3C7CACACAFFCBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
              63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6363
              63FFAEAEAEFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
              6D15AFAFAFE9CBCBCBFFCBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
              63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6363
              63FFAEAEAEFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
              721DB5B5B5FACBCBCBFFCBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
              63FF6E6E6EFFA5A5A5FFA7A7A7FF707070FF636363FF636363FF636363FF6363
              63FFAEAEAEFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
              721DB5B5B5FACBCBCBFFCBCBCBFFB3B3B3FF636363FF636363FF656565FF9090
              90FFC1C1C1FF9F9F9FFF9C9C9CFFC1C1C1FF929292FF666666FF636363FF6363
              63FFAEAEAEFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
              6D15AFAFAFE9CBCBCBFFCBCBCBFFB3B3B3FF636363FF797979FFB2B2B2FFB3B3
              B3FF7B7B7BFF636363FF636363FF797979FFB1B1B1FFB4B4B4FF7C7C7CFF6363
              63FFAEAEAEFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
              6605A3A3A3C7CACACAFFCBCBCBFFB3B3B3FF696969FFBBBBBBFF929292FF6565
              65FF636363FF636363FF636363FF636363FF646464FF8F8F8FFFBCBCBCFF6C6C
              6CFFAEAEAEFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
              00008787877BC9C9C9FECBCBCBFFB6B6B6FF656565FF6C6C6CFF636363FF6363
              63FF636363FF636363FF636363FF636363FF636363FF636363FF6B6B6BFF6666
              66FFB1B1B1FFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
              000074747416ABABABEECACACAFFC9C9C9FF9F9F9FFF979797FF979797FF9797
              97FF979797FF979797FF979797FF979797FF979797FF979797FF979797FF9D9D
              9DFFC9C9C9FFCACACAFFABABABEE6F6F6F170000000000000000000000000000
              0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
              00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
              0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
              C2FE969696AA7171711200000000000000000000000000000000000000000000
              0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
              CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
              8A7A555555060000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000747474168787877BA3A3
              A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000006666
              66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            OnClick = SpeedButtonFastChatSendClick
            ExplicitLeft = 225
          end
          object SpeedButtonFastChatDown: TsSpeedButton
            Left = 196
            Top = 0
            Width = 25
            Height = 30
            Margins.Left = 0
            Margins.Top = 0
            Margins.Bottom = 0
            Align = alRight
            Flat = True
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000006666
              66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000006F6F6F178787877BA3A3
              A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
              8C7A555555060000000000000000000000000000000000000000000000000000
              0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
              C2FE969696AA7171711200000000000000000000000000000000000000000000
              00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
              0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
              00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
              00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
              6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCACACAFFA4A4A4FFA1A1A1FFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
              6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
              CAFFA3A3A3FF686868FF686868FF9F9F9FFFCACACAFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
              721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA4A4
              A4FF686868FF9D9D9DFFA2A2A2FF686868FFA0A0A0FFCACACAFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
              721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA7A7A7FF6666
              66FFA0A0A0FFCBCBCBFFCBCBCBFFA4A4A4FF666666FFA2A2A2FFCACACAFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
              6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFB7B7B7FFA4A4
              A4FFCACACAFFCBCBCBFFCBCBCBFFCACACAFFA6A6A6FFB3B3B3FFCACACAFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
              6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
              00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
              000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
              0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
              00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
              CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
              0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
              CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
              C2FE969696AA7171711200000000000000000000000000000000000000000000
              0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
              CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
              8A7A555555060000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000747474168787877BA3A3
              A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000006666
              66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            OnClick = SpeedButtonFastChatDownClick
            ExplicitLeft = 197
          end
          object ShapeFastChatColor: TLabelEx
            AlignWithMargins = True
            Left = 172
            Top = 0
            Width = 22
            Height = 30
            Cursor = crHandPoint
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 2
            Margins.Bottom = 0
            Align = alRight
            Brush.Color = clSilver
            Pen.Color = 7566195
            Shape = stCircle
            OnMouseUp = ShapeMiniChatColorMouseUp
            Caption = ''
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
            IgnorBounds = True
            EllipseRectVertical = False
            ExplicitLeft = 169
            ExplicitTop = 3
          end
          object EditSendChatFast: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 6
            Width = 168
            Height = 23
            Margins.Top = 6
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alClient
            BevelEdges = [beLeft, beRight, beBottom]
            BevelInner = bvNone
            BevelOuter = bvRaised
            BorderStyle = bsNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            TextHint = #1053#1072#1087#1080#1096#1080#1090#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1077'...'
            OnKeyDown = EditSendChatFastKeyDown
            OnKeyPress = EditSendChatFastKeyPress
          end
        end
        object TableExFastChat: TTableEx
          Left = 0
          Top = 0
          Width = 249
          Height = 170
          Align = alClient
          BevelInner = bvNone
          BorderStyle = bsNone
          Color = 3355443
          DefaultRowHeight = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnMouseUp = TableExMiniChatMouseUp
          OnDrawCellData = TableExFastChatDrawCellData
          ItemIndex = -1
          OnItemClick = TableExMiniChatItemClick
          GetData = TableExFastChatGetData
          OnEdit = TableExFastChatEdit
          Columns = <>
          ShowScrollBar = False
          CanNoSelect = False
          ItemCount = 2
          LineColor = 3355443
          LineColorXor = 3355443
          LineHotColor = 6052956
          LineSelColor = 6710886
          FontHotLine.Charset = DEFAULT_CHARSET
          FontHotLine.Color = clSilver
          FontHotLine.Height = -11
          FontHotLine.Name = 'Tahoma'
          FontHotLine.Style = []
          FontLine.Charset = DEFAULT_CHARSET
          FontLine.Color = clSilver
          FontLine.Height = -11
          FontLine.Name = 'Tahoma'
          FontLine.Style = []
          FontSelLine.Charset = DEFAULT_CHARSET
          FontSelLine.Color = clSilver
          FontSelLine.Height = -11
          FontSelLine.Name = 'Tahoma'
          FontSelLine.Style = []
          ShowColumns = False
          ColumnsFont.Charset = DEFAULT_CHARSET
          ColumnsFont.Color = 2631720
          ColumnsFont.Height = -11
          ColumnsFont.Name = 'Tahoma'
          ColumnsFont.Style = []
          LastColumnAutoSize = False
        end
      end
      object PanelOnline: TPanel
        AlignWithMargins = True
        Left = 7
        Top = 206
        Width = 249
        Height = 215
        Margins.Left = 7
        Margins.Top = 9
        Margins.Right = 7
        Margins.Bottom = 9
        Align = alClient
        BevelOuter = bvNone
        Locked = True
        ShowCaption = False
        TabOrder = 2
        object ListBoxExPlayers: TTableEx
          Left = 0
          Top = 0
          Width = 249
          Height = 190
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 1
          Margins.Bottom = 0
          Align = alClient
          BorderStyle = bsNone
          Color = 3355443
          DefaultRowHeight = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnStartDrag = ListBoxExPlayersStartDrag
          OnMouseDown = ListBoxExPlayersMouseDown
          OnDrawCellData = ListBoxExPlayersDrawCellData
          ItemIndex = -1
          OnItemClick = ListBoxExPlayersItemClick
          Columns = <>
          DefaultDataDrawing = False
          ShowScrollBar = False
          CanNoSelect = False
          ItemCount = 4
          LineColor = 3355443
          LineColorXor = 3355443
          LineHotColor = 6052956
          LineSelColor = 6710886
          ColumnsColor = 6052956
          FontHotLine.Charset = DEFAULT_CHARSET
          FontHotLine.Color = 2631720
          FontHotLine.Height = -11
          FontHotLine.Name = 'Tahoma'
          FontHotLine.Style = []
          FontLine.Charset = DEFAULT_CHARSET
          FontLine.Color = 2631720
          FontLine.Height = -11
          FontLine.Name = 'Tahoma'
          FontLine.Style = []
          FontSelLine.Charset = DEFAULT_CHARSET
          FontSelLine.Color = clWhite
          FontSelLine.Height = -11
          FontSelLine.Name = 'Tahoma'
          FontSelLine.Style = []
          ShowColumns = False
          ColumnsFont.Charset = DEFAULT_CHARSET
          ColumnsFont.Color = clSilver
          ColumnsFont.Height = -11
          ColumnsFont.Name = 'Tahoma'
          ColumnsFont.Style = [fsBold]
          LastColumnAutoSize = False
        end
        object PanelPlayersInfo: TPanel
          Left = 0
          Top = 190
          Width = 249
          Height = 25
          Align = alBottom
          BevelEdges = [beLeft, beRight, beBottom]
          BevelOuter = bvNone
          Color = 4539717
          ParentBackground = False
          TabOrder = 1
          object LabelPlayers: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 103
            Height = 19
            Align = alLeft
            Caption = #1050#1086#1083'-'#1074#1086' '#1080#1075#1088#1086#1082#1086#1074':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 14
          end
          object SpeedButtonPlayersUpdate: TsSpeedButton
            Left = 226
            Top = 0
            Width = 23
            Height = 25
            Action = ActionPlayersUpdate
            Align = alRight
            Flat = True
            Images = ImageList16
            ImageIndex = 0
            ShowCaption = False
            ExplicitLeft = 186
            ExplicitTop = 3
            ExplicitHeight = 30
          end
        end
      end
    end
    object PanelBottom: TPanel
      Left = 0
      Top = 637
      Width = 1195
      Height = 148
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alBottom
      BevelEdges = [beTop]
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 1
      object Splitter1: TSplitter
        Left = 717
        Top = 0
        Width = 2
        Height = 118
        Align = alRight
        Color = 4539717
        ParentColor = False
        ResizeStyle = rsUpdate
        ExplicitLeft = 691
        ExplicitTop = 6
      end
      object PanelCommandExe: TPanel
        Left = 0
        Top = 118
        Width = 1195
        Height = 30
        Align = alBottom
        BevelOuter = bvNone
        Color = 4539717
        ParentBackground = False
        TabOrder = 0
        object SpeedButtonCommandExe: TsSpeedButton
          AlignWithMargins = True
          Left = 3
          Top = 0
          Width = 27
          Height = 30
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          Flat = True
          Glyph.Data = {
            36090000424D3609000000000000360000002800000018000000180000000100
            2000000000000009000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000006666
            66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000006F6F6F178787877BA3A3
            A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
            CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
            8C7A555555060000000000000000000000000000000000000000000000000000
            0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
            CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
            C2FE969696AA7171711200000000000000000000000000000000000000000000
            00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
            CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
            CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
            0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
            CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
            CBFFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
            00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC6C6
            C6FFCACACAFFCBCBCBFFCBCBCBFFCACACAFFC6C6C6FFCACACAFFCBCBCBFFCBCB
            CBFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
            00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCACACAFFB8B8B8FF7575
            75FFB8B8B8FFCBCBCBFFCBCBCBFFBBBBBBFF767676FFB5B5B5FFCACACAFFCBCB
            CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
            6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFB5B5B5FF6C6C6CFF8B8B
            8BFFC8C8C8FFCBCBCBFFCBCBCBFFC8C8C8FF909090FF6A6A6AFFB1B1B1FFCBCB
            CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
            6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFB5B5B5FF6E6E6EFF898989FFC8C8
            C8FFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC8C8C8FF8E8E8EFF6D6D6DFFB1B1
            B1FFCACACAFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
            721DB5B5B5FACBCBCBFFCBCBCBFFC6C6C6FF6D6D6DFF7A7A7AFFC7C7C7FFCBCB
            CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC8C8C8FF7F7F7FFF6B6B
            6BFFC3C3C3FFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
            721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFA4A4A4FF686868FF9D9D9DFFCACA
            CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFA2A2A2FF686868FFA0A0
            A0FFCACACAFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
            6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA3A3A3FF686868FF9F9F
            9FFFCACACAFFCBCBCBFFCBCBCBFFCACACAFFA4A4A4FF686868FF9F9F9FFFCACA
            CAFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
            6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA4A4A4FF6868
            68FFB6B6B6FFCBCBCBFFCBCBCBFFBABABAFF696969FFA0A0A0FFCACACAFFCBCB
            CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
            00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFBCBC
            BCFFCACACAFFCBCBCBFFCBCBCBFFCACACAFFBCBCBCFFCACACAFFCBCBCBFFCBCB
            CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
            000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
            CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
            CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
            0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
            CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
            CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
            00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
            CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
            CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
            0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
            CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
            C2FE969696AA7171711200000000000000000000000000000000000000000000
            0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
            CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
            8A7A555555060000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000747474168787877BA3A3
            A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000006666
            66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OnClick = SpeedButtonCommandExeClick
          ExplicitLeft = 816
          ExplicitTop = 1
          ExplicitHeight = 23
        end
        object LabelLastAction: TLabel
          AlignWithMargins = True
          Left = 524
          Top = 3
          Width = 668
          Height = 24
          Margins.Left = 10
          Align = alRight
          AutoSize = False
          Caption = #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1076#1077#1081#1089#1090#1074#1080#1077
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitLeft = 527
          ExplicitTop = 0
          ExplicitHeight = 30
        end
        object EditCommandSend: TEdit
          AlignWithMargins = True
          Left = 38
          Top = 6
          Width = 475
          Height = 23
          Margins.Left = 5
          Margins.Top = 6
          Margins.Right = 1
          Margins.Bottom = 1
          Align = alClient
          BevelEdges = [beLeft, beRight, beBottom]
          BevelInner = bvNone
          BevelOuter = bvRaised
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          TextHint = #1053#1072#1087#1080#1096#1080#1090#1077' '#1082#1086#1084#1072#1085#1076#1091'...'
          OnKeyDown = EditCommandSendKeyDown
          OnKeyPress = EditCommandSendKeyPress
        end
      end
      object TableExLogGamePlay: TTableEx
        Left = 719
        Top = 0
        Width = 476
        Height = 118
        Align = alRight
        BevelInner = bvNone
        BorderStyle = bsNone
        Color = 3355443
        DefaultRowHeight = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clSilver
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ItemIndex = -1
        GetData = TableExLogGamePlayGetData
        Columns = <>
        ShowScrollBar = False
        CanNoSelect = False
        ItemCount = 2
        LineColor = 3355443
        LineColorXor = 3355443
        LineHotColor = 6052956
        LineSelColor = 6710886
        FontHotLine.Charset = DEFAULT_CHARSET
        FontHotLine.Color = clSilver
        FontHotLine.Height = -11
        FontHotLine.Name = 'Tahoma'
        FontHotLine.Style = []
        FontLine.Charset = DEFAULT_CHARSET
        FontLine.Color = clSilver
        FontLine.Height = -11
        FontLine.Name = 'Tahoma'
        FontLine.Style = []
        FontSelLine.Charset = DEFAULT_CHARSET
        FontSelLine.Color = clSilver
        FontSelLine.Height = -11
        FontSelLine.Name = 'Tahoma'
        FontSelLine.Style = []
        ShowColumns = False
        ColumnsFont.Charset = DEFAULT_CHARSET
        ColumnsFont.Color = 2631720
        ColumnsFont.Height = -11
        ColumnsFont.Name = 'Tahoma'
        ColumnsFont.Style = []
        LastColumnAutoSize = False
      end
      object Panel26: TPanel
        Left = 0
        Top = 0
        Width = 717
        Height = 118
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object Splitter2: TSplitter
          Left = 337
          Top = 0
          Width = 2
          Height = 118
          Align = alRight
          Color = 4539717
          ParentColor = False
          ResizeStyle = rsUpdate
          ExplicitLeft = 295
          ExplicitTop = -3
        end
        object TableExLogCommands: TTableEx
          Left = 0
          Top = 0
          Width = 337
          Height = 118
          Align = alClient
          BevelInner = bvNone
          BorderStyle = bsNone
          Color = 3355443
          DefaultRowHeight = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          ItemIndex = -1
          GetData = TableExLogCommandsGetData
          Columns = <>
          ShowScrollBar = False
          CanNoSelect = False
          ItemCount = 2
          LineColor = 3355443
          LineColorXor = 3355443
          LineHotColor = 6052956
          LineSelColor = 6710886
          FontHotLine.Charset = DEFAULT_CHARSET
          FontHotLine.Color = clSilver
          FontHotLine.Height = -11
          FontHotLine.Name = 'Tahoma'
          FontHotLine.Style = []
          FontLine.Charset = DEFAULT_CHARSET
          FontLine.Color = clSilver
          FontLine.Height = -11
          FontLine.Name = 'Tahoma'
          FontLine.Style = []
          FontSelLine.Charset = DEFAULT_CHARSET
          FontSelLine.Color = clSilver
          FontSelLine.Height = -11
          FontSelLine.Name = 'Tahoma'
          FontSelLine.Style = []
          ShowColumns = False
          ColumnsFont.Charset = DEFAULT_CHARSET
          ColumnsFont.Color = 2631720
          ColumnsFont.Height = -11
          ColumnsFont.Name = 'Tahoma'
          ColumnsFont.Style = []
          LastColumnAutoSize = False
        end
        object TableExLogSystemFace: TTableEx
          Left = 339
          Top = 0
          Width = 378
          Height = 118
          Align = alRight
          BevelInner = bvNone
          BorderStyle = bsNone
          Color = 3355443
          DefaultRowHeight = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clSilver
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ItemIndex = -1
          GetData = TableExLogSystemGetData
          OnEdit = TableExLogSystemFaceEdit
          Columns = <>
          ShowScrollBar = False
          CanNoSelect = False
          ItemCount = 2
          LineColor = 3355443
          LineColorXor = 3355443
          LineHotColor = 6052956
          LineSelColor = 6710886
          FontHotLine.Charset = DEFAULT_CHARSET
          FontHotLine.Color = clSilver
          FontHotLine.Height = -11
          FontHotLine.Name = 'Tahoma'
          FontHotLine.Style = []
          FontLine.Charset = DEFAULT_CHARSET
          FontLine.Color = clSilver
          FontLine.Height = -11
          FontLine.Name = 'Tahoma'
          FontLine.Style = []
          FontSelLine.Charset = DEFAULT_CHARSET
          FontSelLine.Color = clSilver
          FontSelLine.Height = -11
          FontSelLine.Name = 'Tahoma'
          FontSelLine.Style = []
          ShowColumns = False
          ColumnsFont.Charset = DEFAULT_CHARSET
          ColumnsFont.Color = 2631720
          ColumnsFont.Height = -11
          ColumnsFont.Name = 'Tahoma'
          ColumnsFont.Style = []
          LastColumnAutoSize = False
        end
      end
    end
    object PanelPages: TPanel
      Left = 0
      Top = 0
      Width = 932
      Height = 635
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      DesignSize = (
        932
        635)
      object PageControl: TPageControl
        Left = -2
        Top = -6
        Width = 938
        Height = 645
        Margins.Left = 40
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ActivePage = TabSheetMain
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        object TabSheetMain: TTabSheet
          Caption = #1043#1083#1072#1074#1085#1072#1103
          TabVisible = False
          object ScrollBoxMonitor: TScrollBox
            Left = 0
            Top = 0
            Width = 930
            Height = 635
            HorzScrollBar.Smooth = True
            HorzScrollBar.Tracking = True
            VertScrollBar.Smooth = True
            VertScrollBar.Tracking = True
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 2171169
            Ctl3D = False
            ParentColor = False
            ParentCtl3D = False
            TabOrder = 0
            object PanelServerInfo: TPanelCollapsed
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 398
              Height = 178
              Caption = '  '#1057#1074#1086#1076#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
              DefaultPaint = False
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = 3355443
              Constraints.MaxHeight = 178
              Constraints.MaxWidth = 398
              Constraints.MinHeight = 178
              Constraints.MinWidth = 398
              Locked = True
              ParentBackground = False
              ShowCaption = True
              TabOrder = 3
              ShowCollapseButton = False
              Collapsed = False
              SimpleBorderColor = clSilver
              CaptionColor = clGray
              FontCaption.Charset = DEFAULT_CHARSET
              FontCaption.Color = clWhite
              FontCaption.Height = -13
              FontCaption.Name = 'Tahoma'
              FontCaption.Style = [fsBold]
              ShowSimpleBorder = True
              CaptionHeight = 30
              object Label3: TLabel
                Left = 8
                Top = 40
                Width = 106
                Height = 13
                Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1077#1088#1074#1077#1088#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 5723991
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object Label4: TLabel
                Left = 8
                Top = 62
                Width = 58
                Height = 13
                Caption = 'PV-'#1088#1077#1078#1080#1084
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 5723991
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object Label5: TLabel
                Left = 8
                Top = 84
                Width = 35
                Height = 13
                Caption = #1050#1072#1088#1090#1072
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 5723991
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object Label6: TLabel
                Left = 8
                Top = 106
                Width = 66
                Height = 13
                Caption = #1057#1083#1086#1078#1085#1086#1089#1090#1100
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 5723991
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object Label7: TLabel
                Left = 8
                Top = 129
                Width = 29
                Height = 13
                Caption = #1055#1086#1088#1090
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 5723991
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object Label8: TLabel
                Left = 8
                Top = 153
                Width = 83
                Height = 13
                Caption = #1052#1072#1082#1089'. '#1080#1075#1088#1086#1082#1086#1074
                Font.Charset = DEFAULT_CHARSET
                Font.Color = 5723991
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object EditSCMaxPlayers: TEdit
                Left = 117
                Top = 149
                Width = 137
                Height = 24
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                ReadOnly = True
                TabOrder = 7
              end
              object EditSCName: TEdit
                Left = 117
                Top = 40
                Width = 277
                Height = 24
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                ReadOnly = True
                TabOrder = 0
              end
              object EditSCPVMode: TEdit
                Left = 117
                Top = 62
                Width = 277
                Height = 24
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
              end
              object EditSCMap: TEdit
                Left = 117
                Top = 84
                Width = 277
                Height = 24
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                ReadOnly = True
                TabOrder = 2
              end
              object EditSCMode: TEdit
                Left = 117
                Top = 106
                Width = 277
                Height = 24
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                ReadOnly = True
                TabOrder = 3
              end
              object EditSCPort: TEdit
                Left = 117
                Top = 128
                Width = 277
                Height = 24
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                ReadOnly = True
                TabOrder = 4
              end
              object PanelSCFlag: TPanel
                Left = 287
                Top = 152
                Width = 110
                Height = 24
                BevelOuter = bvNone
                ParentColor = True
                TabOrder = 5
                object LabelSCGold: TLabel
                  AlignWithMargins = True
                  Left = 70
                  Top = 3
                  Width = 37
                  Height = 18
                  Align = alRight
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'Gold'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 4380411
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                  Layout = tlCenter
                  Visible = False
                  ExplicitLeft = 328
                  ExplicitTop = 33
                  ExplicitHeight = 66
                end
                object LabelSCCheats: TLabel
                  AlignWithMargins = True
                  Left = 19
                  Top = 3
                  Width = 45
                  Height = 18
                  Align = alRight
                  Alignment = taCenter
                  AutoSize = False
                  Caption = #1063#1080#1090#1099
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = 57713
                  Font.Height = -16
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  Transparent = True
                  Layout = tlCenter
                  Visible = False
                  ExplicitLeft = 277
                  ExplicitTop = 33
                  ExplicitHeight = 66
                end
              end
            end
            object PanelGraphOnline: TPanelCollapsed
              AlignWithMargins = True
              Left = 3
              Top = 188
              Width = 398
              Height = 178
              Caption = '  '#1043#1088#1072#1092#1080#1082' Online'
              DefaultPaint = False
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = 3355443
              Constraints.MaxHeight = 178
              Constraints.MaxWidth = 398
              Constraints.MinHeight = 178
              Constraints.MinWidth = 398
              Locked = True
              ParentBackground = False
              ShowCaption = True
              TabOrder = 2
              ShowCollapseButton = False
              Collapsed = False
              SimpleBorderColor = clSilver
              CaptionColor = clGray
              FontCaption.Charset = DEFAULT_CHARSET
              FontCaption.Color = clWhite
              FontCaption.Height = -13
              FontCaption.Name = 'Tahoma'
              FontCaption.Style = [fsBold]
              ShowSimpleBorder = True
              CaptionHeight = 30
              object ImageGraphOnline: TImage
                AlignWithMargins = True
                Left = 1
                Top = 31
                Width = 396
                Height = 146
                Margins.Left = 1
                Margins.Top = 0
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alClient
                ExplicitTop = 30
                ExplicitHeight = 147
              end
            end
            object PanelMiniChat: TPanelCollapsed
              AlignWithMargins = True
              Left = 3
              Top = 372
              Width = 398
              Height = 318
              Caption = '  '#1063#1072#1090
              DefaultPaint = False
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Constraints.MaxHeight = 318
              Constraints.MaxWidth = 398
              Constraints.MinHeight = 318
              Constraints.MinWidth = 398
              Locked = True
              ParentBackground = False
              ShowCaption = True
              TabOrder = 4
              ShowCollapseButton = False
              Collapsed = False
              SimpleBorderColor = clSilver
              CaptionColor = clGray
              FontCaption.Charset = DEFAULT_CHARSET
              FontCaption.Color = clWhite
              FontCaption.Height = -13
              FontCaption.Name = 'Tahoma'
              FontCaption.Style = [fsBold]
              ShowSimpleBorder = True
              CaptionHeight = 30
              object Panel11: TPanel
                AlignWithMargins = True
                Left = 1
                Top = 287
                Width = 396
                Height = 30
                Margins.Left = 1
                Margins.Top = 0
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alBottom
                Alignment = taLeftJustify
                BevelOuter = bvNone
                Color = 4539717
                ParentBackground = False
                TabOrder = 0
                object SpeedButtonMiniChatSend: TsSpeedButton
                  Left = 371
                  Top = 0
                  Width = 25
                  Height = 30
                  Hint = #1054#1090#1087#1088#1072#1074#1080#1090#1100
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alRight
                  Flat = True
                  Glyph.Data = {
                    36090000424D3609000000000000360000002800000018000000180000000100
                    2000000000000009000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                    A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                    8C7A555555060000000000000000000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFB6B6B6FFB0B0B0FFB0B0B0FFB0B0
                    B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB5B5
                    B5FFCACACAFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                    00006F6F6F17ADADADEECACACAFFBBBBBBFF656565FF636363FF636363FF6363
                    63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6565
                    65FFB6B6B6FFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                    00008787877BC9C9C9FECBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
                    63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6363
                    63FFAEAEAEFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
                    63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6363
                    63FFAEAEAEFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
                    63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6363
                    63FFAEAEAEFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
                    63FF6E6E6EFFA5A5A5FFA7A7A7FF707070FF636363FF636363FF636363FF6363
                    63FFAEAEAEFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFB3B3B3FF636363FF636363FF656565FF9090
                    90FFC1C1C1FF9F9F9FFF9C9C9CFFC1C1C1FF929292FF666666FF636363FF6363
                    63FFAEAEAEFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFB3B3B3FF636363FF797979FFB2B2B2FFB3B3
                    B3FF7B7B7BFF636363FF636363FF797979FFB1B1B1FFB4B4B4FF7C7C7CFF6363
                    63FFAEAEAEFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFB3B3B3FF696969FFBBBBBBFF929292FF6565
                    65FF636363FF636363FF636363FF636363FF646464FF8F8F8FFFBCBCBCFF6C6C
                    6CFFAEAEAEFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                    00008787877BC9C9C9FECBCBCBFFB6B6B6FF656565FF6C6C6CFF636363FF6363
                    63FF636363FF636363FF636363FF636363FF636363FF636363FF6B6B6BFF6666
                    66FFB1B1B1FFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                    000074747416ABABABEECACACAFFC9C9C9FF9F9F9FFF979797FF979797FF9797
                    97FF979797FF979797FF979797FF979797FF979797FF979797FF979797FF9D9D
                    9DFFC9C9C9FFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                    CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                    8A7A555555060000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000747474168787877BA3A3
                    A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  OnClick = SpeedButtonMiniChatSendClick
                  ExplicitLeft = 374
                end
                object SpeedButtonMiniChatDown: TsSpeedButton
                  Left = 346
                  Top = 0
                  Width = 25
                  Height = 30
                  Hint = #1055#1088#1086#1084#1086#1090#1072#1090#1100' '#1074#1085#1080#1079
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alRight
                  Flat = True
                  Glyph.Data = {
                    36090000424D3609000000000000360000002800000018000000180000000100
                    2000000000000009000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                    A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                    8C7A555555060000000000000000000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                    00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCACACAFFA4A4A4FFA1A1A1FFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
                    CAFFA3A3A3FF686868FF686868FF9F9F9FFFCACACAFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA4A4
                    A4FF686868FF9D9D9DFFA2A2A2FF686868FFA0A0A0FFCACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA7A7A7FF6666
                    66FFA0A0A0FFCBCBCBFFCBCBCBFFA4A4A4FF666666FFA2A2A2FFCACACAFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFB7B7B7FFA4A4
                    A4FFCACACAFFCBCBCBFFCBCBCBFFCACACAFFA6A6A6FFB3B3B3FFCACACAFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                    000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                    CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                    8A7A555555060000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000747474168787877BA3A3
                    A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  OnClick = SpeedButtonMiniChatDownClick
                  ExplicitLeft = 352
                end
                object ShapeMiniChatColor: TLabelEx
                  AlignWithMargins = True
                  Left = 322
                  Top = 0
                  Width = 22
                  Height = 30
                  Cursor = crHandPoint
                  Hint = #1062#1074#1077#1090' '#1089#1086#1086#1073#1097#1077#1085#1080#1103
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 2
                  Margins.Bottom = 0
                  Align = alRight
                  Brush.Color = clSilver
                  Pen.Color = 7566195
                  Shape = stCircle
                  OnMouseUp = ShapeMiniChatColorMouseUp
                  Caption = ''
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                  IgnorBounds = True
                  EllipseRectVertical = False
                  ExplicitLeft = 323
                end
                object EditMiniChatSend: TEdit
                  AlignWithMargins = True
                  Left = 139
                  Top = 6
                  Width = 182
                  Height = 23
                  Margins.Left = 5
                  Margins.Top = 6
                  Margins.Right = 1
                  Margins.Bottom = 1
                  Align = alClient
                  BevelEdges = [beLeft, beRight, beBottom]
                  BevelInner = bvNone
                  BevelOuter = bvRaised
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = True
                  ParentFont = False
                  TabOrder = 0
                  TextHint = #1053#1072#1087#1080#1096#1080#1090#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1077'...'
                  OnKeyDown = EditMiniChatSendKeyDown
                  OnKeyPress = EditMiniChatSendKeyPress
                end
                object CheckBoxMiniChatPM: TEsSwitch
                  AlignWithMargins = True
                  Left = 70
                  Top = 3
                  Width = 61
                  Height = 24
                  Hint = #1051#1080#1095#1085#1086#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1077' '#1074#1099#1073#1088#1072#1085#1085#1086#1084#1091' '#1080#1075#1088#1086#1082#1091
                  Alignment = Left
                  TextOn = #1051#1057
                  TextOff = #1051#1057
                  ShowCaption = True
                  Align = alLeft
                  TabOrder = 1
                  OnClick = CheckBoxMiniChatPMClick
                  ExplicitHeight = 20
                end
                object SwitchChatENG: TEsSwitch
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 61
                  Height = 24
                  Hint = #1040#1074#1090#1086' '#1087#1077#1088#1077#1074#1086#1076' '#1085#1072' '#1072#1085#1075#1083#1080#1081#1089#1082#1080#1081
                  Alignment = Left
                  TextOn = 'EN'
                  TextOff = 'RU'
                  ShowCaption = True
                  Align = alLeft
                  TabOrder = 2
                  ExplicitHeight = 20
                end
              end
              object TableExMiniChat: TTableEx
                AlignWithMargins = True
                Left = 1
                Top = 31
                Width = 396
                Height = 256
                Margins.Left = 1
                Margins.Top = 0
                Margins.Right = 1
                Margins.Bottom = 0
                Align = alClient
                BevelInner = bvNone
                BorderStyle = bsNone
                Color = 3355443
                DefaultRowHeight = 31
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnMouseUp = TableExMiniChatMouseUp
                OnDrawCellData = TableExFastChatDrawCellData
                ItemIndex = -1
                OnItemClick = TableExMiniChatItemClick
                GetData = TableExMiniChatGetData
                OnEdit = TableExFastChatEdit
                Columns = <>
                ShowScrollBar = False
                CanNoSelect = False
                VisibleEdit = False
                ItemCount = 2
                LineColor = 3355443
                LineColorXor = 3355443
                LineHotColor = 6052956
                LineSelColor = 6710886
                FontHotLine.Charset = DEFAULT_CHARSET
                FontHotLine.Color = clSilver
                FontHotLine.Height = -11
                FontHotLine.Name = 'Tahoma'
                FontHotLine.Style = []
                FontLine.Charset = DEFAULT_CHARSET
                FontLine.Color = clSilver
                FontLine.Height = -11
                FontLine.Name = 'Tahoma'
                FontLine.Style = []
                FontSelLine.Charset = DEFAULT_CHARSET
                FontSelLine.Color = clSilver
                FontSelLine.Height = -11
                FontSelLine.Name = 'Tahoma'
                FontSelLine.Style = []
                ShowColumns = False
                ColumnsFont.Charset = DEFAULT_CHARSET
                ColumnsFont.Color = 2631720
                ColumnsFont.Height = -11
                ColumnsFont.Name = 'Tahoma'
                ColumnsFont.Style = []
                LastColumnAutoSize = False
              end
            end
            object PanelStat: TPanelCollapsed
              AlignWithMargins = True
              Left = 3
              Top = 696
              Width = 398
              Height = 178
              Caption = '  '#1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
              DefaultPaint = False
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = 3355443
              Constraints.MaxHeight = 178
              Constraints.MaxWidth = 398
              Constraints.MinHeight = 178
              Constraints.MinWidth = 398
              Locked = True
              ParentBackground = False
              ShowCaption = True
              TabOrder = 6
              ShowCollapseButton = False
              Collapsed = False
              SimpleBorderColor = clSilver
              CaptionColor = clGray
              FontCaption.Charset = DEFAULT_CHARSET
              FontCaption.Color = clWhite
              FontCaption.Height = -13
              FontCaption.Name = 'Tahoma'
              FontCaption.Style = [fsBold]
              ShowSimpleBorder = True
              CaptionHeight = 30
              object Label19: TLabel
                Left = 8
                Top = 38
                Width = 114
                Height = 13
                Caption = #1052#1072#1082#1089#1080#1084#1091#1084' '#1089#1077#1075#1086#1076#1085#1103':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object Label20: TLabel
                Left = 8
                Top = 76
                Width = 120
                Height = 13
                Caption = #1042#1089#1077#1075#1086' '#1080#1075#1088#1086#1082#1086#1074' '#1089#1077#1075#1086#1076#1085#1103':'
                Transparent = True
              end
              object Label21: TLabel
                Left = 8
                Top = 95
                Width = 125
                Height = 13
                Caption = #1053#1086#1074#1099#1093' '#1080#1075#1088#1086#1082#1086#1074' '#1089#1077#1075#1086#1076#1085#1103':'
                Transparent = True
              end
              object Label22: TLabel
                Left = 8
                Top = 114
                Width = 91
                Height = 13
                Caption = #1054#1090#1082#1072#1079#1086#1074' '#1089#1077#1075#1086#1076#1085#1103':'
                Transparent = True
              end
              object LabelStatMaxP: TLabel
                Left = 137
                Top = 38
                Width = 37
                Height = 13
                AutoSize = False
                Caption = '0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object LabelStatAllPToday: TLabel
                Left = 137
                Top = 76
                Width = 37
                Height = 13
                AutoSize = False
                Caption = '0'
                Transparent = True
              end
              object LabelStatNewP: TLabel
                Left = 137
                Top = 95
                Width = 37
                Height = 13
                AutoSize = False
                Caption = '0'
                Transparent = True
              end
              object LabelStatEndP: TLabel
                Left = 137
                Top = 114
                Width = 37
                Height = 13
                AutoSize = False
                Caption = '0'
                Transparent = True
              end
              object Label26: TLabel
                Left = 180
                Top = 38
                Width = 86
                Height = 13
                Caption = #1042#1089#1077#1075#1086' '#1080#1075#1088#1086#1082#1086#1074':'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object Label27: TLabel
                Left = 180
                Top = 76
                Width = 109
                Height = 13
                Caption = #1042#1089#1077#1075#1086' '#1080#1075#1088#1086#1082#1086#1074' '#1074#1095#1077#1088#1072':'
                Transparent = True
              end
              object Label30: TLabel
                Left = 180
                Top = 95
                Width = 114
                Height = 13
                Caption = #1053#1086#1074#1099#1093' '#1080#1075#1088#1086#1082#1086#1074' '#1074#1095#1077#1088#1072':'
                Transparent = True
              end
              object Label31: TLabel
                Left = 180
                Top = 57
                Width = 148
                Height = 13
                Caption = #1042#1089#1077#1075#1086' '#1080#1075#1088#1086#1082#1086#1074' '#1079#1072' '#1101#1090#1086#1090' '#1084#1077#1089#1103#1094':'
                Transparent = True
              end
              object LabelStatAllP: TLabel
                Left = 338
                Top = 38
                Width = 53
                Height = 13
                AutoSize = False
                Caption = '0'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object LabelStatAllPYest: TLabel
                Left = 338
                Top = 76
                Width = 43
                Height = 13
                AutoSize = False
                Caption = '0'
                Transparent = True
              end
              object LabelStatNewYest: TLabel
                Left = 338
                Top = 95
                Width = 43
                Height = 13
                AutoSize = False
                Caption = '0'
                Transparent = True
              end
              object LabelStatAllPMonth: TLabel
                Left = 338
                Top = 57
                Width = 43
                Height = 13
                AutoSize = False
                Caption = '0'
                Transparent = True
              end
              object Label32: TLabel
                Left = 180
                Top = 114
                Width = 80
                Height = 13
                Caption = #1054#1090#1082#1072#1079#1086#1074' '#1074#1095#1077#1088#1072':'
                Transparent = True
              end
              object LabelStatEndPYest: TLabel
                Left = 338
                Top = 114
                Width = 43
                Height = 13
                AutoSize = False
                Caption = '0'
                Transparent = True
              end
              object Label33: TLabel
                Left = 8
                Top = 57
                Width = 99
                Height = 13
                Caption = #1040#1082#1090#1080#1074#1085#1099#1093' '#1080#1075#1088#1086#1082#1086#1074':'
                Transparent = True
              end
              object LabelStatActiveP: TLabel
                Left = 137
                Top = 57
                Width = 37
                Height = 13
                AutoSize = False
                Caption = '0'
                Transparent = True
              end
              object Label34: TLabel
                Left = 8
                Top = 133
                Width = 61
                Height = 13
                Caption = #1053#1077' '#1080#1075#1088#1086#1082#1086#1074':'
                Transparent = True
              end
              object LabelStatNoPlayers: TLabel
                Left = 137
                Top = 133
                Width = 37
                Height = 13
                AutoSize = False
                Caption = '0'
                Transparent = True
              end
              object Label35: TLabel
                Left = 180
                Top = 133
                Width = 109
                Height = 13
                Caption = #1057#1088#1077#1076#1085#1077#1077' '#1074#1088#1077#1084#1103' '#1080#1075#1088#1099':'
                Transparent = True
              end
              object LabelStatAvgPlayTime: TLabel
                Left = 338
                Top = 133
                Width = 43
                Height = 13
                AutoSize = False
                Caption = '0'
                Transparent = True
              end
            end
            object PanelConnections: TPanelCollapsed
              AlignWithMargins = True
              Left = 3
              Top = 880
              Width = 398
              Height = 178
              Caption = '  '#1055#1086#1090#1086#1082#1080' '#1080' '#1089#1086#1077#1076#1080#1085#1077#1085#1080#1103
              DefaultPaint = False
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = 3355443
              Constraints.MaxHeight = 178
              Constraints.MaxWidth = 398
              Constraints.MinHeight = 178
              Constraints.MinWidth = 398
              Locked = True
              ParentBackground = False
              ShowCaption = True
              TabOrder = 7
              ShowCollapseButton = False
              Collapsed = False
              SimpleBorderColor = clSilver
              CaptionColor = clGray
              FontCaption.Charset = DEFAULT_CHARSET
              FontCaption.Color = clWhite
              FontCaption.Height = -13
              FontCaption.Name = 'Tahoma'
              FontCaption.Style = [fsBold]
              ShowSimpleBorder = True
              CaptionHeight = 30
              object LabelExThDB: TLabelEx
                Left = 11
                Top = 54
                Width = 5
                Height = 14
                Brush.Color = clGray
                Pen.Color = 5066061
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object LabelExThWebChat: TLabelEx
                Left = 29
                Top = 54
                Width = 5
                Height = 14
                Brush.Color = clGray
                Pen.Color = 5066061
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object LabelExThleg: TLabelEx
                Left = 47
                Top = 54
                Width = 5
                Height = 14
                Brush.Color = clGray
                Pen.Color = 5066061
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object LabelExEM: TLabelEx
                Left = 65
                Top = 54
                Width = 5
                Height = 14
                Brush.Color = clGray
                Pen.Color = 5066061
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object sSpeedButton11: TsSpeedButton
                Left = 5
                Top = 35
                Width = 17
                Height = 17
                Hint = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100' '#1041#1044' '#1089#1077#1088#1074#1077#1088#1072
                Flat = True
                Images = ImageList16
                ImageIndex = 20
                WordWrap = False
              end
              object sSpeedButton13: TsSpeedButton
                Left = 23
                Top = 35
                Width = 17
                Height = 17
                Hint = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100' '#1095#1072#1090#1072' '#1089#1072#1081#1090#1072
                Flat = True
                Images = ImageList16
                ImageIndex = 22
                WordWrap = False
              end
              object sSpeedButton14: TsSpeedButton
                Left = 41
                Top = 35
                Width = 17
                Height = 17
                Hint = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100' '#1058#1077#1083#1077#1075#1088#1072#1084#1084#1072
                Flat = True
                Images = ImageList16
                ImageIndex = 23
                WordWrap = False
              end
              object sSpeedButton15: TsSpeedButton
                Left = 59
                Top = 35
                Width = 17
                Height = 17
                Hint = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100' '#1084#1086#1076#1091#1083#1103' '#1080#1075#1088#1086#1074#1099#1093' '#1089#1086#1073#1099#1090#1080#1081
                Flat = True
                Images = ImageList16
                ImageIndex = 24
                WordWrap = False
              end
              object LabelEx1: TLabelEx
                Left = 6
                Top = 78
                Width = 386
                Height = 4
                Brush.Color = 6052956
                Pen.Color = 3618615
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object sSpeedButton16: TsSpeedButton
                Left = 77
                Top = 35
                Width = 17
                Height = 17
                Flat = True
                Images = ImageList16
                ImageIndex = 19
                WordWrap = False
              end
              object LabelExRCON: TLabelEx
                Left = 83
                Top = 54
                Width = 5
                Height = 14
                Hint = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100' RCON'
                Brush.Color = clGray
                Pen.Color = 5066061
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object sSpeedButton17: TsSpeedButton
                Left = 375
                Top = 35
                Width = 17
                Height = 17
                Flat = True
                OnClick = ButtonManagerReconClick
                Images = ImageList16
                ImageIndex = 25
                WordWrap = False
              end
              object LabelExConPath: TLabelEx
                Left = 381
                Top = 54
                Width = 5
                Height = 14
                Hint = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1083#1086#1082#1072#1083#1100#1085#1099#1084' '#1092#1072#1081#1083#1072' '#1089#1077#1074#1088#1077#1088#1072
                Brush.Color = clGray
                Pen.Color = 5066061
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object sSpeedButton12: TsSpeedButton
                Left = 357
                Top = 35
                Width = 17
                Height = 17
                Flat = True
                OnClick = ButtonSDBReconClick
                Images = ImageList16
                ImageIndex = 20
                WordWrap = False
              end
              object LabelExConDBS: TLabelEx
                Left = 363
                Top = 54
                Width = 5
                Height = 14
                Hint = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1041#1044' '#1089#1072#1081#1090#1072
                Brush.Color = clGray
                Pen.Color = 5066061
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object sSpeedButton20: TsSpeedButton
                Left = 320
                Top = 35
                Width = 17
                Height = 17
                Hint = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1041#1044' '#1089#1077#1088#1074#1077#1088#1072
                Flat = True
                OnClick = ButtonDBReconClick
                Images = ImageList16
                ImageIndex = 20
                WordWrap = False
              end
              object LabelExConDBU: TLabelEx
                Left = 326
                Top = 54
                Width = 5
                Height = 14
                Brush.Color = clGray
                Pen.Color = 5066061
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object SpeedButtonConProc: TsSpeedButton
                Left = 338
                Top = 35
                Width = 17
                Height = 17
                Flat = True
                OnClick = SpeedButtonConProcClick
                Images = ImageList16
                ImageIndex = 26
                WordWrap = False
              end
              object LabelExConCP: TLabelEx
                Left = 344
                Top = 54
                Width = 5
                Height = 14
                Hint = #1052#1086#1085#1080#1090#1086#1088#1080#1085#1075' '#1079#1072' '#1087#1088#1086#1094#1077#1089#1089#1086#1084
                Brush.Color = clGray
                Pen.Color = 5066061
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object sSpeedButton22: TsSpeedButton
                Left = 302
                Top = 35
                Width = 17
                Height = 17
                Hint = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' RCON'
                Flat = True
                OnClick = ButtonRCONReconClick
                Images = ImageList16
                ImageIndex = 19
                WordWrap = False
              end
              object LabelExConRCON: TLabelEx
                Left = 308
                Top = 54
                Width = 5
                Height = 14
                Brush.Color = clGray
                Pen.Color = 5066061
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object LabelPICPU: TLabel
                Left = 11
                Top = 96
                Width = 119
                Height = 19
                Caption = #1062#1055': '#1053#1077#1090' '#1076#1072#1085#1085#1099#1093
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object LabelPIMem: TLabel
                Left = 11
                Top = 120
                Width = 127
                Height = 19
                Caption = #1054#1047#1059': '#1053#1077#1090' '#1076#1072#1085#1085#1099#1093
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object LabelPIThreads: TLabel
                Left = 11
                Top = 144
                Width = 159
                Height = 19
                Caption = #1055#1086#1090#1086#1082#1086#1074': '#1053#1077#1090' '#1076#1072#1085#1085#1099#1093
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object sSpeedButton1: TsSpeedButton
                Left = 284
                Top = 35
                Width = 17
                Height = 17
                Hint = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1042#1082#1086#1085#1090#1072#1082#1090#1077
                Flat = True
                OnClick = SpeedButtonVKConClick
                Images = ImageList16
                ImageIndex = 27
                WordWrap = False
              end
              object LabelExConVK: TLabelEx
                Left = 290
                Top = 54
                Width = 5
                Height = 14
                Brush.Color = clGray
                Pen.Color = 5066061
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object sSpeedButton2: TsSpeedButton
                Left = 95
                Top = 35
                Width = 17
                Height = 17
                Flat = True
                Images = ImageList16
                ImageIndex = 26
                WordWrap = False
              end
              object LabelExThProc: TLabelEx
                Left = 101
                Top = 54
                Width = 5
                Height = 14
                Hint = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100' '#1084#1086#1076#1091#1083#1103' '#1089#1083#1077#1078#1077#1085#1080#1103' '#1079#1072' '#1087#1088#1086#1094#1077#1089#1089#1086#1084
                Brush.Color = clGray
                Pen.Color = 5066061
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object sSpeedButton31: TsSpeedButton
                Left = 113
                Top = 35
                Width = 17
                Height = 17
                Flat = True
                Images = ImageList16
                ImageIndex = 31
                WordWrap = False
              end
              object LabelExThGet: TLabelEx
                Left = 119
                Top = 54
                Width = 5
                Height = 14
                Hint = #1040#1082#1090#1080#1074#1085#1086#1089#1090#1100' '#1084#1086#1076#1091#1083#1103' '#1079#1072#1087#1088#1086#1089#1086#1074' '#1082' '#1089#1077#1088#1074#1077#1088#1091
                Brush.Color = clGray
                Pen.Color = 5066061
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object SpeedButtonShutdown: TsSpeedButton
                Left = 239
                Top = 88
                Width = 146
                Height = 29
                Caption = #1042#1082#1083'/'#1042#1099#1082#1083
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = SpeedButtonShutdownClick
                Alignment = taLeftJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 19
                WordWrap = False
              end
              object SpeedButtonRestart: TsSpeedButton
                Left = 239
                Top = 117
                Width = 146
                Height = 29
                Caption = #1055#1077#1088#1077#1079#1072#1087#1091#1089#1090#1080#1090#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = SpeedButtonRestartClick
                Alignment = taLeftJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 20
                WordWrap = False
              end
              object Panel44: TPanel
                Left = 180
                Top = 146
                Width = 209
                Height = 23
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = #1047#1072#1076#1077#1088#1078#1082#1080' '#1090#1072#1081#1084#1077#1088#1086#1074' '
                Color = 2631720
                ParentBackground = False
                TabOrder = 1
                object LabelTimerUpdate: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 0
                  Width = 9
                  Height = 23
                  Hint = 'TimerUpdate'
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  Caption = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -17
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ExplicitHeight = 21
                end
                object LabelTimerRestart: TLabel
                  AlignWithMargins = True
                  Left = 48
                  Top = 0
                  Width = 9
                  Height = 23
                  Hint = 'TimerRestart'
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  Caption = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -17
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ExplicitHeight = 21
                end
                object LabelTimerCheckDonat: TLabel
                  AlignWithMargins = True
                  Left = 18
                  Top = 0
                  Width = 9
                  Height = 23
                  Hint = 'TimerCheckDonat'
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  Caption = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -17
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ExplicitHeight = 21
                end
                object LabelTimerHearthBeat: TLabel
                  AlignWithMargins = True
                  Left = 33
                  Top = 0
                  Width = 9
                  Height = 23
                  Hint = 'TimerHearthBeat'
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  Caption = '0'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -17
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  ExplicitHeight = 21
                end
              end
            end
            object PanelGameplayCtrl: TPanelCollapsed
              AlignWithMargins = True
              Left = 407
              Top = 3
              Width = 398
              Height = 318
              Caption = '  '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1080#1075#1088#1086#1074#1099#1084' '#1087#1088#1086#1094#1077#1089#1089#1086#1084
              DefaultPaint = False
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = 3355443
              Constraints.MaxHeight = 318
              Constraints.MaxWidth = 398
              Constraints.MinHeight = 318
              Constraints.MinWidth = 398
              Locked = True
              ParentBackground = False
              ShowCaption = True
              TabOrder = 1
              ShowCollapseButton = False
              Collapsed = False
              SimpleBorderColor = clSilver
              CaptionColor = clGray
              FontCaption.Charset = DEFAULT_CHARSET
              FontCaption.Color = clWhite
              FontCaption.Height = -13
              FontCaption.Name = 'Tahoma'
              FontCaption.Style = [fsBold]
              ShowSimpleBorder = True
              CaptionHeight = 30
              object SpeedButtonAirdrop: TsSpeedButton
                Left = 7
                Top = 97
                Width = 182
                Height = 30
                Hint = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1072#1080#1088#1076#1088#1086#1087
                Caption = #1055#1086#1089#1083#1072#1090#1100' Airdrop'
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonAirdropClick
                Alignment = taLeftJustify
                ButtonStyle = tbsDropDown
                DropdownMenu = PopupMenuAirdrop
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 3
              end
              object SpeedButtonExeHeal: TsSpeedButton
                Left = 204
                Top = 37
                Width = 186
                Height = 30
                Hint = #1048#1079#1083#1077#1095#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1080#1075#1088#1086#1082#1072
                Caption = #1048#1079#1083#1077#1095#1080#1090#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonExeHealClick
                Alignment = taLeftJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 1
              end
              object Shape13: TShape
                Left = 195
                Top = 31
                Width = 3
                Height = 286
                Brush.Color = 13816530
                Pen.Color = 13816530
              end
              object SpeedButtonSetDay: TsSpeedButton
                Left = 7
                Top = 127
                Width = 182
                Height = 30
                Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1085#1077#1074#1085#1086#1077' '#1074#1088#1077#1084#1103
                Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1077#1085#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonSetDayClick
                Alignment = taLeftJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 11
              end
              object SpeedButtonSetNight: TsSpeedButton
                Left = 7
                Top = 157
                Width = 182
                Height = 30
                Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1085#1086#1095#1085#1086#1077' '#1074#1088#1077#1084#1103
                Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1085#1086#1095#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonSetNightClick
                Alignment = taLeftJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 7
              end
              object SpeedButtonSetStorm: TsSpeedButton
                Left = 7
                Top = 187
                Width = 182
                Height = 30
                Hint = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100'/'#1091#1073#1088#1072#1090#1100' '#1087#1072#1089#1084#1091#1088#1085#1091#1102' '#1087#1086#1075#1086#1076#1091
                Caption = #1055#1072#1089#1084#1091#1088#1085#1086
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonSetStormClick
                Alignment = taLeftJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 8
              end
              object SpeedButtonExeKill: TsSpeedButton
                Left = 204
                Top = 67
                Width = 186
                Height = 30
                Hint = #1059#1073#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1080#1075#1088#1086#1082#1072
                Caption = #1059#1073#1080#1090#1100' '#1087#1077#1088#1089#1086#1085#1072#1078#1072
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonExeKillClick
                Alignment = taLeftJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 5
              end
              object SpeedButtonExeKick: TsSpeedButton
                Left = 204
                Top = 97
                Width = 186
                Height = 30
                Hint = #1050#1080#1082#1085#1091#1090#1100' '#1080#1075#1088#1086#1082#1072
                Caption = #1042#1099#1075#1085#1072#1090#1100' '#1089' '#1089#1077#1088#1074#1077#1088#1072
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonExeKickClick
                Alignment = taLeftJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 12
              end
              object SpeedButtonExeBan: TsSpeedButton
                Left = 204
                Top = 127
                Width = 186
                Height = 30
                Hint = #1047#1072#1073#1072#1085#1080#1090#1100' '#1080#1075#1088#1086#1082#1072' '#1085#1072' '#1091#1082#1072#1079#1072#1085#1085#1086#1077' '#1074#1088#1077#1084#1103
                Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1041#1040#1053
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonExeBanClick
                Alignment = taLeftJustify
                ButtonStyle = tbsDropDown
                DropdownMenu = PopupMenuBan
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 13
              end
              object Shape17: TShape
                Left = 1
                Top = 90
                Width = 196
                Height = 3
                Brush.Color = 13816530
                Pen.Color = 13816530
              end
              object Shape7: TShape
                Left = 198
                Top = 163
                Width = 199
                Height = 3
                Brush.Color = 13816530
                Pen.Color = 13816530
              end
              object SpeedButtonTP: TsSpeedButton
                Left = 369
                Top = 286
                Width = 24
                Height = 26
                Hint = #1058#1077#1083#1077#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonTPClick
                Alignment = taLeftJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 18
              end
              object SpeedButtonDayTime: TsSpeedButton
                Left = 7
                Top = 35
                Width = 48
                Height = 48
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonDayTimeClick
                Alignment = taLeftJustify
                Images = ImageListState48
                TextAlignment = taLeftJustify
                ImageIndex = 0
              end
              object LabelTimeOnServer: TLabel
                Left = 65
                Top = 35
                Width = 51
                Height = 24
                Caption = '23:01'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -20
                Font.Name = 'Default'
                Font.Style = []
                ParentFont = False
              end
              object Image1: TImage
                Left = 168
                Top = 32
                Width = 25
                Height = 26
                Picture.Data = {
                  0B54504E474772617068696336090000424D3609000000000000360000002800
                  0000180000001800000001002000000000000009000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000004646460B4646460B4646460B4646460B4646460B4646
                  460B333333050000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000005353532E595958D4585858D6585858D6585858D6585858D65858
                  58D6585858800000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000005656565F585858FE595959FF595959FF595959FF595959FF5959
                  59FF575757BE0000000100000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000057575789585858FE595959FF595959FF595959FF595959FF5959
                  59FF585858DD5050501000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000575757B8595959FF595959FF595959FF595959FF595959FF5959
                  59FF595959FA5252521F00000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000051515113585858DB595959FF595959FF595959FF595959FF595959FF5959
                  59FF595959FD5555555400000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000004D4D
                  4D0A575757AC585858FE585858EE565656945757575256565647565656735757
                  57D2595959FD585858E455555530000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000005656
                  5676595959FD585858E457575732000000000000000000000000000000004949
                  490E575757A8595959FD585858CE555555030000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000333333055858
                  58EA585858F55656564A00000000000000000000000000000000000000000000
                  00005B5B5B0E575757CD585858FE565656530000000000000000000000000000
                  00000000000000000000000000000000000000000000000000005252523E5959
                  59FD585858CE4040400400000000000000000000000000000000000000000000
                  00000000000055555572585858FC5858589F0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000565656595858
                  58FE575757A40000000000000000000000000000000000000000000000000000
                  00000000000055555545585858F8585858BA0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000555555545858
                  58FE585858AE0000000000000000000000000000000000000000000000000000
                  00000000000056565650585858F8585858B60000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000535353255858
                  58FB585858E05555551200000000000000000000000000000000000000000000
                  00000000000056565691585858FE575757840000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000005858
                  58CB595959FD5656568300000000000000000000000000000000000000000000
                  000057575732585858EA595959FD5959592E0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000005858
                  5840595959F4595959FD56565683555555120000000000000000404040045454
                  5449585858E3585858FE57575793000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000157575761585858F9585858FE585858E3575757B2575757A7575757CF5858
                  58F8585858FE585858B05555550C000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000049494907585858CA595959FF595959FF595959FF595959FF595959FF5959
                  59FF595959FD5555553600000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000575757AA585858FE595959FF595959FF595959FF595959FF5959
                  59FF585858F35858581A00000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000057575775585858FE595959FF595959FF595959FF595959FF5959
                  59FF575757CF5555550900000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000054545452595959FD595959FF595959FF595959FF595959FF5959
                  59FF575757B30000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000005959591457575781575757815757578157575781575757815757
                  5781575757460000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000}
              end
              object LabelDayTime: TLabel
                Left = 64
                Top = 65
                Width = 90
                Height = 19
                Caption = #1055#1086#1083#1085#1086#1083#1091#1085#1080#1077
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -16
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object CheckBoxUseForAll: TEsSwitch
                AlignWithMargins = True
                Left = 12
                Top = 289
                Width = 158
                Height = 20
                Hint = #1042#1099#1087#1086#1083#1085#1080#1090#1100' '#1082#1086#1084#1072#1085#1076#1091' '#1076#1083#1103' '#1074#1089#1077#1093' '#1080#1075#1088#1086#1082#1086#1074' '#1086#1085#1083#1072#1081#1085
                TextOn = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1082#1086' '#1074#1089#1077#1084
                TextOff = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1082#1086' '#1074#1089#1077#1084
                ShowCaption = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ParentBackground = False
                TabOrder = 1
              end
              object TableExMapPoints: TTableEx
                Left = 198
                Top = 166
                Width = 199
                Height = 120
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 1
                Margins.Bottom = 0
                BorderStyle = bsNone
                Color = 3355443
                DefaultRowHeight = 30
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                ItemIndex = -1
                OnItemClick = TableExMapPointsItemClick
                GetData = TableExMapPointsGetData
                Columns = <>
                ShowScrollBar = False
                CanNoSelect = False
                ItemCount = 4
                LineColor = 3355443
                LineColorXor = 3355443
                LineHotColor = 6052956
                LineSelColor = 6710886
                ColumnsColor = 6052956
                FontHotLine.Charset = DEFAULT_CHARSET
                FontHotLine.Color = clSilver
                FontHotLine.Height = -11
                FontHotLine.Name = 'Tahoma'
                FontHotLine.Style = []
                FontLine.Charset = DEFAULT_CHARSET
                FontLine.Color = clSilver
                FontLine.Height = -11
                FontLine.Name = 'Tahoma'
                FontLine.Style = []
                FontSelLine.Charset = DEFAULT_CHARSET
                FontSelLine.Color = clWhite
                FontSelLine.Height = -11
                FontSelLine.Name = 'Tahoma'
                FontSelLine.Style = [fsBold]
                ShowColumns = False
                ColumnsFont.Charset = DEFAULT_CHARSET
                ColumnsFont.Color = clSilver
                ColumnsFont.Height = -11
                ColumnsFont.Name = 'Tahoma'
                ColumnsFont.Style = [fsBold]
              end
              object EditTPPlace: TEdit
                AlignWithMargins = True
                Left = 202
                Top = 289
                Width = 165
                Height = 23
                Margins.Top = 6
                Margins.Right = 1
                Margins.Bottom = 1
                AutoSize = False
                BevelEdges = [beLeft, beRight, beBottom]
                BevelInner = bvNone
                BevelOuter = bvNone
                BevelWidth = 3
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                TabOrder = 3
                TextHint = #1052#1077#1089#1090#1086#1085#1072#1079#1085#1072#1095#1077#1085#1080#1077
                OnDragDrop = EditTPPlaceDragDrop
                OnDragOver = EditTPPlaceDragOver
                OnKeyDown = EditSendChatFastKeyDown
                OnKeyPress = EditSendChatFastKeyPress
              end
            end
            object PanelPRev: TPanelCollapsed
              AlignWithMargins = True
              Left = 407
              Top = 326
              Width = 398
              Height = 318
              Caption = '  '#1057#1086#1073#1099#1090#1080#1103' '#1074#1093#1086#1076#1072
              DefaultPaint = False
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Constraints.MaxHeight = 318
              Constraints.MaxWidth = 398
              Constraints.MinHeight = 318
              Constraints.MinWidth = 398
              Locked = True
              ParentBackground = False
              ShowCaption = True
              TabOrder = 0
              ShowCollapseButton = False
              Collapsed = False
              SimpleBorderColor = clSilver
              CaptionColor = clGray
              FontCaption.Charset = DEFAULT_CHARSET
              FontCaption.Color = clWhite
              FontCaption.Height = -13
              FontCaption.Name = 'Tahoma'
              FontCaption.Style = [fsBold]
              ShowSimpleBorder = True
              CaptionHeight = 30
              object TableExPlayersRev: TTableEx
                AlignWithMargins = True
                Left = 1
                Top = 31
                Width = 396
                Height = 256
                Margins.Left = 1
                Margins.Top = 0
                Margins.Right = 1
                Margins.Bottom = 0
                Align = alClient
                BevelInner = bvNone
                BorderStyle = bsNone
                Color = 3355443
                DefaultRowHeight = 25
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnDrawCellData = TableExPlayersRevDrawCellData
                ItemIndex = -1
                OnItemClick = TableExPlayersRevItemClick
                GetData = TableExPlayersRevGetData
                Columns = <>
                ShowScrollBar = False
                CanNoSelect = False
                ItemCount = 2
                LineColor = 3355443
                LineColorXor = 3355443
                LineHotColor = 6052956
                LineSelColor = 6710886
                ColumnsColor = 3355443
                FontHotLine.Charset = DEFAULT_CHARSET
                FontHotLine.Color = clSilver
                FontHotLine.Height = -11
                FontHotLine.Name = 'Tahoma'
                FontHotLine.Style = []
                FontLine.Charset = DEFAULT_CHARSET
                FontLine.Color = clSilver
                FontLine.Height = -11
                FontLine.Name = 'Tahoma'
                FontLine.Style = []
                FontSelLine.Charset = DEFAULT_CHARSET
                FontSelLine.Color = clSilver
                FontSelLine.Height = -11
                FontSelLine.Name = 'Tahoma'
                FontSelLine.Style = []
                ShowColumns = False
                ColumnsFont.Charset = DEFAULT_CHARSET
                ColumnsFont.Color = 2631720
                ColumnsFont.Height = -11
                ColumnsFont.Name = 'Tahoma'
                ColumnsFont.Style = []
                LastColumnAutoSize = False
              end
              object Panel18: TPanel
                AlignWithMargins = True
                Left = 1
                Top = 287
                Width = 396
                Height = 30
                Margins.Left = 1
                Margins.Top = 0
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alBottom
                BevelOuter = bvNone
                Color = 4539717
                ParentBackground = False
                TabOrder = 2
                object SpeedButtonEventsDown: TsSpeedButton
                  Left = 369
                  Top = 0
                  Width = 27
                  Height = 30
                  Hint = #1055#1088#1086#1082#1088#1091#1090#1080#1090#1100' '#1074#1085#1080#1079
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alRight
                  Flat = True
                  Glyph.Data = {
                    36090000424D3609000000000000360000002800000018000000180000000100
                    2000000000000009000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                    A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                    8C7A555555060000000000000000000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                    00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCACACAFFA4A4A4FFA1A1A1FFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
                    CAFFA3A3A3FF686868FF686868FF9F9F9FFFCACACAFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA4A4
                    A4FF686868FF9D9D9DFFA2A2A2FF686868FFA0A0A0FFCACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA7A7A7FF6666
                    66FFA0A0A0FFCBCBCBFFCBCBCBFFA4A4A4FF666666FFA2A2A2FFCACACAFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFB7B7B7FFA4A4
                    A4FFCACACAFFCBCBCBFFCBCBCBFFCACACAFFA6A6A6FFB3B3B3FFCACACAFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                    000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                    CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                    8A7A555555060000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000747474168787877BA3A3
                    A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  OnClick = SpeedButtonEventsDownClick
                  ExplicitLeft = 816
                  ExplicitTop = 1
                  ExplicitHeight = 23
                end
              end
            end
            object PanelEvents: TPanelCollapsed
              AlignWithMargins = True
              Left = 407
              Top = 650
              Width = 398
              Height = 318
              Caption = '  '#1048#1075#1088#1086#1074#1099#1077' '#1089#1086#1073#1099#1090#1080#1103
              DefaultPaint = False
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Constraints.MaxHeight = 318
              Constraints.MaxWidth = 398
              Constraints.MinHeight = 318
              Constraints.MinWidth = 398
              Locked = True
              ParentBackground = False
              ShowCaption = True
              TabOrder = 5
              ShowCollapseButton = False
              Collapsed = False
              SimpleBorderColor = clSilver
              CaptionColor = clGray
              FontCaption.Charset = DEFAULT_CHARSET
              FontCaption.Color = clWhite
              FontCaption.Height = -13
              FontCaption.Name = 'Tahoma'
              FontCaption.Style = [fsBold]
              ShowSimpleBorder = True
              CaptionHeight = 30
              object DrawGridTimers: TDrawGrid
                AlignWithMargins = True
                Left = 1
                Top = 31
                Width = 396
                Height = 256
                Margins.Left = 1
                Margins.Top = 0
                Margins.Right = 1
                Margins.Bottom = 0
                Align = alClient
                BevelInner = bvNone
                BevelOuter = bvNone
                BorderStyle = bsNone
                Color = 3355443
                ColCount = 3
                DefaultRowHeight = 64
                DefaultDrawing = False
                DrawingStyle = gdsGradient
                FixedCols = 0
                RowCount = 4
                FixedRows = 0
                GradientEndColor = 3355443
                GradientStartColor = 3355443
                GridLineWidth = 0
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
                ScrollBars = ssNone
                TabOrder = 0
                OnDrawCell = DrawGridTimersDrawCell
                OnMouseWheelDown = DrawGridTimersMouseWheelDown
                OnMouseWheelUp = DrawGridTimersMouseWheelDown
                ColWidths = (
                  64
                  64
                  64)
                RowHeights = (
                  64
                  64
                  64
                  64)
              end
              object Panel19: TPanel
                AlignWithMargins = True
                Left = 1
                Top = 287
                Width = 396
                Height = 30
                Margins.Left = 1
                Margins.Top = 0
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alBottom
                BevelOuter = bvNone
                Color = 4539717
                ParentBackground = False
                TabOrder = 2
                object SpeedButtonGEventRun: TsSpeedButton
                  Left = 0
                  Top = 0
                  Width = 25
                  Height = 30
                  Hint = #1047#1072#1087#1091#1089#1090#1080#1090#1100' '#1089#1086#1073#1099#1090#1080#1077' '#1089#1077#1081#1095#1072#1089
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  Flat = True
                  Glyph.Data = {
                    36090000424D3609000000000000360000002800000018000000180000000100
                    2000000000000009000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                    A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                    8C7A555555060000000000000000000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                    00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAF
                    AFFFB8B8B8FFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFF9999
                    99FF686868FF969696FFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFF9999
                    99FF636363FF636363FF737373FFB2B2B2FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFF9999
                    99FF636363FF636363FF636363FF666666FF8D8D8DFFC4C4C4FFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFF9999
                    99FF636363FF636363FF636363FF636363FF636363FF727272FFC1C1C1FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFF9999
                    99FF636363FF636363FF636363FF636363FF787878FFB6B6B6FFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFF9999
                    99FF636363FF636363FF686868FF9B9B9BFFC6C6C6FFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFF9999
                    99FF636363FF7D7D7DFFBABABAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFA4A4
                    A4FFA4A4A4FFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                    000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
                    CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                    CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                    8A7A555555060000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000747474168787877BA3A3
                    A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  OnClick = SpeedButtonGEventRunClick
                end
                object SpeedButtonGEventReset: TsSpeedButton
                  Left = 25
                  Top = 0
                  Width = 25
                  Height = 30
                  Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1089#1095#1105#1090#1095#1080#1082
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  Flat = True
                  Glyph.Data = {
                    36090000424D3609000000000000360000002800000018000000180000000100
                    2000000000000009000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                    A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                    8C7A555555060000000000000000000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCACACAFFCACACAFFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA8A8
                    A8FF7C7C7CFF636363FF636363FF7A7A7AFFA5A5A5FFCACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                    00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFC9C9C9FF959595FF6868
                    68FF8C8C8CFFAEAEAEFFB2B2B2FF8E8E8EFF686868FF919191FFC8C8C8FFCBCB
                    CBFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFAAAAAAFF676767FFADAD
                    ADFFCACACAFFCBCBCBFFCBCBCBFFCACACAFFB0B0B0FF676767FFA6A6A6FFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCACACAFF7D7D7DFF909090FFCACA
                    CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFF959595FF787878FFC9C9
                    C9FFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFC6C6C6FF7B7B7BFFADADADFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFAEAEAEFF6D6D6DFFC3C3
                    C3FFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFFF6D6D6DFFC2C2
                    C2FFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCACACAFFB0B0B0FFC8C8C8FFCBCBCBFFCBCBCBFF939393FF7A7A7AFFC9C9
                    C9FFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
                    CAFFACACACFF6C6C6CFFC6C6C6FFCACACAFFB0B0B0FF686868FFA5A5A5FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFAEAE
                    AEFF696969FF646464FFA0A0A0FF939393FF696969FF8F8F8FFFC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFF7676
                    76FF636363FF636363FF696969FF7E7E7EFFA7A7A7FFCACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                    000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFBCBC
                    BCFF747474FF646464FFBDBDBDFFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFBCBCBCFF757575FFC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC0C0C0FFC9C9C9FFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                    CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                    8A7A555555060000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000747474168787877BA3A3
                    A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  OnClick = SpeedButtonGEventResetClick
                end
                object SpeedButtonGEventState: TsSpeedButton
                  Left = 50
                  Top = 0
                  Width = 25
                  Height = 30
                  Hint = #1055#1088#1080#1086#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1089#1095#1105#1090#1095#1080#1082
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alLeft
                  Flat = True
                  Glyph.Data = {
                    36090000424D3609000000000000360000002800000018000000180000000100
                    2000000000000009000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                    A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                    8C7A555555060000000000000000000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                    00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFCACACAFF898989FF6F6F
                    6FFF848484FFCBCBCBFFCBCBCBFF888888FF6F6F6FFF858585FFC9C9C9FFCBCB
                    CBFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCACACAFF808080FF6363
                    63FF7A7A7AFFCBCBCBFFCBCBCBFF7F7F7FFF636363FF7C7C7CFFC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFF808080FF6363
                    63FF7A7A7AFFCBCBCBFFCBCBCBFF7F7F7FFF636363FF7C7C7CFFC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFF808080FF6363
                    63FF7A7A7AFFCBCBCBFFCBCBCBFF7F7F7FFF636363FF7C7C7CFFC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFF808080FF6363
                    63FF7A7A7AFFCBCBCBFFCBCBCBFF7F7F7FFF636363FF7C7C7CFFC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFF808080FF6363
                    63FF7A7A7AFFCBCBCBFFCBCBCBFF7F7F7FFF636363FF7C7C7CFFC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFF808080FF6363
                    63FF7A7A7AFFCBCBCBFFCBCBCBFF7F7F7FFF636363FF7C7C7CFFC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFF808080FF6363
                    63FF7A7A7AFFCBCBCBFFCBCBCBFF7F7F7FFF636363FF7C7C7CFFC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCACACAFF808080FF6363
                    63FF7A7A7AFFCBCBCBFFCBCBCBFF7F7F7FFF636363FF7C7C7CFFC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                    000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFCACACAFFC1C1C1FFBEBE
                    BEFFC1C1C1FFCBCBCBFFCBCBCBFFC1C1C1FFBEBEBEFFC1C1C1FFCACACAFFCBCB
                    CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                    CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                    8A7A555555060000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000747474168787877BA3A3
                    A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  OnClick = SpeedButtonGEventStateClick
                end
              end
            end
            object PanelPerms: TPanelCollapsed
              AlignWithMargins = True
              Left = 407
              Top = 974
              Width = 398
              Height = 318
              Caption = '  '#1055#1088#1072#1074#1072' '#1080' '#1087#1088#1080#1074#1077#1083#1077#1075#1080#1080
              DefaultPaint = False
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = 3355443
              Constraints.MaxHeight = 318
              Constraints.MaxWidth = 398
              Constraints.MinHeight = 318
              Constraints.MinWidth = 398
              Locked = True
              ParentBackground = False
              ShowCaption = True
              TabOrder = 8
              ShowCollapseButton = False
              Collapsed = False
              SimpleBorderColor = clSilver
              CaptionColor = clGray
              FontCaption.Charset = DEFAULT_CHARSET
              FontCaption.Color = clWhite
              FontCaption.Height = -13
              FontCaption.Name = 'Tahoma'
              FontCaption.Style = [fsBold]
              ShowSimpleBorder = True
              CaptionHeight = 30
              object ButtonPermAdd: TsSpeedButton
                Left = 8
                Top = 104
                Width = 161
                Height = 26
                Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1075#1088#1091#1087#1087#1091
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = ButtonPermAddClick
                Alignment = taLeftJustify
                Images = ImageList16
                TextAlignment = taLeftJustify
                ImageIndex = 5
                WordWrap = False
              end
              object ButtonGetPlayerP: TsSpeedButton
                Left = 8
                Top = 72
                Width = 161
                Height = 26
                Caption = #1055#1086#1083#1091#1095#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1080#1075#1088#1086#1082#1072
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = ButtonGetPlayerPClick
                Alignment = taLeftJustify
                Images = ImageList16
                TextAlignment = taLeftJustify
                ImageIndex = 0
                WordWrap = False
              end
              object ButtonPermRemove: TsSpeedButton
                Left = 8
                Top = 136
                Width = 161
                Height = 26
                Caption = #1059#1076#1072#1083#1080#1090#1100' '#1080#1079' '#1075#1088#1091#1087#1087#1099
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = ButtonPermRemoveClick
                Alignment = taLeftJustify
                Images = ImageList16
                TextAlignment = taLeftJustify
                ImageIndex = 15
                WordWrap = False
              end
              object SpeedButtonCreateDonat: TsSpeedButton
                Left = 8
                Top = 258
                Width = 161
                Height = 26
                Caption = #1047#1072#1092#1080#1082#1089#1080#1088#1086#1074#1072#1090#1100' '#1076#1086#1085#1072#1090
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonCreateDonatClick
                Alignment = taLeftJustify
                Images = ImageList16
                TextAlignment = taLeftJustify
                ImageIndex = 32
                WordWrap = False
              end
              object LabelEx3: TLabelEx
                Left = 6
                Top = 175
                Width = 386
                Height = 4
                Brush.Color = 6052956
                Pen.Color = 3618615
                Caption = ''
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object ComboBoxPremGroup: TComboBox
                Left = 175
                Top = 105
                Width = 214
                Height = 24
                Style = csDropDownList
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemIndex = 0
                ParentColor = True
                ParentFont = False
                TabOrder = 0
                Text = #1052#1086#1076#1077#1088#1072#1090#1086#1088#1099
                Items.Strings = (
                  #1052#1086#1076#1077#1088#1072#1090#1086#1088#1099
                  'VIP'
                  #1053#1086#1088#1084'. '#1084#1086#1076#1077#1088#1099)
              end
              object EditPermGroups: TEdit
                Left = 175
                Top = 73
                Width = 214
                Height = 22
                Color = 3355443
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                ReadOnly = True
                TabOrder = 1
                Text = 'Default'
              end
              object EditPermSteam: TEdit
                Left = 175
                Top = 43
                Width = 214
                Height = 24
                BevelInner = bvNone
                BevelKind = bkSoft
                BevelOuter = bvSpace
                BevelWidth = 3
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                TabOrder = 2
                TextHint = 'SteamID'
              end
              object EditPermNick: TEdit
                Left = 9
                Top = 43
                Width = 159
                Height = 24
                BevelInner = bvNone
                BevelKind = bkSoft
                BevelOuter = bvSpace
                BevelWidth = 3
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                TabOrder = 3
                TextHint = #1053#1080#1082' '#1080#1075#1088#1086#1082#1072
              end
              object ComboBoxPermGroupRemove: TComboBox
                Left = 175
                Top = 137
                Width = 214
                Height = 24
                Style = csDropDownList
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemIndex = 0
                ParentColor = True
                ParentFont = False
                TabOrder = 4
                Text = #1052#1086#1076#1077#1088#1072#1090#1086#1088#1099
                Items.Strings = (
                  #1052#1086#1076#1077#1088#1072#1090#1086#1088#1099
                  'VIP'
                  #1053#1086#1088#1084'. '#1084#1086#1076#1077#1088#1099)
              end
              object ComboBoxDonatGroup: TComboBox
                Left = 175
                Top = 259
                Width = 122
                Height = 24
                Style = csDropDownList
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemIndex = 0
                ParentColor = True
                ParentFont = False
                TabOrder = 6
                Text = #1052#1086#1076#1077#1088#1072#1090#1086#1088#1099
                Items.Strings = (
                  #1052#1086#1076#1077#1088#1072#1090#1086#1088#1099
                  'VIP')
              end
              object ComboBoxDonatTime: TComboBox
                Left = 303
                Top = 259
                Width = 86
                Height = 24
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ItemIndex = 0
                ParentColor = True
                ParentFont = False
                TabOrder = 7
                Text = #1053#1077#1076#1077#1083#1103
                Items.Strings = (
                  #1053#1077#1076#1077#1083#1103
                  #1052#1077#1089#1103#1094)
              end
              object EditDonatComment: TEdit
                Left = 7
                Top = 287
                Width = 382
                Height = 22
                Color = 3355443
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
                TextHint = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081' '#1082' '#1076#1086#1085#1072#1090#1091
              end
            end
            object PanelCollapsedSpay: TPanelCollapsed
              AlignWithMargins = True
              Left = 3
              Top = 1064
              Width = 398
              Height = 318
              Caption = '  '#1057#1083#1077#1078#1077#1085#1080#1077' '#1079#1072' '#1080#1075#1088#1086#1081
              DefaultPaint = False
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = 3355443
              Constraints.MaxHeight = 318
              Constraints.MaxWidth = 398
              Constraints.MinHeight = 318
              Constraints.MinWidth = 398
              Locked = True
              ParentBackground = False
              ShowCaption = True
              TabOrder = 9
              ShowCollapseButton = False
              Collapsed = False
              SimpleBorderColor = clSilver
              CaptionColor = clGray
              FontCaption.Charset = DEFAULT_CHARSET
              FontCaption.Color = clWhite
              FontCaption.Height = -13
              FontCaption.Name = 'Tahoma'
              FontCaption.Style = [fsBold]
              ShowSimpleBorder = True
              CaptionHeight = 30
              object LabelEx2: TLabelEx
                Left = 97
                Top = 137
                Width = 198
                Height = 47
                Brush.Color = 4539717
                Pen.Color = 2697513
                Caption = #1053#1077#1090' '#1089#1085#1080#1084#1082#1072#13#10#1053#1072#1078#1084#1080#1090#1077' "'#1054#1073#1085#1086#1074#1080#1090#1100'"'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                IgnorBounds = True
                EllipseRectVertical = False
              end
              object ImageSpay: TImage
                AlignWithMargins = True
                Left = 1
                Top = 31
                Width = 396
                Height = 256
                Margins.Left = 1
                Margins.Top = 0
                Margins.Right = 1
                Margins.Bottom = 0
                Align = alClient
                Center = True
                Stretch = True
                ExplicitLeft = 12
                ExplicitTop = 56
              end
              object Panel3: TPanel
                AlignWithMargins = True
                Left = 1
                Top = 287
                Width = 396
                Height = 30
                Margins.Left = 1
                Margins.Top = 0
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alBottom
                BevelOuter = bvNone
                Color = 4539717
                ParentBackground = False
                TabOrder = 1
                object SpeedButtonPIReSpy: TsSpeedButton
                  Left = 371
                  Top = 0
                  Width = 25
                  Height = 30
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alRight
                  Flat = True
                  Glyph.Data = {
                    36090000424D3609000000000000360000002800000018000000180000000100
                    2000000000000009000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                    A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                    8C7A555555060000000000000000000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCACACAFFCACACAFFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA8A8
                    A8FF7C7C7CFF636363FF636363FF7A7A7AFFA5A5A5FFCACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                    00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFC9C9C9FF959595FF6868
                    68FF8C8C8CFFAEAEAEFFB2B2B2FF8E8E8EFF686868FF919191FFC8C8C8FFCBCB
                    CBFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFAAAAAAFF676767FFADAD
                    ADFFCACACAFFCBCBCBFFCBCBCBFFCACACAFFB0B0B0FF676767FFA6A6A6FFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCACACAFF7D7D7DFF909090FFCACA
                    CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFF959595FF787878FFC9C9
                    C9FFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFC6C6C6FF7B7B7BFFADADADFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFAEAEAEFF6D6D6DFFC3C3
                    C3FFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFFF6D6D6DFFC2C2
                    C2FFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCACACAFFB0B0B0FFC8C8C8FFCBCBCBFFCBCBCBFF939393FF7A7A7AFFC9C9
                    C9FFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
                    CAFFACACACFF6C6C6CFFC6C6C6FFCACACAFFB0B0B0FF686868FFA5A5A5FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFAEAE
                    AEFF696969FF646464FFA0A0A0FF939393FF696969FF8F8F8FFFC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFF7676
                    76FF636363FF636363FF696969FF7E7E7EFFA7A7A7FFCACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                    000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFBCBC
                    BCFF747474FF646464FFBDBDBDFFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFBCBCBCFF757575FFC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC0C0C0FFC9C9C9FFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                    CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                    8A7A555555060000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000747474168787877BA3A3
                    A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  OnClick = SpeedButtonPIReSpyClick
                  ExplicitLeft = 364
                  ExplicitTop = 7
                  ExplicitHeight = 23
                end
              end
            end
            object PanelCollapsedActions: TPanelCollapsed
              AlignWithMargins = True
              Left = 407
              Top = 1298
              Width = 398
              Height = 318
              Caption = '  '#1044#1077#1081#1089#1090#1074#1080#1103' '#1080' '#1089#1086#1073#1099#1090#1080#1103
              DefaultPaint = False
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Constraints.MaxHeight = 318
              Constraints.MaxWidth = 398
              Constraints.MinHeight = 318
              Constraints.MinWidth = 398
              Locked = True
              ParentBackground = False
              ShowCaption = True
              TabOrder = 10
              ShowCollapseButton = False
              Collapsed = False
              SimpleBorderColor = clSilver
              CaptionColor = clGray
              FontCaption.Charset = DEFAULT_CHARSET
              FontCaption.Color = clWhite
              FontCaption.Height = -13
              FontCaption.Name = 'Tahoma'
              FontCaption.Style = [fsBold]
              ShowSimpleBorder = True
              CaptionHeight = 30
              object TableExActions: TTableEx
                AlignWithMargins = True
                Left = 1
                Top = 31
                Width = 396
                Height = 256
                Margins.Left = 1
                Margins.Top = 0
                Margins.Right = 1
                Margins.Bottom = 0
                Align = alClient
                BevelInner = bvNone
                BorderStyle = bsNone
                Color = 3355443
                DefaultRowHeight = 25
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                ItemIndex = -1
                GetData = TableExActionsGetData
                OnEdit = TableExActionsEdit
                Columns = <>
                ShowScrollBar = False
                CanNoSelect = False
                ItemCount = 2
                LineColor = 3355443
                LineColorXor = 3355443
                LineHotColor = 6052956
                LineSelColor = 6710886
                ColumnsColor = 3355443
                FontHotLine.Charset = DEFAULT_CHARSET
                FontHotLine.Color = clSilver
                FontHotLine.Height = -11
                FontHotLine.Name = 'Tahoma'
                FontHotLine.Style = []
                FontLine.Charset = DEFAULT_CHARSET
                FontLine.Color = clSilver
                FontLine.Height = -11
                FontLine.Name = 'Tahoma'
                FontLine.Style = []
                FontSelLine.Charset = DEFAULT_CHARSET
                FontSelLine.Color = clSilver
                FontSelLine.Height = -11
                FontSelLine.Name = 'Tahoma'
                FontSelLine.Style = []
                ShowColumns = False
                ColumnsFont.Charset = DEFAULT_CHARSET
                ColumnsFont.Color = 2631720
                ColumnsFont.Height = -11
                ColumnsFont.Name = 'Tahoma'
                ColumnsFont.Style = []
                LastColumnAutoSize = False
              end
              object Panel24: TPanel
                AlignWithMargins = True
                Left = 1
                Top = 287
                Width = 396
                Height = 30
                Margins.Left = 1
                Margins.Top = 0
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alBottom
                BevelOuter = bvNone
                Color = 4539717
                ParentBackground = False
                TabOrder = 2
                object sSpeedButton27: TsSpeedButton
                  Left = 369
                  Top = 0
                  Width = 27
                  Height = 30
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alRight
                  Flat = True
                  Glyph.Data = {
                    36090000424D3609000000000000360000002800000018000000180000000100
                    2000000000000009000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                    A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                    8C7A555555060000000000000000000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                    00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCACACAFFA4A4A4FFA1A1A1FFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
                    CAFFA3A3A3FF686868FF686868FF9F9F9FFFCACACAFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA4A4
                    A4FF686868FF9D9D9DFFA2A2A2FF686868FFA0A0A0FFCACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA7A7A7FF6666
                    66FFA0A0A0FFCBCBCBFFCBCBCBFFA4A4A4FF666666FFA2A2A2FFCACACAFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFB7B7B7FFA4A4
                    A4FFCACACAFFCBCBCBFFCBCBCBFFCACACAFFA6A6A6FFB3B3B3FFCACACAFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                    00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                    000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                    CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                    8A7A555555060000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000747474168787877BA3A3
                    A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  ExplicitLeft = 816
                  ExplicitTop = 1
                  ExplicitHeight = 23
                end
              end
            end
            object PanelGive: TPanelCollapsed
              AlignWithMargins = True
              Left = 3
              Top = 1388
              Width = 398
              Height = 318
              Caption = '  '#1042#1099#1076#1072#1095#1072' '#1080#1075#1088#1086#1082#1091
              DefaultPaint = False
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = 3355443
              Constraints.MaxHeight = 318
              Constraints.MaxWidth = 398
              Constraints.MinHeight = 318
              Constraints.MinWidth = 398
              Locked = True
              ParentBackground = False
              ShowCaption = True
              TabOrder = 11
              ShowCollapseButton = False
              Collapsed = False
              SimpleBorderColor = clSilver
              CaptionColor = clGray
              FontCaption.Charset = DEFAULT_CHARSET
              FontCaption.Color = clWhite
              FontCaption.Height = -13
              FontCaption.Name = 'Tahoma'
              FontCaption.Style = [fsBold]
              ShowSimpleBorder = True
              CaptionHeight = 30
              object SpeedButtonGiveExp: TsSpeedButton
                Left = 321
                Top = 62
                Width = 69
                Height = 26
                Caption = #1042#1099#1076#1072#1090#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonGiveExpClick
                Alignment = taLeftJustify
                Images = ImageList16
                TextAlignment = taLeftJustify
                ImageIndex = 5
                WordWrap = False
              end
              object Label36: TLabel
                Left = 8
                Top = 41
                Width = 35
                Height = 16
                Caption = #1054#1087#1099#1090
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object Label37: TLabel
                Left = 8
                Top = 91
                Width = 77
                Height = 16
                Caption = #1044#1077#1085#1100#1075#1080' (EP)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object SpeedButtonGiveEP: TsSpeedButton
                Left = 319
                Top = 112
                Width = 71
                Height = 26
                Caption = #1042#1099#1076#1072#1090#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonGiveEPClick
                Alignment = taLeftJustify
                Images = ImageList16
                TextAlignment = taLeftJustify
                ImageIndex = 5
                WordWrap = False
              end
              object Label38: TLabel
                Left = 8
                Top = 142
                Width = 25
                Height = 16
                Caption = #1051#1091#1090
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object SpeedButtonGiveItems: TsSpeedButton
                Left = 319
                Top = 163
                Width = 71
                Height = 26
                Caption = #1042#1099#1076#1072#1090#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonGiveItemsClick
                Alignment = taLeftJustify
                Images = ImageList16
                TextAlignment = taLeftJustify
                ImageIndex = 5
                WordWrap = False
              end
              object Label39: TLabel
                Left = 8
                Top = 194
                Width = 69
                Height = 16
                Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object SpeedButtonGiveVehicle: TsSpeedButton
                Left = 319
                Top = 215
                Width = 71
                Height = 26
                Caption = #1042#1099#1076#1072#1090#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonGiveVehicleClick
                Alignment = taLeftJustify
                Images = ImageList16
                TextAlignment = taLeftJustify
                ImageIndex = 5
                WordWrap = False
              end
              object Label41: TLabel
                Left = 8
                Top = 247
                Width = 66
                Height = 16
                Caption = #1050#1080#1090' '#1085#1072#1073#1086#1088
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object SpeedButtonGiveKit: TsSpeedButton
                Left = 319
                Top = 268
                Width = 71
                Height = 26
                Caption = #1042#1099#1076#1072#1090#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonGiveKitClick
                Alignment = taLeftJustify
                Images = ImageList16
                TextAlignment = taLeftJustify
                ImageIndex = 5
                WordWrap = False
              end
              object SpeedButtonGiveEPAFK: TsSpeedButton
                Left = 259
                Top = 112
                Width = 54
                Height = 26
                Caption = #1040#1060#1050
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonGiveEPAFKClick
                Alignment = taLeftJustify
                Images = ImageList16
                TextAlignment = taLeftJustify
                ImageIndex = 5
                WordWrap = False
              end
              object EditGiveExp: TEdit
                Left = 11
                Top = 63
                Width = 304
                Height = 22
                Alignment = taRightJustify
                Color = 3355443
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                NumbersOnly = True
                ParentFont = False
                TabOrder = 0
                Text = '1000'
                TextHint = #1050#1086#1083'-'#1074#1086' '#1086#1087#1099#1090#1072
              end
              object EditGiveEP: TEdit
                Left = 11
                Top = 113
                Width = 242
                Height = 22
                Alignment = taRightJustify
                Color = 3355443
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                NumbersOnly = True
                ParentFont = False
                TabOrder = 2
                Text = '1000'
                TextHint = #1050#1086#1083'-'#1074#1086' EP'
              end
              object EditGiveItems: TEdit
                Left = 11
                Top = 164
                Width = 242
                Height = 22
                Color = 3355443
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                TextHint = #1048#1044' '#1087#1088#1077#1076#1084#1077#1090#1086#1074' '#1095#1077#1088#1077#1079' '#1079#1072#1087#1103#1090#1091#1102
              end
              object EditGiveVehicle: TEdit
                Left = 11
                Top = 216
                Width = 302
                Height = 22
                Color = 3355443
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                TextHint = #1048#1044' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
              end
              object SpinEditGiveItemAmount: TlkSpinEdit
                Left = 259
                Top = 164
                Width = 54
                Height = 22
                AutoSize = False
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxValue = 200
                MinValue = 1
                ParentColor = True
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 5
                Value = 1
              end
              object ComboBoxGiveKit: TComboBox
                Left = 11
                Top = 269
                Width = 302
                Height = 24
                Style = csDropDownList
                Color = 3355443
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
                TextHint = 'Kit-'#1085#1072#1073#1086#1088
                OnDropDown = ComboBoxGiveKitDropDown
              end
            end
          end
        end
        object TabSheetLog: TTabSheet
          Caption = #1051#1086#1075
          ImageIndex = 1
          TabVisible = False
          object SplitterSysLog: TSplitter
            Left = 0
            Top = 406
            Width = 930
            Height = 2
            Cursor = crVSplit
            Align = alBottom
            AutoSnap = False
            Color = 4539717
            ParentColor = False
            ResizeStyle = rsUpdate
            ExplicitTop = 389
            ExplicitWidth = 852
          end
          object TableExLogRCON: TTableEx
            Left = 0
            Top = 0
            Width = 930
            Height = 406
            Align = alClient
            BevelInner = bvNone
            BorderStyle = bsNone
            Color = 3355443
            DefaultRowHeight = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ItemIndex = -1
            GetData = TableExLogRCONGetData
            Columns = <>
            ShowScrollBar = False
            CanNoSelect = False
            ItemCount = 2
            LineColor = 3355443
            LineColorXor = 3355443
            LineHotColor = 6052956
            LineSelColor = 6710886
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = clSilver
            FontHotLine.Height = -11
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = clSilver
            FontLine.Height = -11
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = clSilver
            FontSelLine.Height = -11
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = []
            ShowColumns = False
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = 2631720
            ColumnsFont.Height = -11
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = []
          end
          object TableExLogSystem: TTableEx
            Left = 0
            Top = 408
            Width = 930
            Height = 227
            Align = alBottom
            BevelInner = bvNone
            BorderStyle = bsNone
            Color = 3355443
            DefaultRowHeight = 25
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ItemIndex = -1
            GetData = TableExLogSystemGetData
            Columns = <>
            ShowScrollBar = False
            CanNoSelect = False
            ItemCount = 2
            LineColor = 3355443
            LineColorXor = 3355443
            LineHotColor = 6052956
            LineSelColor = 6710886
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = clSilver
            FontHotLine.Height = -11
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = clSilver
            FontLine.Height = -11
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = clSilver
            FontSelLine.Height = -11
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = []
            ShowColumns = False
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = 2631720
            ColumnsFont.Height = -11
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = []
          end
        end
        object TabSheetChat: TTabSheet
          Caption = #1063#1072#1090
          ImageIndex = 2
          TabVisible = False
          object TableExChat: TTableEx
            Left = 0
            Top = 30
            Width = 930
            Height = 575
            Align = alClient
            BevelInner = bvNone
            BorderStyle = bsNone
            Color = 3355443
            DefaultRowHeight = 25
            TabOrder = 0
            OnMouseUp = TableExChatMouseUp
            OnDrawCellData = TableExChatDrawCellData
            ItemIndex = -1
            OnItemClick = TableExChatItemClick
            GetData = TableExChatGetData
            OnEdit = TableExChatEdit
            Columns = <>
            CanNoSelect = False
            VisibleEdit = False
            ItemCount = 1
            LineColor = 3355443
            LineColorXor = 3355443
            LineHotColor = 6052956
            LineSelColor = 6710886
            ColumnsColor = 6052956
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = clSilver
            FontHotLine.Height = -11
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = clSilver
            FontLine.Height = -11
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = clWhite
            FontSelLine.Height = -11
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = [fsBold]
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = clSilver
            ColumnsFont.Height = -11
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = [fsBold]
          end
          object PanelChatSend: TPanel
            Left = 0
            Top = 605
            Width = 930
            Height = 30
            Align = alBottom
            BevelOuter = bvNone
            Color = 4539717
            ParentBackground = False
            TabOrder = 1
            object SpeedButtonChatSend: TsSpeedButton
              AlignWithMargins = True
              Left = 52
              Top = 0
              Width = 25
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000006666
                66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                8C7A555555060000000000000000000000000000000000000000000000000000
                0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                C2FE969696AA7171711200000000000000000000000000000000000000000000
                00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                0000000000008A8A8A7AC2C2C2FECBCBCBFFB6B6B6FFB0B0B0FFB0B0B0FFB0B0
                B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB5B5
                B5FFCACACAFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                00006F6F6F17ADADADEECACACAFFBBBBBBFF656565FF636363FF636363FF6363
                63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6565
                65FFB6B6B6FFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                00008787877BC9C9C9FECBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
                63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6363
                63FFAEAEAEFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                6605A3A3A3C7CACACAFFCBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
                63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6363
                63FFAEAEAEFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                6D15AFAFAFE9CBCBCBFFCBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
                63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6363
                63FFAEAEAEFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                721DB5B5B5FACBCBCBFFCBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
                63FF6E6E6EFFA5A5A5FFA7A7A7FF707070FF636363FF636363FF636363FF6363
                63FFAEAEAEFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                721DB5B5B5FACBCBCBFFCBCBCBFFB3B3B3FF636363FF636363FF656565FF9090
                90FFC1C1C1FF9F9F9FFF9C9C9CFFC1C1C1FF929292FF666666FF636363FF6363
                63FFAEAEAEFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                6D15AFAFAFE9CBCBCBFFCBCBCBFFB3B3B3FF636363FF797979FFB2B2B2FFB3B3
                B3FF7B7B7BFF636363FF636363FF797979FFB1B1B1FFB4B4B4FF7C7C7CFF6363
                63FFAEAEAEFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                6605A3A3A3C7CACACAFFCBCBCBFFB3B3B3FF696969FFBBBBBBFF929292FF6565
                65FF636363FF636363FF636363FF636363FF646464FF8F8F8FFFBCBCBCFF6C6C
                6CFFAEAEAEFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                00008787877BC9C9C9FECBCBCBFFB6B6B6FF656565FF6C6C6CFF636363FF6363
                63FF636363FF636363FF636363FF636363FF636363FF636363FF6B6B6BFF6666
                66FFB1B1B1FFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                000074747416ABABABEECACACAFFC9C9C9FF9F9F9FFF979797FF979797FF9797
                97FF979797FF979797FF979797FF979797FF979797FF979797FF979797FF9D9D
                9DFFC9C9C9FFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                C2FE969696AA7171711200000000000000000000000000000000000000000000
                0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                8A7A555555060000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000747474168787877BA3A3
                A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000006666
                66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              OnClick = SpeedButtonChatSendClick
              ExplicitLeft = 77
              ExplicitTop = -1
            end
            object SpeedButtonChatDown: TsSpeedButton
              AlignWithMargins = True
              Left = 3
              Top = 0
              Width = 25
              Height = 30
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000006666
                66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                8C7A555555060000000000000000000000000000000000000000000000000000
                0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                C2FE969696AA7171711200000000000000000000000000000000000000000000
                00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCACACAFFA4A4A4FFA1A1A1FFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
                CAFFA3A3A3FF686868FF686868FF9F9F9FFFCACACAFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA4A4
                A4FF686868FF9D9D9DFFA2A2A2FF686868FFA0A0A0FFCACACAFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFA7A7A7FF6666
                66FFA0A0A0FFCBCBCBFFCBCBCBFFA4A4A4FF666666FFA2A2A2FFCACACAFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFB7B7B7FFA4A4
                A4FFCACACAFFCBCBCBFFCBCBCBFFCACACAFFA6A6A6FFB3B3B3FFCACACAFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                C2FE969696AA7171711200000000000000000000000000000000000000000000
                0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                8A7A555555060000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000747474168787877BA3A3
                A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000006666
                66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              OnClick = SpeedButtonChatDownClick
              ExplicitLeft = 849
            end
            object ShapeChatColor: TLabelEx
              AlignWithMargins = True
              Left = 28
              Top = 0
              Width = 22
              Height = 30
              Cursor = crHandPoint
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 2
              Margins.Bottom = 0
              Align = alLeft
              Brush.Color = clSilver
              Pen.Color = 7566195
              Shape = stCircle
              OnMouseUp = ShapeMiniChatColorMouseUp
              Caption = ''
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
              IgnorBounds = True
              EllipseRectVertical = False
              ExplicitLeft = 169
              ExplicitTop = 3
            end
            object EditChatSend: TEdit
              AlignWithMargins = True
              Left = 81
              Top = 6
              Width = 848
              Height = 23
              Margins.Left = 1
              Margins.Top = 6
              Margins.Right = 1
              Margins.Bottom = 1
              Align = alClient
              BevelEdges = [beLeft, beRight, beBottom]
              BevelInner = bvNone
              BevelOuter = bvRaised
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 0
              TextHint = #1053#1072#1087#1080#1096#1080#1090#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1077'...'
              OnKeyDown = EditChatSendKeyDown
              OnKeyPress = EditChatSendKeyPress
            end
          end
          object Panel30: TPanel
            Left = 0
            Top = 0
            Width = 930
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            Color = 3355443
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
            object Label40: TLabel
              AlignWithMargins = True
              Left = 33
              Top = 3
              Width = 44
              Height = 24
              Margins.Left = 6
              Align = alLeft
              Caption = #1060#1080#1083#1100#1090#1088
              Layout = tlCenter
              ExplicitHeight = 16
            end
            object SpeedButtonChatFilter: TsSpeedButton
              Left = 347
              Top = 0
              Width = 23
              Height = 30
              Hint = #1054#1090#1092#1080#1083#1100#1090#1088#1086#1074#1072#1090#1100
              Align = alLeft
              Flat = True
              OnClick = SpeedButtonChatFilterClick
              Images = ImageList16
              TextAlignment = taLeftJustify
              ImageIndex = 33
              ExplicitLeft = 340
              ExplicitTop = 2
              ExplicitHeight = 22
            end
            object SpeedButtonChatRefresh: TsSpeedButton
              Left = 0
              Top = 0
              Width = 27
              Height = 30
              Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088'/'#1086#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082
              Align = alLeft
              Flat = True
              OnClick = SpeedButtonChatRefreshClick
              Images = ImageList16
              TextAlignment = taLeftJustify
              ImageIndex = 0
            end
            object Panel31: TPanel
              AlignWithMargins = True
              Left = 564
              Top = 2
              Width = 364
              Height = 26
              Margins.Left = 1
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alRight
              BevelOuter = bvNone
              Color = 4539717
              ParentBackground = False
              TabOrder = 0
              object sSpeedButton33: TsSpeedButton
                AlignWithMargins = True
                Left = 334
                Top = 0
                Width = 27
                Height = 26
                Margins.Left = 0
                Margins.Top = 0
                Margins.Bottom = 0
                Align = alRight
                Flat = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000006666
                  66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                  A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                  8C7A555555060000000000000000000000000000000000000000000000000000
                  0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                  C2FE969696AA7171711200000000000000000000000000000000000000000000
                  00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                  0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC4C4C4FFA0A0A0FFC8C8
                  C8FFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                  00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC5C5C5FF7E7E7EFF6F6F6FFFBDBD
                  BDFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                  00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
                  CAFFCACACAFFCACACAFFCBCBCBFFC5C5C5FF7F7F7FFF6D6D6DFFB6B6B6FFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                  6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFA3A3A3FF7E7E
                  7EFF646464FF808080FFA7A7A7FF888888FF6D6D6DFFB9B9B9FFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                  6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FF8F8F8FFF696969FF9191
                  91FF979797FF909090FF696969FF757575FFB6B6B6FFCACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                  721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFAEAEAEFF686868FFADADADFFCACA
                  CAFFCBCBCBFFCBCBCBFFAAAAAAFF6A6A6AFFB7B7B7FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                  721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFF949494FF7E7E7EFFCACACAFFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF777777FF9B9B9BFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                  6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFF8D8D8DFF838383FFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCACACAFF7B7B7BFF989898FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                  6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFA1A1A1FF6E6E6EFFC1C1C1FFCBCB
                  CBFFCBCBCBFFCBCBCBFFBEBEBEFF6C6C6CFFAAAAAAFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                  00008787877BC9C9C9FECBCBCBFFCBCBCBFFC4C4C4FF777777FF7A7A7AFFB3B3
                  B3FFC7C7C7FFB1B1B1FF767676FF7C7C7CFFC7C7C7FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                  000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFBDBDBDFF808080FF6767
                  67FF6E6E6EFF686868FF818181FFC0C0C0FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                  0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFB6B6
                  B6FFB1B1B1FFB8B8B8FFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                  00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                  0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                  C2FE969696AA7171711200000000000000000000000000000000000000000000
                  0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                  CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                  8A7A555555060000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000747474168787877BA3A3
                  A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000006666
                  66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                ExplicitLeft = 816
                ExplicitTop = 1
                ExplicitHeight = 23
              end
              object Edit5: TEdit
                AlignWithMargins = True
                Left = 3
                Top = 4
                Width = 330
                Height = 21
                Margins.Top = 4
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alClient
                BevelEdges = [beLeft, beRight, beBottom]
                BevelInner = bvNone
                BevelOuter = bvRaised
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                TabOrder = 0
                TextHint = #1055#1086#1080#1089#1082'...'
              end
            end
            object ComboBoxChatFilter: TComboBox
              AlignWithMargins = True
              Left = 83
              Top = 3
              Width = 261
              Height = 24
              Align = alLeft
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 1
              OnDropDown = ComboBoxChatFilterDropDown
            end
          end
        end
        object TabSheetSteamInfo: TTabSheet
          Caption = #1041#1088#1072#1091#1079#1077#1088
          ImageIndex = 5
          TabVisible = False
          object WebBrowserInfo: TWebBrowser
            Left = 0
            Top = 34
            Width = 930
            Height = 601
            Align = alClient
            TabOrder = 0
            OnProgressChange = WebBrowserInfoProgressChange
            OnNavigateComplete2 = WebBrowserInfoNavigateComplete2
            ExplicitWidth = 852
            ExplicitHeight = 595
            ControlData = {
              4C0000001E6000001D3E00000000000000000000000000000000000000000000
              000000004C000000000000000000000001000000E0D057007335CF11AE690800
              2B2E126202000000000000004C0000000114020000000000C000000000000046
              8000000000000000000000000000000000000000000000000000000000000000
              00000000000000000100000000000000000000000000000000000000}
          end
          object PanelSteamNavigate: TPanel
            Left = 0
            Top = 0
            Width = 930
            Height = 31
            Align = alTop
            BevelOuter = bvNone
            Color = 3355443
            ParentBackground = False
            TabOrder = 1
            object SpeedButtonSNPrev: TsSpeedButton
              AlignWithMargins = True
              Left = 0
              Top = 0
              Width = 27
              Height = 31
              Hint = #1053#1072#1079#1072#1076
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000CCCCCC0ACACA
                CA30D1D1D15FD3D3D379D2D2D27DD2D2D26CCECECE44CCCCCC14000000010000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000AAAAAA06D0D0D066E5E5E5D0F2F2
                F2FDFAFAFAFFFDFDFDFFFEFEFEFFFBFBFBFFF5F5F5FFECECECE7D8D8D896C8C8
                C81C000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000C8C8C82AE1E1E1D3F9F9F9FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFECEC
                ECF4CFCFCF65AAAAAA0300000000000000000000000000000000000000000000
                00000000000000000000CDCDCD3DEBEBEBE5FFFFFFFEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF5F5F5FAD7D7D785AAAAAA03000000000000000000000000000000000000
                000000000000C1C1C121E8E8E8DEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF5F5F5FACFCFCF65000000000000000000000000000000000000
                000000000000DCDCDCB1FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFECECECF4C8C8C81C0000000000000000000000000000
                0000C6C6C63AF4F4F4FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFDFEFFFFB6C8D8FF746765FFF7EFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFEFEFEFFD8D8D8960000000100000000000000000000
                0000DBDBDB9CFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FFFFB6C8D8FF454951FFBFAB96FFFFFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBE7CCCCCC140000000000000000D1D1
                D10BE7E7E7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB1C5
                D6FF494A51FFBFAB96FFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFCECECE440000000000000000C2C2
                C219EEEEEEF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFFFB6C8D8FF4346
                4FFFA49380FFE6E4E3FFE6E6E6FFE6E6E6FFE6E6E6FFE6E6E6FFE8E7E6FFFDFB
                F8FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFD2D2D26C0000000000000000C4C4
                C41EF0F0F0FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E3F0FF454955FF3F3F
                3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF4F473FFFF0E0
                CEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFD2D2D27D0000000000000000C1C1
                C11DF0F0F0FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFFFF90A4B8FF3F3F
                42FF958879FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFB7B7B7FFBDBAB7FFF9F3
                ECFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFD3D3D3790000000000000000C2C2
                C215ECECECE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFFFF8C9F
                B2FF55504EFFDDCDBBFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFD1D1D15F0000000000000000CCCC
                CC05E4E4E4C7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FD
                FFFF8C9FB2FF504B49FFE3D2C1FFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FDCECECE2F00000000000000000000
                0000D1D1D17BFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFAFDFFFF90A4B8FF63554FFFF7EDE0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5D0CCCCCC0A00000000000000000000
                0000C5C5C516EBEBEBEEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFAFDFFFFE6E3E3FFFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF9F9F9FFD0D0D0660000000000000000000000000000
                000000000000D3D3D37AF9F9F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEE2E2E2D2AAAAAA060000000000000000000000000000
                000000000000AAAAAA06DBDBDBAAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFEFEFEFFEAEAEAE5C8C8C82A000000000000000000000000000000000000
                00000000000000000000C6C6C612DBDBDBAAF9F9F9FEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
                FDFFE8E8E8DECDCDCD3D00000000000000000000000000000000000000000000
                0000000000000000000000000000AAAAAA06D3D3D37AEBEBEBEEFEFEFEFEFEFE
                FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF4F4F4FCDCDC
                DCB1C1C1C1210000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000C5C5C516D1D1D17BE4E4
                E4C7ECECECE9F0F0F0FAF0F0F0FDEEEEEEF2E7E7E7D7DBDBDB9CC6C6C63A0000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000CCCC
                CC05C2C2C215C1C1C11DC4C4C41EC2C2C219D1D1D10B00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              OnClick = SpeedButtonSNPrevClick
              ExplicitTop = 6
            end
            object SpeedButtonSNNext: TsSpeedButton
              AlignWithMargins = True
              Left = 30
              Top = 0
              Width = 27
              Height = 31
              Hint = #1042#1087#1077#1088#1105#1076
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000CCCCCC0ACACA
                CA30D1D1D15FD3D3D379D2D2D27DD2D2D26CCECECE44CCCCCC14000000010000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000AAAAAA06D0D0D066E5E5E5D0F2F2
                F2FDFAFAFAFFFDFDFDFFFEFEFEFFFBFBFBFFF5F5F5FFECECECE7D8D8D896C8C8
                C81C000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000C8C8C82AE1E1E1D3F9F9F9FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFECEC
                ECF4CFCFCF65AAAAAA0300000000000000000000000000000000000000000000
                00000000000000000000CDCDCD3DEBEBEBE5FFFFFFFEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF5F5F5FAD7D7D785AAAAAA03000000000000000000000000000000000000
                000000000000C1C1C121E8E8E8DEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF5F5F5FACFCFCF65000000000000000000000000000000000000
                000000000000DCDCDCB1FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFECECECF4C8C8C81C0000000000000000000000000000
                0000C6C6C63AF4F4F4FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFC5D8E9FF6E6363FFEDE2D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFEFEFEFFD8D8D8960000000100000000000000000000
                0000DBDBDB9CFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF3F9FFFF6E7F90FF6A5B53FFF0E5D7FFFFFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBE7CCCCCC140000000000000000D1D1
                D10BE7E7E7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF3F9FFFF738596FF64554DFFF0E5D7FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFCECECE440000000000000000C2C2
                C219EEEEEEF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F6F9FFE6E6E6FFE6E6
                E6FFE6E6E6FFE6E6E6FFE6E6E6FFD8DEE3FF61707EFF6A5B53FFEDE2D4FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFD2D2D26C0000000000000000C4C4
                C41EF0F0F0FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FB9D1FF3F3F3FFF3F3F
                3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF766358FFFFF9
                EEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFD2D2D27D0000000000000000C1C1
                C11DF0F0F0FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBE4EDFFB7B7B7FFB7B7
                B7FFB7B7B7FFB7B7B7FFB7B7B7FFB3B5B7FF5F6C78FF514945FFD8C8B6FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFD3D3D3790000000000000000C2C2
                C215ECECECE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFBFDFFFF96AABDFF514A49FFD8C8B6FFFFFEFDFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFD1D1D15F0000000000000000CCCC
                CC05E4E4E4C7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFEFEFFFF96ABBFFF514A49FFD6C5B1FFFFFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FDCECECE2F00000000000000000000
                0000D1D1D17BFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFBED4E9FF514949FFD8C8B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5D0CCCCCC0A00000000000000000000
                0000C5C5C516EBEBEBEEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFAFDFFFFE6E3E3FFFFFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF9F9F9FFD0D0D0660000000000000000000000000000
                000000000000D3D3D37AF9F9F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEE2E2E2D2AAAAAA060000000000000000000000000000
                000000000000AAAAAA06DBDBDBAAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFEFEFEFFEAEAEAE5C8C8C82A000000000000000000000000000000000000
                00000000000000000000C6C6C612DBDBDBAAF9F9F9FEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
                FDFFE8E8E8DECDCDCD3D00000000000000000000000000000000000000000000
                0000000000000000000000000000AAAAAA06D3D3D37AEBEBEBEEFEFEFEFEFEFE
                FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF4F4F4FCDCDC
                DCB1C1C1C1210000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000C5C5C516D1D1D17BE4E4
                E4C7ECECECE9F0F0F0FAF0F0F0FDEEEEEEF2E7E7E7D7DBDBDB9CC6C6C63A0000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000CCCC
                CC05C2C2C215C1C1C11DC4C4C41EC2C2C219D1D1D10B00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              OnClick = SpeedButtonSNNextClick
              ExplicitLeft = 8
            end
            object SpeedButtonSNRefresh: TsSpeedButton
              AlignWithMargins = True
              Left = 60
              Top = 0
              Width = 27
              Height = 31
              Hint = #1054#1073#1085#1086#1074#1080#1090#1100
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000CCCCCC0ACACA
                CA30D1D1D15FD3D3D379D2D2D27DD2D2D26CCECECE44CCCCCC14000000010000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000AAAAAA06D0D0D066E5E5E5D0F2F2
                F2FDFAFAFAFFFDFDFDFFFEFEFEFFFBFBFBFFF5F5F5FFECECECE7D8D8D896C8C8
                C81C000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000C8C8C82AE1E1E1D3F9F9F9FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFECEC
                ECF4CFCFCF65AAAAAA0300000000000000000000000000000000000000000000
                00000000000000000000CDCDCD3DEBEBEBE5FFFFFFFEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF5F5F5FAD7D7D785AAAAAA03000000000000000000000000000000000000
                000000000000C1C1C121E8E8E8DEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF5F5F5FACFCFCF65000000000000000000000000000000000000
                000000000000DCDCDCB1FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFE1E7ECFFD1CECEFFFAF6F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFECECECF4C8C8C81C0000000000000000000000000000
                0000C6C6C63AF4F4F4FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBD7
                E1FF69727CFF484B4DFF403F3FFF54524FFF91847BFFF4EDE1FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFEFEFEFFD8D8D8960000000100000000000000000000
                0000DBDBDB9CFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFC6D7E9FF494B
                51FF9B8C7AFFCFCFCFFFCFCFCFFFC6C9CCFF5F6E7EFF6C5E51FFF6EDE1FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBE7CCCCCC140000000000000000D1D1
                D10BE7E7E7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF7FCFF546577FFB79E
                89FFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFF6FFFFFF63718AFFA08871FFFFFF
                FDFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFCECECE440000000000000000C2C2
                C219EEEEEEF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0D7E9FF584845FFFCF4
                E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3DEE9FFB5ABA8FFFFFC
                F5FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFD2D2D26C0000000000000000C4C4
                C41EF0F0F0FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2BCD3FF786249FFFEFE
                FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFD2D2D27D0000000000000000C1C1
                C11DF0F0F0FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7CFE4FF634E41FFFEFB
                F2FFFFFFFFFFFFFFFFFFFFFFFFFFB0C0CEFF868686FF868686FF918C86FFF5EB
                E0FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFD3D3D3790000000000000000C2C2
                C215ECECECE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4F0F8FF4C5666FFD1BA
                A4FFFFFFFEFFFFFFFFFFFFFFFFFFEDF3F9FF6A7D8DFF3F3F3FFF4F473FFFF0E0
                CEFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFD1D1D15F0000000000000000CCCC
                CC05E4E4E4C7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFA0B7CFFF544A
                47FFCBBCA8FFFEFEFEFFFEFEFEFFF1F7FAFF8092A7FF3F3F3FFF4F473FFFF0E0
                CEFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FDCECECE2F00000000000000000000
                0000D1D1D17BFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA2B3
                C3FF4B5158FF3F3F3FFF3F3F3FFF3F3F3FFF655A54FFD1CABEFF7B858DFFF0E0
                CEFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5D0CCCCCC0A00000000000000000000
                0000C5C5C516EBEBEBEEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFEDF0F3FFBFC8D1FF9F9F9FFFDED5CCFFF7F4F1FFFFFFFFFFF5F7F9FFFAF8
                F6FFFFFFFFFFFFFFFFFFF9F9F9FFD0D0D0660000000000000000000000000000
                000000000000D3D3D37AF9F9F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEE2E2E2D2AAAAAA060000000000000000000000000000
                000000000000AAAAAA06DBDBDBAAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFEFEFEFFEAEAEAE5C8C8C82A000000000000000000000000000000000000
                00000000000000000000C6C6C612DBDBDBAAF9F9F9FEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
                FDFFE8E8E8DECDCDCD3D00000000000000000000000000000000000000000000
                0000000000000000000000000000AAAAAA06D3D3D37AEBEBEBEEFEFEFEFEFEFE
                FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF4F4F4FCDCDC
                DCB1C1C1C1210000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000C5C5C516D1D1D17BE4E4
                E4C7ECECECE9F0F0F0FAF0F0F0FDEEEEEEF2E7E7E7D7DBDBDB9CC6C6C63A0000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000CCCC
                CC05C2C2C215C1C1C11DC4C4C41EC2C2C219D1D1D10B00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              OnClick = SpeedButtonSNRefreshClick
              ExplicitLeft = 110
              ExplicitTop = -3
            end
            object SpeedButtonWBHome: TsSpeedButton
              AlignWithMargins = True
              Left = 90
              Top = 0
              Width = 27
              Height = 31
              Hint = #1054#1090#1082#1088#1099#1090#1100' '#1089#1072#1081#1090' '#1089#1077#1088#1074#1077#1088#1072
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000CCCCCC0ACACA
                CA30D1D1D15FD3D3D379D2D2D27DD2D2D26CCECECE44CCCCCC14000000010000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000AAAAAA06D0D0D066E5E5E5D0F2F2
                F2FDFAFAFAFFFDFDFDFFFEFEFEFFFBFBFBFFF5F5F5FFECECECE7D8D8D896C8C8
                C81C000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000C8C8C82AE1E1E1D3F9F9F9FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFECEC
                ECF4CFCFCF65AAAAAA0300000000000000000000000000000000000000000000
                00000000000000000000CDCDCD3DEBEBEBE5FFFFFFFEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF5F5F5FAD7D7D785AAAAAA03000000000000000000000000000000000000
                000000000000C1C1C121E8E8E8DEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFF5F5F5FACFCFCF65000000000000000000000000000000000000
                000000000000DCDCDCB1FDFDFDFFFFFFFFFFFFFFFFFFFDFFFFFFD7DAE1FFCECE
                CEFFD2D0CEFFF9F5F0FFFFFFFFFFE4EAF0FFCECECEFFCECECEFFEDE6E1FFFFFF
                FFFFFFFFFFFFFFFFFFFFECECECF4C8C8C81C0000000000000000000000000000
                0000C6C6C63AF4F4F4FCFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFF606F89FF3F3F
                3FFF4B433FFFE8D8C3FFFFFFFFFF93ADC5FF3F3F3FFF3F3F3FFFB99E88FFFFFF
                FFFFFFFFFFFFFFFFFFFFFEFEFEFFD8D8D8960000000100000000000000000000
                0000DBDBDB9CFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFF606F89FF3F3F
                3FFF4B433FFFE8D8C3FFFFFFFFFF93ADC5FF3F3F3FFF3F3F3FFFB99E88FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEBE7CCCCCC140000000000000000D1D1
                D10BE7E7E7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFF606F89FF3F3F
                3FFF4B433FFFE8D8C3FFFFFFFFFF93ADC5FF3F3F3FFF3F3F3FFFB99E88FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5FFCECECE440000000000000000C2C2
                C219EEEEEEF2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFFFFF606F89FF3F3F
                3FFF45413FFF938B81FF9E9E9EFF697582FF3F3F3FFF3F3F3FFFB99E88FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFD2D2D26C0000000000000000C4C4
                C41EF0F0F0FDFFFFFFFFFFFFFFFFFFFFFFFFDBE4EDFFB2B6B6FF535C6DFF3F3F
                3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF8B7A6CFFB6B6
                B6FFFEF6EDFFFFFFFFFFFFFFFFFFFEFEFEFFD2D2D27D0000000000000000C1C1
                C11DF0F0F0FAFFFFFFFFFFFFFFFFFFFFFFFFF6FCFFFF8494A7FF3F3F43FF3F3F
                3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF4E4443FFCBBB
                A7FFFFFEFEFFFFFFFFFFFFFFFFFFFDFDFDFFD3D3D3790000000000000000C2C2
                C215ECECECE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FCFDFF93A5B9FF3F42
                45FF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF574E45FFD5C5B7FFFFFF
                FDFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAFFD1D1D15F0000000000000000CCCC
                CC05E4E4E4C7FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9CB1
                C5FF424548FF3F3F3FFF3F3F3FFF3F3F3FFF5A5148FFE3D5C5FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FDCECECE2F00000000000000000000
                0000D1D1D17BFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFB2C5D3FF474B55FF3F3F3FFF6B5E56FFECE1D3FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5D0CCCCCC0A00000000000000000000
                0000C5C5C516EBEBEBEEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFEFFFFFFC3D2DFFF7E7374FFF0EADDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFF9F9F9FFD0D0D0660000000000000000000000000000
                000000000000D3D3D37AF9F9F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEE2E2E2D2AAAAAA060000000000000000000000000000
                000000000000AAAAAA06DBDBDBAAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFEFEFEFFEAEAEAE5C8C8C82A000000000000000000000000000000000000
                00000000000000000000C6C6C612DBDBDBAAF9F9F9FEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
                FDFFE8E8E8DECDCDCD3D00000000000000000000000000000000000000000000
                0000000000000000000000000000AAAAAA06D3D3D37AEBEBEBEEFEFEFEFEFEFE
                FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF4F4F4FCDCDC
                DCB1C1C1C1210000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000C5C5C516D1D1D17BE4E4
                E4C7ECECECE9F0F0F0FAF0F0F0FDEEEEEEF2E7E7E7D7DBDBDB9CC6C6C63A0000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000CCCC
                CC05C2C2C215C1C1C11DC4C4C41EC2C2C219D1D1D10B00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              OnClick = SpeedButtonWBHomeClick
              ExplicitTop = -3
            end
            object SpeedButtonMap: TsSpeedButton
              AlignWithMargins = True
              Left = 120
              Top = 0
              Width = 27
              Height = 31
              Hint = #1054#1090#1082#1088#1099#1090#1100' '#1082#1072#1088#1090#1091' '#1089#1077#1088#1074#1077#1088#1072
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000CCCCCC0ACACA
                CA30D1D1D15FD3D3D379D2D2D27DD2D2D26CCECECE44CCCCCC14000000010000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000AAAAAA06D0D0D066E5E5E5D0F2F2
                F2FDFAFAFAFFFDFDFDFFFEFEFEFFFBFBFBFFF5F5F5FFECECECE7D8D8D896C8C8
                C81C000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000C8C8C82AE1E1E1D3F9F9F9FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFECEC
                ECF4CFCFCF65AAAAAA0300000000000000000000000000000000000000000000
                00000000000000000000CDCDCD3DEBEBEBE5FFFFFFFEFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFF5F5F5FAD7D7D785AAAAAA03000000000000000000000000000000000000
                000000000000C1C1C121E8E8E8DEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
                FEFFF9FBFEFFBDC3C8FFB6B6B6FFDAD2C9FFFEFEFEFFFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFF5F5F5FACFCFCF65000000000000000000000000000000000000
                000000000000DCDCDCB1FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFECF3F9FF8291
                9FFF404346FF3F3F3FFF3F3F3FFF3F3F3FFF554D44FFBCAFA2FFFDFBF8FFFFFF
                FFFFFFFFFFFFFFFFFFFFECECECF4C8C8C81C0000000000000000000000000000
                0000C6C6C63AF4F4F4FCFFFFFFFFFFFFFFFFFFFFFFFFE4EFF5FF5D6B7EFF3F3F
                3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF43413FFFA18D7BFFFDFB
                F6FFFFFFFFFFFFFFFFFFFEFEFEFFD8D8D8960000000100000000000000000000
                0000DBDBDB9CFEFEFEFFFFFFFFFFFFFFFFFFF9FEFEFF70829AFF483F3FFFA7A8
                9EFF565F68FF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF43413FFFC5AF
                9AFFFEFEFEFFFFFFFFFFFFFFFFFFEBEBEBE7CCCCCC140000000000000000D1D1
                D10BE7E7E7D7FFFFFFFFFFFFFFFFFFFFFFFFC6D9EAFF40454CFF3F3F3FFFBCA5
                8DFFFCFFFEFFBFC9D2FF636C7AFF3F4143FF3F3F3FFF3F3F3FFF3F3F3FFF6752
                44FFFEFBF2FFFFFFFFFFFFFFFFFFF5F5F5FFCECECE440000000000000000C2C2
                C219EEEEEEF2FFFFFFFFFFFFFFFFFFFFFFFF91AAC1FF3F3F3FFF3F3F3FFF6959
                4AFFF9F1E8FFFDFFFFFFEBECEEFFB4C8D5FF3F4149FF3F3F3FFF3F3F3FFF403F
                3FFFEFD9C0FFFFFFFFFFFFFFFFFFFBFBFBFFD2D2D26C0000000000000000C4C4
                C41EF0F0F0FDFFFFFFFFFFFFFFFFFFFFFFFF7E98B0FF3F3F3FFF3F3F3FFF413F
                3FFFC9B39BFFC6DCEEFF6D5F52FFEFEEEAFF5A6E83FF3F3F3FFF3F3F3FFF3F3F
                3FFFE0C7AEFFFFFFFFFFFFFFFFFFFEFEFEFFD2D2D27D0000000000000000C1C1
                C11DF0F0F0FAFFFFFFFFFFFFFFFFFFFFFFFF8AA4BBFF3F3F3FFF3F3F3FFF3F3F
                3FFF725D4FFFF8F9EFFFD7D3D4FFFFFFFDFFB1C9E0FF3F3F3FFF3F3F3FFF3F3F
                3FFFEBD4BAFFFFFFFFFFFFFFFFFFFDFDFDFFD3D3D3790000000000000000C2C2
                C215ECECECE9FFFFFFFFFFFFFFFFFFFFFFFFB8CDE0FF3F4248FF3F3F3FFF3F3F
                3FFF41403FFF685D51FFBFB5ADFFF6F2EEFFF5FCFFFF506276FF3F3F3FFF5A49
                40FFFDF6E6FFFFFFFFFFFFFFFFFFFAFAFAFFD1D1D15F0000000000000000CCCC
                CC05E4E4E4C7FEFEFEFFFFFFFFFFFFFFFFFFEFF9FDFF59677BFF3F3F3FFF3F3F
                3FFF3F3F3FFF3F3F3FFF3F3F3FFF5F5651FFA8A098FF9CABB7FF3F3F42FFA991
                7AFFFEFEFEFFFFFFFFFFFFFFFFFFF2F2F2FDCECECE2F00000000000000000000
                0000D1D1D17BFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFCDDDE9FF49515EFF3F3F
                3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF7E6B5BFFF9F3
                EAFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E5D0CCCCCC0A00000000000000000000
                0000C5C5C516EBEBEBEEFEFEFEFFFFFFFFFFFFFFFFFFFEFFFFFFD1DDE9FF5D68
                72FF404142FF3F3F3FFF3F3F3FFF3F3F3FFF484542FF908272FFF5EFE8FFFFFF
                FFFFFFFFFFFFFFFFFFFFF9F9F9FFD0D0D0660000000000000000000000000000
                000000000000D3D3D37AF9F9F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FB
                FFFFCDD2D5FF90969EFF878787FFB0A79EFFE1DBD5FFFFFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFEE2E2E2D2AAAAAA060000000000000000000000000000
                000000000000AAAAAA06DBDBDBAAFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFEFEFEFFEAEAEAE5C8C8C82A000000000000000000000000000000000000
                00000000000000000000C6C6C612DBDBDBAAF9F9F9FEFEFEFEFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
                FDFFE8E8E8DECDCDCD3D00000000000000000000000000000000000000000000
                0000000000000000000000000000AAAAAA06D3D3D37AEBEBEBEEFEFEFEFEFEFE
                FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFF4F4F4FCDCDC
                DCB1C1C1C1210000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000C5C5C516D1D1D17BE4E4
                E4C7ECECECE9F0F0F0FAF0F0F0FDEEEEEEF2E7E7E7D7DBDBDB9CC6C6C63A0000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000000000CCCC
                CC05C2C2C215C1C1C11DC4C4C41EC2C2C219D1D1D10B00000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              OnClick = SpeedButtonMapClick
              ExplicitLeft = 146
              ExplicitTop = -3
            end
            object SpeedButtonClearCookies: TsSpeedButton
              AlignWithMargins = True
              Left = 900
              Top = 0
              Width = 27
              Height = 31
              Hint = #1054#1095#1080#1089#1090#1080#1090#1100' Cookies '#1080' '#1082#1101#1096
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alRight
              Flat = True
              Glyph.Data = {
                36090000424D3609000000000000360000002800000018000000180000000100
                2000000000000009000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000006666
                66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000006F6F6F178F8F8F7BB9B9
                B9C7CACACAE9D1D1D1FAD1D1D1FACACACAE9B9B9B9C78F8F8F7B6F6F6F170000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000555555069494947AC6C6C6EEF0F0F0FFF3F3
                F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF0F0F0FFC6C6C6EE9696
                967A555555060000000000000000000000000000000000000000000000000000
                0000000000000000000080808012A7A7A7AAE6E6E6FEF2F2F2FFF3F3F3FFF3F3
                F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFE6E6
                E6FEA5A5A5AA8080801200000000000000000000000000000000000000000000
                00000000000055555506A5A5A5AAECECECFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
                F3FFF2F2F3FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFF3F3
                F3FFECECECFFA5A5A5AA55555506000000000000000000000000000000000000
                0000000000009494947AE6E6E6FEF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFD0DC
                E2FF808592FF41464CFF3B3B3BFF403E3BFF7A756EFFD6C8BCFFF3F3F1FFF3F3
                F3FFF3F3F3FFE6E6E6FE9696967A000000000000000000000000000000000000
                00006F6F6F17C6C6C6EEF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFCBDEE6FF4548
                57FF6A6155FFA49C97FFDCDCD8FFA9B1B9FF717982FF454546FFB3A290FFF3F1
                EFFFF3F3F3FFF2F2F2FFC6C6C6EE6F6F6F170000000000000000000000000000
                00008F8F8F7BF0F0F0FEF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF0F3F3FFB9B8
                BFFFEFEDE6FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FF9CB0C2FF474445FFCEBC
                A7FFF3F2F2FFF3F3F3FFF0F0F0FF8F8F8F7B0000000000000000000000006666
                6605B9B9B9C7F2F2F2FFF3F3F3FFF3F3F3FFE2E9EDFF868B93FFE2D7CBFFF3F3
                F3FFF3F3F3FFF3F3F3FFF3F3F3FFE2E7EDFFB1ACACFFF2F2EDFF7890A7FF715A
                48FFF2F2EDFFF3F3F3FFF3F3F3FFB9B9B9C76666660500000000000000006D6D
                6D15CACACAE9F3F3F3FFF3F3F3FFE5EBEEFF607184FF3B3B3CFF60554AFFE4D9
                CEFFF3F3F3FFF0F3F3FFB0BEC9FF5E5D67FFA18F7DFFF2F2F0FFC5D6E3FF3E40
                4BFFEDDAC3FFF3F3F3FFF3F3F3FFCACACAE96D6D6D1500000000000000007272
                721DD2D2D2FAF3F3F3FFF1F3F3FFA8B6C5FF757A80FF414143FF756E66FFA89D
                92FFF1EEEBFFDDF3F3FF554A58FFD8CDC1FFF3F3F3FFF3F3F3FFDCE4EBFF3B4C
                5AFFE0CAB0FFF3F3F3FFF3F3F3FFD1D1D1FA7272721D00000000000000007272
                721DD2D2D2FAF3F3F3FFF3F3F3FFF3F3F3FFDCEBF3FF4A4E5DFFC8B49EFFF3F3
                F3FFF3F3F3FFDDF3F3FF61535DFFEFE8E0FFF3F3F3FFF3F3F3FFD0DEE7FF3B44
                52FFEAD5BDFFF3F3F3FFF3F3F3FFD1D1D1FA7272721D00000000000000006D6D
                6D15C9C9C9E9F3F3F3FFF3F3F3FFF3F3F3FFF1F3F3FF60768CFF8F7864FFF2F2
                F0FFF3F3F3FFDDF3F3FF61535DFFEFE8E0FFF3F3F3FFF3F3F3FF8FA6BDFF604B
                40FFF2F0E5FFF3F3F3FFF3F3F3FFCACACAE96D6D6D1500000000000000006666
                6605B7B7B7C7F2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFB1C4D5FF413E44FFC8B7
                9FFFF2F2F2FFEDF3F3FFCECBCDFFF2F0EEFFF3F3F3FFC6D4E1FF474D55FFB5A0
                89FFF3F2F2FFF3F3F3FFF3F3F3FFB9B9B9C76666660500000000000000000000
                00008F8F8F7BF0F0F0FEF3F3F3FFF3F3F3FFF3F3F3FFF0F3F3FF92A5B8FF443E
                41FF9A8F80FFD0CBC4FFF2F2F2FFD1D6DCFF9EA7AFFF404851FF8E7E6DFFF3ED
                E8FFF3F3F3FFF3F3F3FFF0F0F0FF8F8F8F7B0000000000000000000000000000
                000074747416C5C5C5EEF2F2F2FFF3F3F3FFF3F3F3FFF3F3F3FFF0F3F3FFABBA
                C6FF565964FF434240FF515151FF434446FF504E4CFFB1A092FFF0EDE8FFF3F3
                F3FFF3F3F3FFF2F2F2FFC6C6C6EE6F6F6F170000000000000000000000000000
                0000000000009494947AE6E6E6FEF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
                F3FFEFF1F3FFC9CDD0FFC5C5C5FFC9C7C5FFEFEBE7FFF3F3F3FFF3F3F3FFF3F3
                F3FFF3F3F3FFE6E6E6FE9494947A000000000000000000000000000000000000
                00000000000055555506A5A5A5AAECECECFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
                F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
                F3FFECECECFFA5A5A5AA55555506000000000000000000000000000000000000
                0000000000000000000071717112A5A5A5AAE6E6E6FEF2F2F2FFF3F3F3FFF3F3
                F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFE6E6
                E6FEA5A5A5AA8080801200000000000000000000000000000000000000000000
                0000000000000000000000000000555555069494947AC5C5C5EEF0F0F0FEF2F2
                F2FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF2F2F2FFF0F0F0FEC6C6C6EE9494
                947A555555060000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000747474168F8F8F7BB7B7
                B7C7C9C9C9E9D2D2D2FAD2D2D2FACACACAE9B9B9B9C78F8F8F7B6F6F6F170000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000006666
                66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              OnClick = SpeedButtonClearCookiesClick
              ExplicitLeft = 256
            end
            object EditWebURL: TEdit
              AlignWithMargins = True
              Left = 153
              Top = 3
              Width = 744
              Height = 25
              Align = alClient
              BevelInner = bvNone
              BevelKind = bkFlat
              BorderStyle = bsNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentColor = True
              ParentFont = False
              TabOrder = 0
              OnKeyPress = EditWebURLKeyPress
            end
          end
          object ProgressBarWBLoad: TProgressBar
            Left = 0
            Top = 31
            Width = 930
            Height = 3
            Align = alTop
            TabOrder = 2
          end
        end
        object TabSheetSettings: TTabSheet
          Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
          ImageIndex = 6
          TabVisible = False
          object ScrollBox1: TScrollBox
            Left = 0
            Top = 0
            Width = 930
            Height = 635
            HorzScrollBar.Smooth = True
            HorzScrollBar.Style = ssFlat
            HorzScrollBar.Tracking = True
            VertScrollBar.Position = 56
            VertScrollBar.Smooth = True
            VertScrollBar.Style = ssFlat
            VertScrollBar.Tracking = True
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = 2171169
            ParentColor = False
            TabOrder = 0
            object Panel8: TPanel
              Left = 0
              Top = -56
              Width = 913
              Height = 703
              Align = alTop
              AutoSize = True
              BevelOuter = bvNone
              Color = 2171169
              ParentBackground = False
              TabOrder = 0
              object Panel16: TPanel
                AlignWithMargins = True
                Left = 10
                Top = 46
                Width = 893
                Height = 72
                Margins.Left = 10
                Margins.Top = 5
                Margins.Right = 10
                Align = alTop
                BevelOuter = bvNone
                Color = 3355443
                ParentBackground = False
                TabOrder = 0
                object Label10: TLabel
                  Left = 5
                  Top = 25
                  Width = 341
                  Height = 39
                  Caption = 
                    #1054#1087#1088#1077#1076#1077#1083#1103#1077#1090' '#1075#1083#1072#1074#1085#1086#1075#1086' ('#1077#1076#1080#1085#1089#1090#1074#1077#1085#1085#1086#1075#1086') '#1086#1073#1088#1072#1073#1086#1090#1095#1080#1082#1072' '#1074#1089#1077#1093' '#1076#1072#1085#1085#1099#1093'.'#13#10#1055#1086 +
                    #1089#1099#1083#1072#1077#1090' '#1082#1086#1084#1072#1085#1076#1099' '#1085#1072' '#1087#1086#1083#1091#1095#1077#1085#1080#1077' '#1095#1077#1088#1077#1079' RCON.'#13#10#1059#1087#1088#1072#1074#1083#1103#1077#1090' '#1073#1086#1090#1072#1084#1080' Telegr' +
                    'am '#1080' VK.'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object Label28: TLabel
                  Left = 24
                  Top = 7
                  Width = 98
                  Height = 13
                  Caption = #1043#1083#1072#1074#1085#1099#1081' '#1084#1077#1085#1077#1076#1078#1077#1088
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                end
                object CheckBoxMainManager: TCheckBox
                  Left = 5
                  Top = 5
                  Width = 13
                  Height = 17
                  TabOrder = 0
                  OnClick = CheckBoxMainManagerClick
                end
              end
              object PanelDB: TPanel
                AlignWithMargins = True
                Left = 10
                Top = 289
                Width = 893
                Height = 53
                Margins.Left = 10
                Margins.Top = 5
                Margins.Right = 10
                Align = alTop
                BevelOuter = bvNone
                Color = 3355443
                ParentBackground = False
                ShowCaption = False
                TabOrder = 1
                object Label15: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 150
                  Height = 17
                  Align = alLeft
                  Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093' Unturned'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitHeight = 16
                end
                object Panel21: TPanel
                  Left = 0
                  Top = 23
                  Width = 893
                  Height = 30
                  Align = alBottom
                  Alignment = taLeftJustify
                  BevelEdges = [beBottom]
                  BevelOuter = bvNone
                  Color = 16316664
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object sSpeedButton7: TsSpeedButton
                    Left = 760
                    Top = 0
                    Width = 30
                    Height = 30
                    Align = alLeft
                    Flat = True
                    OnClick = ButtonDBReconClick
                    Images = ImageList16
                    ImageIndex = 0
                    WordWrap = False
                    ExplicitLeft = 140
                  end
                  object EditDBHost: TEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 150
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    Text = '188.234.213.65'
                    TextHint = 'IP-'#1072#1076#1088#1077#1089
                  end
                  object EditDBPort: TEdit
                    AlignWithMargins = True
                    Left = 159
                    Top = 3
                    Width = 91
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    NumbersOnly = True
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 1
                    Text = '3333'
                    TextHint = #1055#1086#1088#1090
                  end
                  object EditDBDatabase: TEdit
                    AlignWithMargins = True
                    Left = 256
                    Top = 3
                    Width = 163
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 2
                    Text = 'unturned_russia1'
                    TextHint = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
                  end
                  object EditDBUser: TEdit
                    AlignWithMargins = True
                    Left = 425
                    Top = 3
                    Width = 163
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 3
                    Text = 'root'
                    TextHint = #1051#1086#1075#1080#1085
                  end
                  object EditDBPass: TEdit
                    AlignWithMargins = True
                    Left = 594
                    Top = 3
                    Width = 163
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    PasswordChar = #9679
                    TabOrder = 4
                    Text = 'aVIPs22031994'
                    TextHint = #1055#1072#1088#1086#1083#1100
                  end
                end
              end
              object PanelManager: TPanel
                AlignWithMargins = True
                Left = 10
                Top = 167
                Width = 893
                Height = 53
                Margins.Left = 10
                Margins.Top = 5
                Margins.Right = 10
                Align = alTop
                BevelOuter = bvNone
                Color = 3355443
                ParentBackground = False
                ShowCaption = False
                TabOrder = 2
                object Label11: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 127
                  Height = 17
                  Align = alLeft
                  Caption = #1051#1086#1082#1072#1083#1100#1085#1099#1077' '#1092#1072#1081#1083#1099
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitHeight = 16
                end
                object Panel20: TPanel
                  Left = 0
                  Top = 23
                  Width = 893
                  Height = 30
                  Align = alBottom
                  Alignment = taLeftJustify
                  BevelEdges = [beBottom]
                  BevelOuter = bvNone
                  Color = 16316664
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object sSpeedButton6: TsSpeedButton
                    Left = 760
                    Top = 0
                    Width = 30
                    Height = 30
                    Align = alLeft
                    Flat = True
                    OnClick = ButtonManagerReconClick
                    Images = ImageList16
                    ImageIndex = 0
                    WordWrap = False
                    ExplicitLeft = 140
                  end
                  object EditLocalPath: TEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 585
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    TextHint = #1055#1091#1090#1100' '#1082' '#1087#1072#1087#1082#1077' '#1089' '#1080#1075#1088#1086#1081
                  end
                  object EditServerName: TEdit
                    AlignWithMargins = True
                    Left = 594
                    Top = 3
                    Width = 163
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 1
                    TextHint = #1048#1084#1103' '#1089#1077#1088#1074#1077#1088#1072
                  end
                end
              end
              object PanelRCON: TPanel
                AlignWithMargins = True
                Left = 10
                Top = 228
                Width = 893
                Height = 53
                Margins.Left = 10
                Margins.Top = 5
                Margins.Right = 10
                Align = alTop
                BevelOuter = bvNone
                Color = 3355443
                ParentBackground = False
                ShowCaption = False
                TabOrder = 3
                object Label13: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 34
                  Height = 18
                  Align = alLeft
                  Caption = 'RCON'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitHeight = 16
                end
                object Panel10: TPanel
                  Left = 0
                  Top = 24
                  Width = 893
                  Height = 29
                  Align = alBottom
                  Alignment = taLeftJustify
                  BevelEdges = [beBottom]
                  BevelOuter = bvNone
                  Color = 16316664
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object sSpeedButton4: TsSpeedButton
                    Left = 422
                    Top = 0
                    Width = 30
                    Height = 29
                    Align = alLeft
                    Flat = True
                    OnClick = ButtonRCONReconClick
                    Images = ImageList16
                    ImageIndex = 0
                    WordWrap = False
                    ExplicitLeft = 153
                    ExplicitHeight = 30
                  end
                  object EditRCONHost: TEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 150
                    Height = 23
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    Text = '188.234.213.65'
                    TextHint = 'IP-'#1072#1076#1088#1077#1089
                  end
                  object EditRCONPort: TEdit
                    AlignWithMargins = True
                    Left = 159
                    Top = 3
                    Width = 91
                    Height = 23
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    NumbersOnly = True
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 1
                    Text = '27115'
                    TextHint = #1055#1086#1088#1090
                  end
                  object EditRCONPass: TEdit
                    AlignWithMargins = True
                    Left = 256
                    Top = 3
                    Width = 163
                    Height = 23
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    PasswordChar = #9679
                    TabOrder = 2
                    Text = 'aVIPs22031994'
                    TextHint = #1055#1072#1088#1086#1083#1100
                  end
                end
              end
              object PanelSDB: TPanel
                AlignWithMargins = True
                Left = 10
                Top = 350
                Width = 893
                Height = 53
                Margins.Left = 10
                Margins.Top = 5
                Margins.Right = 10
                Align = alTop
                BevelOuter = bvNone
                Color = 3355443
                ParentBackground = False
                ShowCaption = False
                TabOrder = 4
                object Label14: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 127
                  Height = 17
                  Align = alLeft
                  Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093' '#1089#1072#1081#1090#1072
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitHeight = 16
                end
                object Panel22: TPanel
                  Left = 0
                  Top = 23
                  Width = 893
                  Height = 30
                  Align = alBottom
                  Alignment = taLeftJustify
                  BevelEdges = [beBottom]
                  BevelOuter = bvNone
                  Color = 16316664
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object sSpeedButton10: TsSpeedButton
                    Left = 760
                    Top = 0
                    Width = 30
                    Height = 30
                    Align = alLeft
                    Flat = True
                    OnClick = ButtonSDBReconClick
                    Images = ImageList16
                    ImageIndex = 0
                    WordWrap = False
                    ExplicitLeft = 145
                  end
                  object EditSDBHost: TEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 150
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    Text = '188.234.213.65'
                    TextHint = 'IP-'#1072#1076#1088#1077#1089
                  end
                  object EditSDBPort: TEdit
                    AlignWithMargins = True
                    Left = 159
                    Top = 3
                    Width = 91
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    NumbersOnly = True
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 1
                    Text = '3331'
                    TextHint = #1055#1086#1088#1090
                  end
                  object EditSDBDatabase: TEdit
                    AlignWithMargins = True
                    Left = 256
                    Top = 3
                    Width = 163
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 2
                    Text = 'wordpress93'
                    TextHint = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
                  end
                  object EditSDBUser: TEdit
                    AlignWithMargins = True
                    Left = 425
                    Top = 3
                    Width = 163
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 3
                    Text = 'servermanager'
                    TextHint = #1051#1086#1075#1080#1085
                  end
                  object EditSDBPass: TEdit
                    AlignWithMargins = True
                    Left = 594
                    Top = 3
                    Width = 163
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    PasswordChar = #9679
                    TabOrder = 4
                    Text = '1q2w3e4r!@#$#@!'
                    TextHint = #1055#1072#1088#1086#1083#1100
                  end
                end
              end
              object Panel27: TPanel
                AlignWithMargins = True
                Left = 10
                Top = 131
                Width = 893
                Height = 28
                Margins.Left = 10
                Margins.Top = 10
                Margins.Right = 10
                Align = alTop
                BevelOuter = bvNone
                Color = 3355443
                ParentBackground = False
                TabOrder = 5
                object Label16: TLabel
                  AlignWithMargins = True
                  Left = 2
                  Top = 0
                  Width = 213
                  Height = 26
                  Margins.Left = 2
                  Margins.Top = 0
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alLeft
                  Caption = #1055#1072#1088#1072#1084#1077#1090#1088#1099' '#1087#1086#1076#1082#1083#1102#1095#1077#1085#1080#1081
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -19
                  Font.Name = 'Segoe UI Light'
                  Font.Style = []
                  ParentFont = False
                  ExplicitHeight = 25
                end
              end
              object Panel14: TPanel
                AlignWithMargins = True
                Left = 10
                Top = 10
                Width = 893
                Height = 28
                Margins.Left = 10
                Margins.Top = 10
                Margins.Right = 10
                Align = alTop
                BevelOuter = bvNone
                Color = 3355443
                ParentBackground = False
                TabOrder = 6
                object Label29: TLabel
                  AlignWithMargins = True
                  Left = 2
                  Top = 0
                  Width = 155
                  Height = 26
                  Margins.Left = 2
                  Margins.Top = 0
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alLeft
                  Caption = #1054#1073#1097#1080#1077' '#1087#1072#1088#1072#1084#1077#1090#1088#1099
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -19
                  Font.Name = 'Segoe UI Light'
                  Font.Style = []
                  ParentFont = False
                  ExplicitHeight = 25
                end
              end
              object PanelVK: TPanel
                AlignWithMargins = True
                Left = 10
                Top = 411
                Width = 893
                Height = 53
                Margins.Left = 10
                Margins.Top = 5
                Margins.Right = 10
                Align = alTop
                BevelOuter = bvNone
                Color = 3355443
                ParentBackground = False
                ShowCaption = False
                TabOrder = 7
                object Label12: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 67
                  Height = 17
                  Align = alLeft
                  Caption = #1043#1088#1091#1087#1087#1072' '#1042#1050
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitHeight = 16
                end
                object Panel5: TPanel
                  Left = 0
                  Top = 23
                  Width = 893
                  Height = 30
                  Align = alBottom
                  Alignment = taLeftJustify
                  BevelEdges = [beBottom]
                  BevelOuter = bvNone
                  Color = 16316664
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object SpeedButtonVKCon: TsSpeedButton
                    Left = 591
                    Top = 0
                    Width = 30
                    Height = 30
                    Align = alLeft
                    Flat = True
                    OnClick = SpeedButtonVKConClick
                    Images = ImageList16
                    ImageIndex = 0
                    WordWrap = False
                    ExplicitLeft = 145
                  end
                  object EditVKHTTP: TEdit
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 150
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    Text = 'https:\\vk.com'
                    TextHint = 'ID '#1075#1088#1091#1087#1087#1099' '#1042#1050
                  end
                  object EditVKGID: TEdit
                    AlignWithMargins = True
                    Left = 159
                    Top = 3
                    Width = 91
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 1
                    Text = '125679402'
                    TextHint = 'ID '#1075#1088#1091#1087#1087#1099' '#1042#1050
                  end
                  object EditVKLogin: TEdit
                    AlignWithMargins = True
                    Left = 256
                    Top = 3
                    Width = 163
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 2
                    Text = '+79326192572'
                    TextHint = #1051#1086#1075#1080#1085
                  end
                  object EditVKPass: TEdit
                    AlignWithMargins = True
                    Left = 425
                    Top = 3
                    Width = 163
                    Height = 24
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    PasswordChar = #9679
                    TabOrder = 3
                    Text = 'aVIPs22031994'
                    TextHint = #1055#1072#1088#1086#1083#1100
                  end
                end
              end
              object Panel9: TPanel
                AlignWithMargins = True
                Left = 10
                Top = 472
                Width = 893
                Height = 53
                Margins.Left = 10
                Margins.Top = 5
                Margins.Right = 10
                Align = alTop
                BevelOuter = bvNone
                Color = 3355443
                ParentBackground = False
                ShowCaption = False
                TabOrder = 8
                object Label23: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 108
                  Height = 18
                  Align = alLeft
                  Caption = #1040#1076#1088#1077#1089#1072' '#1089#1090#1088#1072#1085#1080#1094
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitHeight = 16
                end
                object Panel17: TPanel
                  Left = 0
                  Top = 24
                  Width = 893
                  Height = 29
                  Align = alBottom
                  Alignment = taLeftJustify
                  BevelEdges = [beBottom]
                  BevelOuter = bvNone
                  Color = 16316664
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object Label24: TLabel
                    AlignWithMargins = True
                    Left = 3
                    Top = 3
                    Width = 87
                    Height = 23
                    Align = alLeft
                    Caption = #1057#1072#1081#1090' '#1089#1077#1088#1074#1077#1088#1072':'
                    Layout = tlCenter
                    ExplicitHeight = 14
                  end
                  object Label25: TLabel
                    AlignWithMargins = True
                    Left = 425
                    Top = 3
                    Width = 95
                    Height = 23
                    Align = alLeft
                    Caption = #1050#1072#1088#1090#1072' '#1089#1077#1088#1074#1077#1088#1072':'
                    Layout = tlCenter
                    ExplicitHeight = 14
                  end
                  object EditSiteAddress: TEdit
                    AlignWithMargins = True
                    Left = 96
                    Top = 3
                    Width = 323
                    Height = 23
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 0
                    TextHint = 'http:\\unturned.hemulgm.ru'
                  end
                  object EditMapAddress: TEdit
                    AlignWithMargins = True
                    Left = 526
                    Top = 3
                    Width = 231
                    Height = 23
                    Align = alLeft
                    BevelInner = bvSpace
                    BevelKind = bkFlat
                    BevelOuter = bvRaised
                    BorderStyle = bsNone
                    Color = 3355443
                    Ctl3D = True
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clSilver
                    Font.Height = -15
                    Font.Name = 'Tahoma'
                    Font.Style = []
                    NumbersOnly = True
                    ParentCtl3D = False
                    ParentFont = False
                    TabOrder = 1
                    TextHint = 'http:\\hemulgm.ru:27888'
                  end
                end
              end
              object Panel32: TPanel
                AlignWithMargins = True
                Left = 10
                Top = 538
                Width = 893
                Height = 28
                Margins.Left = 10
                Margins.Top = 10
                Margins.Right = 10
                Align = alTop
                BevelOuter = bvNone
                Color = 3355443
                ParentBackground = False
                TabOrder = 9
                object Label42: TLabel
                  AlignWithMargins = True
                  Left = 2
                  Top = 0
                  Width = 109
                  Height = 26
                  Margins.Left = 2
                  Margins.Top = 0
                  Margins.Right = 2
                  Margins.Bottom = 2
                  Align = alLeft
                  Caption = #1048#1085#1089#1090#1088#1091#1084#1077#1085#1090#1099
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -19
                  Font.Name = 'Segoe UI Light'
                  Font.Style = []
                  ParentFont = False
                  ExplicitHeight = 25
                end
              end
              object Panel33: TPanel
                AlignWithMargins = True
                Left = 10
                Top = 574
                Width = 893
                Height = 53
                Margins.Left = 10
                Margins.Top = 5
                Margins.Right = 10
                Align = alTop
                BevelOuter = bvNone
                Color = 3355443
                ParentBackground = False
                ShowCaption = False
                TabOrder = 10
                object Label43: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 201
                  Height = 14
                  Align = alLeft
                  Caption = #1041#1072#1079#1072' '#1087#1088#1077#1076#1084#1077#1090#1086#1074' '#1080' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitHeight = 16
                end
                object Panel34: TPanel
                  Left = 0
                  Top = 20
                  Width = 893
                  Height = 33
                  Align = alBottom
                  Alignment = taLeftJustify
                  BevelEdges = [beBottom]
                  BevelOuter = bvNone
                  Color = 16316664
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object SpeedButtonUEUpdateVehicles: TsSpeedButton
                    Left = 185
                    Top = 0
                    Width = 311
                    Height = 33
                    Align = alLeft
                    Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1073#1072#1079#1091' '#1080#1079#1086#1073#1088#1072#1078#1077#1085#1080#1081' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
                    Flat = True
                    OnClick = SpeedButtonUEUpdateVehiclesClick
                    Images = ImageList16
                    ImageIndex = 0
                    WordWrap = False
                  end
                  object SpeedButtonUEUpdate: TsSpeedButton
                    Left = 0
                    Top = 0
                    Width = 185
                    Height = 33
                    Align = alLeft
                    Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1073#1072#1079#1091
                    Flat = True
                    OnClick = SpeedButtonUEUpdateClick
                    Images = ImageList16
                    ImageIndex = 0
                    WordWrap = False
                    ExplicitLeft = 8
                  end
                end
                object ProgressBarUELoad: TProgressBar
                  AlignWithMargins = True
                  Left = 210
                  Top = 7
                  Width = 675
                  Height = 8
                  Margins.Top = 7
                  Margins.Right = 8
                  Margins.Bottom = 5
                  Align = alClient
                  TabOrder = 1
                  Visible = False
                end
              end
              object Panel35: TPanel
                Left = 0
                Top = 691
                Width = 913
                Height = 12
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 11
              end
              object Panel42: TPanel
                AlignWithMargins = True
                Left = 10
                Top = 635
                Width = 893
                Height = 53
                Margins.Left = 10
                Margins.Top = 5
                Margins.Right = 10
                Align = alTop
                BevelOuter = bvNone
                Color = 3355443
                ParentBackground = False
                ShowCaption = False
                TabOrder = 12
                object Label45: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 55
                  Height = 14
                  Align = alLeft
                  Caption = #1041#1088#1072#1091#1079#1077#1088
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitHeight = 16
                end
                object Panel43: TPanel
                  Left = 0
                  Top = 20
                  Width = 893
                  Height = 33
                  Align = alBottom
                  Alignment = taLeftJustify
                  BevelEdges = [beBottom]
                  BevelOuter = bvNone
                  Color = 16316664
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -12
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object SpeedButtonFixIE: TsSpeedButton
                    Left = 0
                    Top = 0
                    Width = 228
                    Height = 33
                    Align = alLeft
                    Caption = #1055#1086#1095#1080#1085#1080#1090#1100' '#1074#1089#1090#1088#1086#1077#1085#1085#1099#1081' '#1073#1088#1072#1091#1079#1077#1088
                    Flat = True
                    OnClick = SpeedButtonFixIEClick
                    Images = ImageList16
                    WordWrap = False
                  end
                  object SpeedButtonClearCache: TsSpeedButton
                    Left = 228
                    Top = 0
                    Width = 99
                    Height = 33
                    Align = alLeft
                    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1082#1077#1096
                    Flat = True
                    OnClick = SpeedButtonClearCacheClick
                    Images = ImageList16
                    WordWrap = False
                  end
                end
              end
            end
          end
        end
        object TabSheetKits: TTabSheet
          Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072#1084#1080
          ImageIndex = 7
          TabVisible = False
          object Panel28: TPanel
            Left = 0
            Top = 0
            Width = 930
            Height = 635
            Align = alClient
            BevelOuter = bvNone
            Color = 2171169
            ParentBackground = False
            TabOrder = 0
            object Panel36: TPanel
              Left = 0
              Top = 382
              Width = 930
              Height = 253
              Align = alBottom
              BevelOuter = bvNone
              TabOrder = 0
              object Panel41: TPanel
                Left = 0
                Top = 0
                Width = 930
                Height = 29
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object Label44: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 164
                  Height = 23
                  Align = alLeft
                  Caption = #1057#1087#1080#1089#1086#1082' '#1089#1086#1086#1073#1097#1077#1085#1080#1081
                  Color = clSilver
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -19
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                end
                object SpeedButtonMSGAdd: TsSpeedButton
                  AlignWithMargins = True
                  Left = 173
                  Top = 6
                  Width = 23
                  Height = 20
                  Hint = #1044#1086#1073#1072#1074#1080#1090#1100
                  Margins.Top = 6
                  Align = alLeft
                  Flat = True
                  OnClick = SpeedButtonMSGAddClick
                  Images = ImageList16
                  TextAlignment = taLeftJustify
                  ImageIndex = 5
                  ExplicitLeft = 194
                  ExplicitTop = 7
                  ExplicitHeight = 22
                end
              end
              object TableExMSG: TTableEx
                AlignWithMargins = True
                Left = 5
                Top = 34
                Width = 920
                Height = 214
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                BevelInner = bvSpace
                BorderStyle = bsNone
                Color = 3355443
                DefaultRowHeight = 30
                TabOrder = 1
                OnDrawCellData = TableExMSGDrawCellData
                ItemIndex = -1
                OnItemColClick = TableExMSGItemColClick
                GetData = TableExMSGGetData
                OnEdit = TableExMSGEdit
                OnEditOk = TableExMSGEditOk
                Columns = <>
                CanNoSelect = False
                VisibleEdit = False
                ItemCount = 1
                LineColor = 3355443
                LineColorXor = 3355443
                LineHotColor = 6052956
                LineSelColor = 6710886
                ColumnsColor = 6052956
                FontHotLine.Charset = DEFAULT_CHARSET
                FontHotLine.Color = clSilver
                FontHotLine.Height = -11
                FontHotLine.Name = 'Tahoma'
                FontHotLine.Style = []
                FontLine.Charset = DEFAULT_CHARSET
                FontLine.Color = clSilver
                FontLine.Height = -11
                FontLine.Name = 'Tahoma'
                FontLine.Style = []
                FontSelLine.Charset = DEFAULT_CHARSET
                FontSelLine.Color = clWhite
                FontSelLine.Height = -11
                FontSelLine.Name = 'Tahoma'
                FontSelLine.Style = [fsBold]
                ColumnsFont.Charset = DEFAULT_CHARSET
                ColumnsFont.Color = clSilver
                ColumnsFont.Height = -11
                ColumnsFont.Name = 'Tahoma'
                ColumnsFont.Style = [fsBold]
              end
            end
            object Panel37: TPanel
              Left = 0
              Top = 0
              Width = 417
              Height = 382
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object TableExKits: TTableEx
                AlignWithMargins = True
                Left = 5
                Top = 34
                Width = 412
                Height = 343
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 0
                Margins.Bottom = 5
                Align = alClient
                BevelInner = bvSpace
                BorderStyle = bsNone
                Color = 3355443
                DefaultRowHeight = 30
                TabOrder = 0
                OnDrawCellData = TableExKitsDrawCellData
                ItemIndex = -1
                OnItemClick = TableExKitsItemClick
                OnItemColClick = TableExKitsItemColClick
                GetData = TableExKitsGetData
                OnEdit = TableExKitsEdit
                OnEditOk = TableExKitsEditOk
                Columns = <>
                CanNoSelect = False
                VisibleEdit = False
                ItemCount = 1
                LineColor = 3355443
                LineColorXor = 3355443
                LineHotColor = 6052956
                LineSelColor = 6710886
                ColumnsColor = 6052956
                FontHotLine.Charset = DEFAULT_CHARSET
                FontHotLine.Color = clSilver
                FontHotLine.Height = -11
                FontHotLine.Name = 'Tahoma'
                FontHotLine.Style = []
                FontLine.Charset = DEFAULT_CHARSET
                FontLine.Color = clSilver
                FontLine.Height = -11
                FontLine.Name = 'Tahoma'
                FontLine.Style = []
                FontSelLine.Charset = DEFAULT_CHARSET
                FontSelLine.Color = clWhite
                FontSelLine.Height = -11
                FontSelLine.Name = 'Tahoma'
                FontSelLine.Style = [fsBold]
                ColumnsFont.Charset = DEFAULT_CHARSET
                ColumnsFont.Color = clSilver
                ColumnsFont.Height = -11
                ColumnsFont.Name = 'Tahoma'
                ColumnsFont.Style = [fsBold]
              end
              object Panel38: TPanel
                Left = 0
                Top = 0
                Width = 417
                Height = 29
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                object Label17: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 139
                  Height = 23
                  Align = alLeft
                  Caption = #1057#1087#1080#1089#1086#1082' '#1085#1072#1073#1086#1088#1086#1074
                  Color = clSilver
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -19
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                  ExplicitLeft = 49
                  ExplicitTop = 6
                end
                object SpeedButtonKitAdd: TsSpeedButton
                  AlignWithMargins = True
                  Left = 148
                  Top = 6
                  Width = 23
                  Height = 20
                  Hint = #1044#1086#1073#1072#1074#1080#1090#1100
                  Margins.Top = 6
                  Align = alLeft
                  Flat = True
                  OnClick = SpeedButtonKitAddClick
                  Images = ImageList16
                  TextAlignment = taLeftJustify
                  ImageIndex = 5
                  ExplicitLeft = 194
                  ExplicitTop = 7
                  ExplicitHeight = 22
                end
              end
            end
            object Panel39: TPanel
              Left = 417
              Top = 0
              Width = 513
              Height = 382
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              object TableExKitData: TTableEx
                AlignWithMargins = True
                Left = 5
                Top = 34
                Width = 503
                Height = 343
                Margins.Left = 5
                Margins.Top = 5
                Margins.Right = 5
                Margins.Bottom = 5
                Align = alClient
                BevelInner = bvSpace
                BorderStyle = bsNone
                Color = 3355443
                DefaultRowHeight = 30
                TabOrder = 0
                OnDrawCellData = TableExKitDataDrawCellData
                ItemIndex = -1
                OnItemColClick = TableExKitDataItemColClick
                GetData = TableExKitDataGetData
                OnEdit = TableExKitDataEdit
                OnEditOk = TableExKitDataEditOk
                Columns = <>
                CanNoSelect = False
                VisibleEdit = False
                ItemCount = 1
                LineColor = 3355443
                LineColorXor = 3355443
                LineHotColor = 6052956
                LineSelColor = 6710886
                ColumnsColor = 6052956
                FontHotLine.Charset = DEFAULT_CHARSET
                FontHotLine.Color = clSilver
                FontHotLine.Height = -11
                FontHotLine.Name = 'Tahoma'
                FontHotLine.Style = []
                FontLine.Charset = DEFAULT_CHARSET
                FontLine.Color = clSilver
                FontLine.Height = -11
                FontLine.Name = 'Tahoma'
                FontLine.Style = []
                FontSelLine.Charset = DEFAULT_CHARSET
                FontSelLine.Color = clWhite
                FontSelLine.Height = -11
                FontSelLine.Name = 'Tahoma'
                FontSelLine.Style = [fsBold]
                ColumnsFont.Charset = DEFAULT_CHARSET
                ColumnsFont.Color = clSilver
                ColumnsFont.Height = -11
                ColumnsFont.Name = 'Tahoma'
                ColumnsFont.Style = [fsBold]
              end
              object Panel40: TPanel
                Left = 0
                Top = 0
                Width = 513
                Height = 29
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 1
                object SpeedButtonKitItemAdd: TsSpeedButton
                  AlignWithMargins = True
                  Left = 136
                  Top = 6
                  Width = 23
                  Height = 20
                  Hint = #1044#1086#1073#1072#1074#1080#1090#1100
                  Margins.Top = 6
                  Align = alLeft
                  Flat = True
                  OnClick = SpeedButtonKitItemAddClick
                  Images = ImageList16
                  TextAlignment = taLeftJustify
                  ImageIndex = 5
                  ExplicitLeft = 361
                  ExplicitTop = 19
                  ExplicitHeight = 22
                end
                object Label18: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 127
                  Height = 23
                  Align = alLeft
                  Caption = #1057#1086#1089#1090#1072#1074' '#1085#1072#1073#1086#1088#1072
                  Color = clSilver
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -19
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                  ExplicitLeft = 212
                  ExplicitTop = 18
                end
              end
            end
          end
        end
        object TabSheetDBAdmins: TTabSheet
          Caption = #1040#1076#1084#1080#1085#1099
          ImageIndex = 15
          TabVisible = False
          object Panel13: TPanel
            Left = 0
            Top = 0
            Width = 930
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            Color = 3355443
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object SpeedButtonRefreshAdmins: TsSpeedButton
              Left = 0
              Top = 0
              Width = 27
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              OnClick = SpeedButtonRefreshAdminsClick
              Images = ImageList16
              ImageIndex = 0
              ExplicitLeft = -5
              ExplicitTop = -3
            end
            object Shape21: TShape
              AlignWithMargins = True
              Left = 28
              Top = 4
              Width = 2
              Height = 22
              Margins.Left = 1
              Margins.Top = 4
              Margins.Right = 1
              Margins.Bottom = 4
              Align = alLeft
              Brush.Color = clGray
              Pen.Color = clGray
              ExplicitLeft = 30
              ExplicitTop = 0
              ExplicitHeight = 30
            end
            object SpeedButtonUnadmin: TsSpeedButton
              Left = 31
              Top = 0
              Width = 90
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = #1059#1076#1072#1083#1080#1090#1100
              Flat = True
              OnClick = SpeedButtonUnadminClick
              Images = ImageList16
              ImageIndex = 7
              ExplicitLeft = 39
            end
            object Panel6: TPanel
              AlignWithMargins = True
              Left = 629
              Top = 2
              Width = 299
              Height = 26
              Margins.Left = 1
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alRight
              BevelOuter = bvNone
              Color = 4539717
              ParentBackground = False
              TabOrder = 0
              object sSpeedButton19: TsSpeedButton
                AlignWithMargins = True
                Left = 269
                Top = 0
                Width = 27
                Height = 26
                Margins.Left = 0
                Margins.Top = 0
                Margins.Bottom = 0
                Align = alRight
                Flat = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000006666
                  66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                  A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                  8C7A555555060000000000000000000000000000000000000000000000000000
                  0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                  C2FE969696AA7171711200000000000000000000000000000000000000000000
                  00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                  0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC4C4C4FFA0A0A0FFC8C8
                  C8FFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                  00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC5C5C5FF7E7E7EFF6F6F6FFFBDBD
                  BDFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                  00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
                  CAFFCACACAFFCACACAFFCBCBCBFFC5C5C5FF7F7F7FFF6D6D6DFFB6B6B6FFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                  6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFA3A3A3FF7E7E
                  7EFF646464FF808080FFA7A7A7FF888888FF6D6D6DFFB9B9B9FFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                  6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FF8F8F8FFF696969FF9191
                  91FF979797FF909090FF696969FF757575FFB6B6B6FFCACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                  721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFAEAEAEFF686868FFADADADFFCACA
                  CAFFCBCBCBFFCBCBCBFFAAAAAAFF6A6A6AFFB7B7B7FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                  721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFF949494FF7E7E7EFFCACACAFFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF777777FF9B9B9BFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                  6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFF8D8D8DFF838383FFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCACACAFF7B7B7BFF989898FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                  6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFA1A1A1FF6E6E6EFFC1C1C1FFCBCB
                  CBFFCBCBCBFFCBCBCBFFBEBEBEFF6C6C6CFFAAAAAAFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                  00008787877BC9C9C9FECBCBCBFFCBCBCBFFC4C4C4FF777777FF7A7A7AFFB3B3
                  B3FFC7C7C7FFB1B1B1FF767676FF7C7C7CFFC7C7C7FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                  000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFBDBDBDFF808080FF6767
                  67FF6E6E6EFF686868FF818181FFC0C0C0FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                  0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFB6B6
                  B6FFB1B1B1FFB8B8B8FFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                  00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                  0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                  C2FE969696AA7171711200000000000000000000000000000000000000000000
                  0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                  CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                  8A7A555555060000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000747474168787877BA3A3
                  A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000006666
                  66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                ExplicitLeft = 816
                ExplicitTop = 1
                ExplicitHeight = 23
              end
              object Edit3: TEdit
                AlignWithMargins = True
                Left = 3
                Top = 4
                Width = 265
                Height = 21
                Margins.Top = 4
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alClient
                BevelEdges = [beLeft, beRight, beBottom]
                BevelInner = bvNone
                BevelOuter = bvRaised
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                TabOrder = 0
                TextHint = #1055#1086#1080#1089#1082'...'
              end
            end
          end
          object TableExAdmins: TTableEx
            Left = 0
            Top = 30
            Width = 930
            Height = 605
            Align = alClient
            BevelInner = bvNone
            BorderStyle = bsNone
            Color = 3355443
            DefaultRowHeight = 30
            TabOrder = 1
            ItemIndex = -1
            OnItemClick = TableExAdminsItemClick
            GetData = TableExAdminsGetData
            Columns = <>
            CanNoSelect = False
            ItemCount = 4
            LineColor = 3355443
            LineColorXor = 3355443
            LineHotColor = 6052956
            LineSelColor = 6710886
            ColumnsColor = 6052956
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = clSilver
            FontHotLine.Height = -11
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = clSilver
            FontLine.Height = -11
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = clWhite
            FontSelLine.Height = -11
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = [fsBold]
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = clSilver
            ColumnsFont.Height = -11
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = [fsBold]
          end
        end
        object TabSheetDBBans: TTabSheet
          Caption = #1041#1072#1085'-'#1083#1080#1089#1090
          ImageIndex = 13
          TabVisible = False
          object TableExBans: TTableEx
            Left = 0
            Top = 30
            Width = 930
            Height = 605
            Align = alClient
            BevelInner = bvNone
            BorderStyle = bsNone
            Color = 3355443
            DefaultRowHeight = 30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ItemIndex = -1
            OnItemClick = TableExBansItemClick
            GetData = TableExBansGetData
            Columns = <>
            CanNoSelect = False
            ItemCount = 4
            LineColor = 3355443
            LineColorXor = 3355443
            LineHotColor = 6052956
            LineSelColor = 6710886
            ColumnsColor = 6052956
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = clSilver
            FontHotLine.Height = -11
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = clSilver
            FontLine.Height = -11
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = clSilver
            FontSelLine.Height = -11
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = [fsBold]
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = clSilver
            ColumnsFont.Height = -11
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = [fsBold]
          end
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 930
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            Color = 3355443
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            object SpeedButtonRefreshBans: TsSpeedButton
              Left = 0
              Top = 0
              Width = 27
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              OnClick = SpeedButtonRefreshBansClick
              Images = ImageList16
              ImageIndex = 0
              ExplicitLeft = -5
              ExplicitTop = -3
            end
            object Shape19: TShape
              AlignWithMargins = True
              Left = 28
              Top = 4
              Width = 2
              Height = 22
              Margins.Left = 1
              Margins.Top = 4
              Margins.Right = 1
              Margins.Bottom = 4
              Align = alLeft
              Brush.Color = clGray
              Pen.Color = clGray
              ExplicitLeft = 30
              ExplicitTop = 0
              ExplicitHeight = 30
            end
            object SpeedButtonUnban: TsSpeedButton
              Left = 31
              Top = 0
              Width = 90
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = #1056#1072#1079#1073#1072#1085#1080#1090#1100
              Flat = True
              OnClick = SpeedButtonUnbanClick
              Images = ImageList16
              ImageIndex = 7
            end
            object Panel12: TPanel
              AlignWithMargins = True
              Left = 629
              Top = 2
              Width = 299
              Height = 26
              Margins.Left = 1
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alRight
              BevelOuter = bvNone
              Color = 4539717
              ParentBackground = False
              TabOrder = 0
              object sSpeedButton8: TsSpeedButton
                AlignWithMargins = True
                Left = 269
                Top = 0
                Width = 27
                Height = 26
                Margins.Left = 0
                Margins.Top = 0
                Margins.Bottom = 0
                Align = alRight
                Flat = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000006666
                  66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                  A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                  8C7A555555060000000000000000000000000000000000000000000000000000
                  0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                  C2FE969696AA7171711200000000000000000000000000000000000000000000
                  00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                  0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC4C4C4FFA0A0A0FFC8C8
                  C8FFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                  00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC5C5C5FF7E7E7EFF6F6F6FFFBDBD
                  BDFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                  00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
                  CAFFCACACAFFCACACAFFCBCBCBFFC5C5C5FF7F7F7FFF6D6D6DFFB6B6B6FFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                  6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFA3A3A3FF7E7E
                  7EFF646464FF808080FFA7A7A7FF888888FF6D6D6DFFB9B9B9FFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                  6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FF8F8F8FFF696969FF9191
                  91FF979797FF909090FF696969FF757575FFB6B6B6FFCACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                  721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFAEAEAEFF686868FFADADADFFCACA
                  CAFFCBCBCBFFCBCBCBFFAAAAAAFF6A6A6AFFB7B7B7FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                  721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFF949494FF7E7E7EFFCACACAFFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF777777FF9B9B9BFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                  6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFF8D8D8DFF838383FFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCACACAFF7B7B7BFF989898FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                  6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFA1A1A1FF6E6E6EFFC1C1C1FFCBCB
                  CBFFCBCBCBFFCBCBCBFFBEBEBEFF6C6C6CFFAAAAAAFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                  00008787877BC9C9C9FECBCBCBFFCBCBCBFFC4C4C4FF777777FF7A7A7AFFB3B3
                  B3FFC7C7C7FFB1B1B1FF767676FF7C7C7CFFC7C7C7FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                  000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFBDBDBDFF808080FF6767
                  67FF6E6E6EFF686868FF818181FFC0C0C0FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                  0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFB6B6
                  B6FFB1B1B1FFB8B8B8FFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                  00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                  0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                  C2FE969696AA7171711200000000000000000000000000000000000000000000
                  0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                  CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                  8A7A555555060000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000747474168787877BA3A3
                  A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000006666
                  66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                ExplicitLeft = 816
                ExplicitTop = 1
                ExplicitHeight = 23
              end
              object Edit1: TEdit
                AlignWithMargins = True
                Left = 3
                Top = 4
                Width = 265
                Height = 21
                Margins.Top = 4
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alClient
                BevelEdges = [beLeft, beRight, beBottom]
                BevelInner = bvNone
                BevelOuter = bvRaised
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                TabOrder = 0
                TextHint = #1055#1086#1080#1089#1082'...'
              end
            end
          end
        end
        object TabSheetDBPlayersInfo: TTabSheet
          Caption = #1042#1089#1077' '#1080#1075#1088#1086#1082#1080
          TabVisible = False
          object TableExPlayerInfo: TTableEx
            Left = 0
            Top = 30
            Width = 930
            Height = 570
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvRaised
            BorderStyle = bsNone
            Color = 3355443
            DefaultRowHeight = 30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ItemIndex = -1
            OnColumnClick = TableExPlayerInfoColumnClick
            OnItemClick = TableExPlayerInfoItemClick
            GetData = TableExPlayerInfoGetData
            Columns = <>
            CanNoSelect = False
            ItemCount = 4
            LineColor = 3355443
            LineColorXor = 3355443
            LineHotColor = 6052956
            LineSelColor = 6710886
            ColumnsColor = 6052956
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = clSilver
            FontHotLine.Height = -11
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = clSilver
            FontLine.Height = -11
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = clSilver
            FontSelLine.Height = -11
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = [fsBold]
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = clSilver
            ColumnsFont.Height = -11
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = [fsBold]
          end
          object ProgressBarProc: TProgressBar
            Left = 0
            Top = 600
            Width = 930
            Height = 5
            Margins.Left = 38
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alBottom
            TabOrder = 1
            Visible = False
          end
          object PanelDBPICtrl: TPanel
            Left = 0
            Top = 0
            Width = 930
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            Color = 3355443
            ParentBackground = False
            TabOrder = 2
            object SpeedButtonDBPIRefresh: TsSpeedButton
              Left = 0
              Top = 0
              Width = 27
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              OnClick = SpeedButtonDBPIRefreshClick
              Images = ImageList16
              ImageIndex = 0
              ExplicitLeft = -5
              ExplicitTop = -3
            end
            object Shape18: TShape
              AlignWithMargins = True
              Left = 28
              Top = 4
              Width = 2
              Height = 22
              Margins.Left = 1
              Margins.Top = 4
              Margins.Right = 1
              Margins.Bottom = 4
              Align = alLeft
              Brush.Color = clGray
              Pen.Color = clGray
              ExplicitLeft = 30
              ExplicitTop = 0
              ExplicitHeight = 30
            end
            object SpeedButtonDBPIGeo: TsSpeedButton
              Left = 31
              Top = 0
              Width = 27
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              OnClick = SpeedButtonDBPIGeoClick
              Images = ImageList16
              ImageIndex = 11
              ExplicitLeft = 34
              ExplicitTop = -3
            end
            object SpeedButtonDBPIGeoStop: TsSpeedButton
              Left = 58
              Top = 0
              Width = 30
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              Visible = False
              OnClick = SpeedButtonDBPIGeoStopClick
              Images = ImageList16
              ImageIndex = 10
              ExplicitLeft = 64
              ExplicitTop = -3
            end
            object Panel4: TPanel
              AlignWithMargins = True
              Left = 629
              Top = 2
              Width = 299
              Height = 26
              Margins.Left = 1
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alRight
              BevelOuter = bvNone
              Color = 4539717
              ParentBackground = False
              TabOrder = 0
              object sSpeedButton18: TsSpeedButton
                AlignWithMargins = True
                Left = 269
                Top = 0
                Width = 27
                Height = 26
                Margins.Left = 0
                Margins.Top = 0
                Margins.Bottom = 0
                Align = alRight
                Flat = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000006666
                  66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                  A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                  8C7A555555060000000000000000000000000000000000000000000000000000
                  0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                  C2FE969696AA7171711200000000000000000000000000000000000000000000
                  00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                  0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC4C4C4FFA0A0A0FFC8C8
                  C8FFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                  00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC5C5C5FF7E7E7EFF6F6F6FFFBDBD
                  BDFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                  00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
                  CAFFCACACAFFCACACAFFCBCBCBFFC5C5C5FF7F7F7FFF6D6D6DFFB6B6B6FFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                  6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFA3A3A3FF7E7E
                  7EFF646464FF808080FFA7A7A7FF888888FF6D6D6DFFB9B9B9FFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                  6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FF8F8F8FFF696969FF9191
                  91FF979797FF909090FF696969FF757575FFB6B6B6FFCACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                  721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFAEAEAEFF686868FFADADADFFCACA
                  CAFFCBCBCBFFCBCBCBFFAAAAAAFF6A6A6AFFB7B7B7FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                  721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFF949494FF7E7E7EFFCACACAFFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF777777FF9B9B9BFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                  6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFF8D8D8DFF838383FFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCACACAFF7B7B7BFF989898FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                  6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFA1A1A1FF6E6E6EFFC1C1C1FFCBCB
                  CBFFCBCBCBFFCBCBCBFFBEBEBEFF6C6C6CFFAAAAAAFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                  00008787877BC9C9C9FECBCBCBFFCBCBCBFFC4C4C4FF777777FF7A7A7AFFB3B3
                  B3FFC7C7C7FFB1B1B1FF767676FF7C7C7CFFC7C7C7FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                  000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFBDBDBDFF808080FF6767
                  67FF6E6E6EFF686868FF818181FFC0C0C0FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                  0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFB6B6
                  B6FFB1B1B1FFB8B8B8FFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                  00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                  0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                  C2FE969696AA7171711200000000000000000000000000000000000000000000
                  0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                  CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                  8A7A555555060000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000747474168787877BA3A3
                  A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000006666
                  66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                OnClick = EditPISearchChange
                ExplicitLeft = 816
                ExplicitTop = 1
                ExplicitHeight = 23
              end
              object EditPISearch: TEdit
                AlignWithMargins = True
                Left = 3
                Top = 4
                Width = 265
                Height = 21
                Margins.Top = 4
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alClient
                BevelEdges = [beLeft, beRight, beBottom]
                BevelInner = bvNone
                BevelOuter = bvRaised
                BorderStyle = bsNone
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                TabOrder = 0
                TextHint = #1055#1086#1080#1089#1082'...'
                OnChange = EditPISearchChange
                OnKeyPress = EditPISearchKeyPress
              end
            end
          end
          object Panel45: TPanel
            Left = 0
            Top = 605
            Width = 930
            Height = 30
            Align = alBottom
            BevelOuter = bvNone
            Color = 4539717
            ParentBackground = False
            TabOrder = 3
            object LabelPICount: TLabel
              AlignWithMargins = True
              Left = 10
              Top = 3
              Width = 53
              Height = 24
              Margins.Left = 10
              Margins.Right = 10
              Align = alLeft
              Caption = '1 '#1080#1079' 20000'
              Layout = tlCenter
              ExplicitHeight = 13
            end
          end
        end
        object TabSheetWorkWithGroup: TTabSheet
          Caption = #1048#1074#1077#1085#1090
          ImageIndex = 9
          TabVisible = False
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 930
            Height = 635
            Align = alClient
            BevelOuter = bvNone
            Color = 2171169
            ParentBackground = False
            TabOrder = 0
            object TableExGroupPlayers: TTableEx
              AlignWithMargins = True
              Left = 620
              Top = 10
              Width = 300
              Height = 615
              Margins.Left = 9
              Margins.Top = 10
              Margins.Right = 10
              Margins.Bottom = 10
              Align = alClient
              BorderStyle = bsNone
              Color = 3355443
              DefaultRowHeight = 30
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnDragDrop = TableExGroupPlayersDragDrop
              OnDragOver = TableExGroupPlayersDragOver
              ItemIndex = -1
              OnItemColClick = TableExGroupPlayersItemColClick
              GetData = TableExGroupPlayersGetData
              Columns = <>
              ShowScrollBar = False
              CanNoSelect = False
              VisibleEdit = False
              ItemCount = 1
              LineColor = 3355443
              LineColorXor = 3355443
              LineHotColor = 6052956
              LineSelColor = 6710886
              ColumnsColor = 6052956
              FontHotLine.Charset = DEFAULT_CHARSET
              FontHotLine.Color = clSilver
              FontHotLine.Height = -11
              FontHotLine.Name = 'Tahoma'
              FontHotLine.Style = []
              FontLine.Charset = DEFAULT_CHARSET
              FontLine.Color = clSilver
              FontLine.Height = -11
              FontLine.Name = 'Tahoma'
              FontLine.Style = []
              FontSelLine.Charset = DEFAULT_CHARSET
              FontSelLine.Color = clWhite
              FontSelLine.Height = -11
              FontSelLine.Name = 'Tahoma'
              FontSelLine.Style = [fsBold]
              ShowColumns = False
              ColumnsFont.Charset = DEFAULT_CHARSET
              ColumnsFont.Color = clSilver
              ColumnsFont.Height = -11
              ColumnsFont.Name = 'Tahoma'
              ColumnsFont.Style = [fsBold]
            end
            object PanelCollapsed1: TPanelCollapsed
              AlignWithMargins = True
              Left = 9
              Top = 9
              Width = 602
              Height = 604
              Margins.Left = 9
              Margins.Top = 9
              Margins.Right = 0
              Margins.Bottom = 9
              Caption = ' '#1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1075#1088#1091#1087#1087#1086#1081' '#1080#1075#1088#1086#1082#1086#1074
              DefaultPaint = False
              Align = alLeft
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Color = 3355443
              Locked = True
              ParentBackground = False
              ShowCaption = True
              TabOrder = 1
              ShowCollapseButton = False
              Collapsed = False
              SimpleBorderColor = 2631720
              CaptionColor = 3355443
              FontCaption.Charset = DEFAULT_CHARSET
              FontCaption.Color = clWhite
              FontCaption.Height = -13
              FontCaption.Name = 'Tahoma'
              FontCaption.Style = [fsBold]
              ShowSimpleBorder = True
              CaptionHeight = 30
              object SpeedButtonGroupHeal: TsSpeedButton
                Left = 1
                Top = 37
                Width = 186
                Height = 30
                Caption = #1048#1079#1083#1077#1095#1080#1090#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Layout = blGlyphRight
                ParentFont = False
                Spacing = 0
                Alignment = taRightJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 1
                TextOffset = 5
              end
              object SpeedButtonGroupKill: TsSpeedButton
                Left = 1
                Top = 69
                Width = 186
                Height = 30
                Caption = #1059#1073#1080#1090#1100' '#1087#1077#1088#1089#1086#1085#1072#1078#1072
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Layout = blGlyphRight
                ParentFont = False
                Spacing = 0
                Alignment = taRightJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 5
                TextOffset = 5
              end
              object SpeedButtonGroupKick: TsSpeedButton
                Left = 1
                Top = 101
                Width = 186
                Height = 30
                Caption = #1042#1099#1075#1085#1072#1090#1100' '#1089' '#1089#1077#1088#1074#1077#1088#1072
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Layout = blGlyphRight
                ParentFont = False
                Spacing = 0
                Alignment = taRightJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 12
                TextOffset = 5
              end
              object SpeedButtonGroupBan: TsSpeedButton
                Left = 1
                Top = 133
                Width = 186
                Height = 30
                Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1074' '#1041#1040#1053
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Layout = blGlyphRight
                ParentFont = False
                Spacing = 0
                Alignment = taRightJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 13
                TextOffset = 5
              end
              object sSpeedButton21: TsSpeedButton
                Left = 193
                Top = 37
                Width = 142
                Height = 30
                Caption = #1042#1099#1076#1072#1090#1100' '#1087#1088#1077#1076#1084#1077#1090#1099
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Alignment = taLeftJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 17
              end
              object sSpeedButton24: TsSpeedButton
                Left = 193
                Top = 102
                Width = 142
                Height = 30
                Caption = #1042#1099#1076#1072#1090#1100' '#1087#1088#1077#1076#1084#1077#1090#1099
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Alignment = taLeftJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 17
              end
              object SpeedButtonGroupTP: TsSpeedButton
                Left = 358
                Top = 529
                Width = 229
                Height = 21
                Caption = #1058#1077#1083#1077#1087#1086#1088#1090
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                Layout = blGlyphRight
                ParentFont = False
                Spacing = 0
                Alignment = taRightJustify
                Images = ImageListMed
                TextAlignment = taLeftJustify
                ImageIndex = 18
                TextOffset = 5
              end
              object Label47: TLabel
                Left = 8
                Top = 184
                Width = 77
                Height = 16
                Caption = #1044#1077#1085#1100#1075#1080' (EP)'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object SpeedButtonGroupEP: TsSpeedButton
                Left = 193
                Top = 205
                Width = 71
                Height = 26
                Caption = #1042#1099#1076#1072#1090#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Alignment = taLeftJustify
                Images = ImageList16
                TextAlignment = taLeftJustify
                ImageIndex = 5
                WordWrap = False
              end
              object Label49: TLabel
                Left = 8
                Top = 236
                Width = 69
                Height = 16
                Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                Transparent = True
              end
              object SpeedButtonGroupVehicle: TsSpeedButton
                Left = 193
                Top = 257
                Width = 71
                Height = 26
                Caption = #1042#1099#1076#1072#1090#1100
                Flat = True
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                OnClick = SpeedButtonGiveVehicleClick
                Alignment = taLeftJustify
                Images = ImageList16
                TextAlignment = taLeftJustify
                ImageIndex = 5
                WordWrap = False
              end
              object Panel7: TPanel
                Left = 0
                Top = 587
                Width = 602
                Height = 30
                Align = alBottom
                BevelOuter = bvNone
                Color = 4539717
                ParentBackground = False
                TabOrder = 1
                object SpeedButtonGroupChatSend: TsSpeedButton
                  AlignWithMargins = True
                  Left = 574
                  Top = 0
                  Width = 25
                  Height = 30
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Bottom = 0
                  Align = alRight
                  Flat = True
                  Glyph.Data = {
                    36090000424D3609000000000000360000002800000018000000180000000100
                    2000000000000009000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                    A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                    8C7A555555060000000000000000000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFB6B6B6FFB0B0B0FFB0B0B0FFB0B0
                    B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFB5B5
                    B5FFCACACAFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                    00006F6F6F17ADADADEECACACAFFBBBBBBFF656565FF636363FF636363FF6363
                    63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6565
                    65FFB6B6B6FFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                    00008787877BC9C9C9FECBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
                    63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6363
                    63FFAEAEAEFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
                    63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6363
                    63FFAEAEAEFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
                    63FF636363FF636363FF636363FF636363FF636363FF636363FF636363FF6363
                    63FFAEAEAEFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFB3B3B3FF636363FF636363FF636363FF6363
                    63FF6E6E6EFFA5A5A5FFA7A7A7FF707070FF636363FF636363FF636363FF6363
                    63FFAEAEAEFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                    721DB5B5B5FACBCBCBFFCBCBCBFFB3B3B3FF636363FF636363FF656565FF9090
                    90FFC1C1C1FF9F9F9FFF9C9C9CFFC1C1C1FF929292FF666666FF636363FF6363
                    63FFAEAEAEFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                    6D15AFAFAFE9CBCBCBFFCBCBCBFFB3B3B3FF636363FF797979FFB2B2B2FFB3B3
                    B3FF7B7B7BFF636363FF636363FF797979FFB1B1B1FFB4B4B4FF7C7C7CFF6363
                    63FFAEAEAEFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                    6605A3A3A3C7CACACAFFCBCBCBFFB3B3B3FF696969FFBBBBBBFF929292FF6565
                    65FF636363FF636363FF636363FF636363FF646464FF8F8F8FFFBCBCBCFF6C6C
                    6CFFAEAEAEFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                    00008787877BC9C9C9FECBCBCBFFB6B6B6FF656565FF6C6C6CFF636363FF6363
                    63FF636363FF636363FF636363FF636363FF636363FF636363FF6B6B6BFF6666
                    66FFB1B1B1FFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                    000074747416ABABABEECACACAFFC9C9C9FF9F9F9FFF979797FF979797FF9797
                    97FF979797FF979797FF979797FF979797FF979797FF979797FF979797FF9D9D
                    9DFFC9C9C9FFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                    0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                    00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                    CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                    0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                    CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                    C2FE969696AA7171711200000000000000000000000000000000000000000000
                    0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                    CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                    8A7A555555060000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000000000000000000747474168787877BA3A3
                    A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000006666
                    66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000}
                  OnClick = SpeedButtonGroupChatSendClick
                  ExplicitLeft = 225
                end
                object ShapeGroupChatColor: TLabelEx
                  AlignWithMargins = True
                  Left = 550
                  Top = 0
                  Width = 22
                  Height = 30
                  Cursor = crHandPoint
                  Margins.Left = 0
                  Margins.Top = 0
                  Margins.Right = 2
                  Margins.Bottom = 0
                  Align = alRight
                  Brush.Color = clSilver
                  Pen.Color = 7566195
                  Shape = stCircle
                  OnMouseUp = ShapeMiniChatColorMouseUp
                  Caption = ''
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  TextFormat = [tfCenter, tfSingleLine, tfVerticalCenter, tfWordBreak, tfWordEllipsis]
                  IgnorBounds = True
                  EllipseRectVertical = False
                  ExplicitLeft = 169
                  ExplicitTop = 3
                end
                object EditGroupChatSend: TEdit
                  AlignWithMargins = True
                  Left = 3
                  Top = 6
                  Width = 546
                  Height = 23
                  Margins.Top = 6
                  Margins.Right = 1
                  Margins.Bottom = 1
                  Align = alClient
                  BevelEdges = [beLeft, beRight, beBottom]
                  BevelInner = bvNone
                  BevelOuter = bvRaised
                  BorderStyle = bsNone
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -15
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = True
                  ParentFont = False
                  TabOrder = 0
                  TextHint = #1053#1072#1087#1080#1096#1080#1090#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1077'...'
                  OnKeyPress = EditGroupChatSendKeyPress
                end
              end
              object TableExGroupTP: TTableEx
                Left = 358
                Top = 180
                Width = 229
                Height = 346
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 1
                Margins.Bottom = 0
                BorderStyle = bsNone
                Color = 4802889
                DefaultRowHeight = 30
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                ItemIndex = -1
                GetData = TableExMapPointsGetData
                Columns = <>
                ShowScrollBar = False
                CanNoSelect = False
                ItemCount = 4
                LineColor = 4802889
                LineColorXor = 4802889
                LineHotColor = 6052956
                LineSelColor = 6710886
                ColumnsColor = 6052956
                FontHotLine.Charset = DEFAULT_CHARSET
                FontHotLine.Color = clSilver
                FontHotLine.Height = -11
                FontHotLine.Name = 'Tahoma'
                FontHotLine.Style = []
                FontLine.Charset = DEFAULT_CHARSET
                FontLine.Color = clSilver
                FontLine.Height = -11
                FontLine.Name = 'Tahoma'
                FontLine.Style = []
                FontSelLine.Charset = DEFAULT_CHARSET
                FontSelLine.Color = clWhite
                FontSelLine.Height = -11
                FontSelLine.Name = 'Tahoma'
                FontSelLine.Style = [fsBold]
                ShowColumns = False
                ColumnsFont.Charset = DEFAULT_CHARSET
                ColumnsFont.Color = clSilver
                ColumnsFont.Height = -11
                ColumnsFont.Name = 'Tahoma'
                ColumnsFont.Style = [fsBold]
              end
              object ComboBox1: TComboBox
                Left = 222
                Top = 72
                Width = 370
                Height = 24
                Style = csDropDownList
                Color = 3355443
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
                TextHint = 'Kit-'#1085#1072#1073#1086#1088
                OnDropDown = ComboBoxGiveKitDropDown
              end
              object ComboBox2: TComboBox
                Left = 222
                Top = 138
                Width = 370
                Height = 24
                Style = csDropDownList
                Color = 3355443
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
                TextHint = 'Kit-'#1085#1072#1073#1086#1088
                OnDropDown = ComboBoxGiveKitDropDown
              end
              object EditGroupEP: TEdit
                Left = 11
                Top = 206
                Width = 176
                Height = 24
                Alignment = taRightJustify
                Color = 3355443
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                NumbersOnly = True
                ParentFont = False
                TabOrder = 5
                Text = '1000'
                TextHint = #1050#1086#1083'-'#1074#1086' EP'
              end
              object EditGroupVehicle: TEdit
                Left = 11
                Top = 258
                Width = 176
                Height = 24
                Color = 3355443
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowFrame
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
                TextHint = #1048#1044' '#1090#1088#1072#1085#1089#1087#1086#1088#1090#1072
              end
            end
          end
        end
        object TabSheetDonat: TTabSheet
          Caption = #1044#1086#1085#1072#1090
          ImageIndex = 10
          TabVisible = False
          object Panel15: TPanel
            Left = 0
            Top = 0
            Width = 930
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            Color = 3355443
            ParentBackground = False
            TabOrder = 0
            object SpeedButtonRefreshDonat: TsSpeedButton
              Left = 0
              Top = 0
              Width = 27
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              OnClick = SpeedButtonRefreshDonatClick
              Images = ImageList16
              ImageIndex = 0
              ExplicitLeft = -5
              ExplicitTop = -3
            end
            object Shape8: TShape
              AlignWithMargins = True
              Left = 28
              Top = 4
              Width = 2
              Height = 22
              Margins.Left = 1
              Margins.Top = 4
              Margins.Right = 1
              Margins.Bottom = 4
              Align = alLeft
              Brush.Color = clGray
              Pen.Color = clGray
              ExplicitLeft = 30
              ExplicitTop = 0
              ExplicitHeight = 30
            end
            object SpeedButtonDonatDeactivate: TsSpeedButton
              Left = 132
              Top = 0
              Width = 120
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = #1044#1077#1082#1072#1090#1080#1074#1080#1088#1086#1074#1072#1090#1100
              Flat = True
              OnClick = SpeedButtonDonatDeactivateClick
              Alignment = taLeftJustify
              Images = ImageList16
              TextAlignment = taLeftJustify
              ImageIndex = 6
              ExplicitLeft = 230
              ExplicitTop = -3
            end
            object SpeedButtonDonatUnlimit: TsSpeedButton
              Left = 252
              Top = 0
              Width = 98
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = #1041#1077#1089#1089#1088#1086#1095#1085#1099#1081
              Flat = True
              OnClick = SpeedButtonDonatUnlimitClick
              Alignment = taLeftJustify
              Images = ImageList16
              TextAlignment = taLeftJustify
              ImageIndex = 9
              ExplicitLeft = 151
            end
            object SpeedButtonDonatDelete: TsSpeedButton
              Left = 58
              Top = 0
              Width = 74
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Caption = #1059#1076#1072#1083#1080#1090#1100
              Flat = True
              OnClick = SpeedButtonDonatDeleteClick
              Alignment = taLeftJustify
              Images = ImageList16
              TextAlignment = taLeftJustify
              ImageIndex = 7
              ExplicitLeft = 98
              ExplicitTop = -3
            end
            object SpeedButtonDonatAdd: TsSpeedButton
              Left = 31
              Top = 0
              Width = 27
              Height = 30
              Margins.Left = 0
              Margins.Top = 0
              Margins.Bottom = 0
              Align = alLeft
              Flat = True
              OnClick = SpeedButtonDonatAddClick
              Images = ImageList16
              ImageIndex = 5
              ExplicitLeft = 58
              ExplicitTop = -3
            end
            object Panel23: TPanel
              AlignWithMargins = True
              Left = 629
              Top = 2
              Width = 299
              Height = 26
              Margins.Left = 1
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alRight
              BevelOuter = bvNone
              Color = 4539717
              ParentBackground = False
              TabOrder = 0
              object sSpeedButton32: TsSpeedButton
                AlignWithMargins = True
                Left = 269
                Top = 0
                Width = 27
                Height = 26
                Margins.Left = 0
                Margins.Top = 0
                Margins.Bottom = 0
                Align = alRight
                Enabled = False
                Flat = True
                Glyph.Data = {
                  36090000424D3609000000000000360000002800000018000000180000000100
                  2000000000000009000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000006666
                  66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000006F6F6F178787877BA3A3
                  A3C7AFAFAFE9B4B4B4FAB4B4B4FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000555555068A8A8A7AADADADEEC9C9C9FFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFADADADEE8C8C
                  8C7A555555060000000000000000000000000000000000000000000000000000
                  0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                  C2FE969696AA7171711200000000000000000000000000000000000000000000
                  00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                  0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC4C4C4FFA0A0A0FFC8C8
                  C8FFCBCBCBFFC2C2C2FE8C8C8C7A000000000000000000000000000000000000
                  00006F6F6F17ADADADEECACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFC5C5C5FF7E7E7EFF6F6F6FFFBDBD
                  BDFFCBCBCBFFCACACAFFADADADEE6F6F6F170000000000000000000000000000
                  00008787877BC9C9C9FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACA
                  CAFFCACACAFFCACACAFFCBCBCBFFC5C5C5FF7F7F7FFF6D6D6DFFB6B6B6FFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000006666
                  6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FFA3A3A3FF7E7E
                  7EFF646464FF808080FFA7A7A7FF888888FF6D6D6DFFB9B9B9FFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000006D6D
                  6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFFC9C9C9FF8F8F8FFF696969FF9191
                  91FF979797FF909090FF696969FF757575FFB6B6B6FFCACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000007272
                  721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFFAEAEAEFF686868FFADADADFFCACA
                  CAFFCBCBCBFFCBCBCBFFAAAAAAFF6A6A6AFFB7B7B7FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000007272
                  721DB5B5B5FACBCBCBFFCBCBCBFFCBCBCBFF949494FF7E7E7EFFCACACAFFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF777777FF9B9B9BFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFB4B4B4FA7272721D00000000000000006D6D
                  6D15AFAFAFE9CBCBCBFFCBCBCBFFCBCBCBFF8D8D8DFF838383FFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCACACAFF7B7B7BFF989898FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFAFAFAFE96D6D6D1500000000000000006666
                  6605A3A3A3C7CACACAFFCBCBCBFFCBCBCBFFA1A1A1FF6E6E6EFFC1C1C1FFCBCB
                  CBFFCBCBCBFFCBCBCBFFBEBEBEFF6C6C6CFFAAAAAAFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFA3A3A3C76666660500000000000000000000
                  00008787877BC9C9C9FECBCBCBFFCBCBCBFFC4C4C4FF777777FF7A7A7AFFB3B3
                  B3FFC7C7C7FFB1B1B1FF767676FF7C7C7CFFC7C7C7FFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFC9C9C9FF8787877B0000000000000000000000000000
                  000074747416ABABABEECACACAFFCBCBCBFFCBCBCBFFBDBDBDFF808080FF6767
                  67FF6E6E6EFF686868FF818181FFC0C0C0FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCACACAFFABABABEE6F6F6F170000000000000000000000000000
                  0000000000008A8A8A7AC2C2C2FECBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFB6B6
                  B6FFB1B1B1FFB8B8B8FFCACACAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFC2C2C2FE8A8A8A7A000000000000000000000000000000000000
                  00000000000055555506969696AAC6C6C6FFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCB
                  CBFFC6C6C6FF969696AA55555506000000000000000000000000000000000000
                  0000000000000000000071717112969696AAC2C2C2FECACACAFFCBCBCBFFCBCB
                  CBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC2C2
                  C2FE969696AA7171711200000000000000000000000000000000000000000000
                  0000000000000000000000000000555555068A8A8A7AABABABEEC9C9C9FECACA
                  CAFFCBCBCBFFCBCBCBFFCBCBCBFFCBCBCBFFCACACAFFC9C9C9FEADADADEE8A8A
                  8A7A555555060000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000747474168787877BA3A3
                  A3C7AFAFAFE9B5B5B5FAB5B5B5FAAFAFAFE9A3A3A3C78787877B6F6F6F170000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000006666
                  66056D6D6D157272721D7272721D6D6D6D156666660500000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
                OnClick = EditPISearchChange
                ExplicitLeft = 816
                ExplicitTop = 1
                ExplicitHeight = 23
              end
              object Edit2: TEdit
                AlignWithMargins = True
                Left = 3
                Top = 4
                Width = 265
                Height = 21
                Margins.Top = 4
                Margins.Right = 1
                Margins.Bottom = 1
                Align = alClient
                BevelEdges = [beLeft, beRight, beBottom]
                BevelInner = bvNone
                BevelOuter = bvRaised
                BorderStyle = bsNone
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentColor = True
                ParentFont = False
                TabOrder = 0
                TextHint = #1055#1086#1080#1089#1082'...'
                OnChange = EditPISearchChange
                OnKeyPress = EditPISearchKeyPress
              end
            end
            object Panel29: TPanel
              AlignWithMargins = True
              Left = 484
              Top = 2
              Width = 142
              Height = 26
              Margins.Left = 1
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              Align = alRight
              BevelOuter = bvNone
              Color = 4539717
              ParentBackground = False
              TabOrder = 1
              object SpeedButtonDonatExtend: TsSpeedButton
                AlignWithMargins = True
                Left = 2
                Top = 2
                Width = 87
                Height = 22
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Align = alClient
                Caption = #1055#1088#1086#1076#1083#1077#1085#1080#1077
                Flat = True
                OnClick = SpeedButtonDonatExtendClick
                Alignment = taLeftJustify
                Images = ImageList16
                TextAlignment = taLeftJustify
                ImageIndex = 32
                ExplicitLeft = 8
                ExplicitTop = 0
                ExplicitWidth = 120
                ExplicitHeight = 26
              end
              object SpinEditDonatExtend: TlkSpinEdit
                AlignWithMargins = True
                Left = 93
                Top = 2
                Width = 47
                Height = 22
                Margins.Left = 2
                Margins.Top = 2
                Margins.Right = 2
                Margins.Bottom = 2
                Align = alRight
                Ctl3D = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                MaxValue = 90
                MinValue = 1
                ParentColor = True
                ParentCtl3D = False
                ParentFont = False
                TabOrder = 0
                Value = 7
              end
            end
          end
          object TableExDonat: TTableEx
            Left = 0
            Top = 30
            Width = 930
            Height = 605
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvRaised
            BorderStyle = bsNone
            Color = 3355443
            DefaultRowHeight = 30
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSilver
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            ItemIndex = -1
            OnItemClick = TableExDonatItemClick
            GetData = TableExDonatGetData
            Columns = <>
            CanNoSelect = False
            ItemCount = 4
            LineColor = 3355443
            LineColorXor = 3355443
            LineHotColor = 6052956
            LineSelColor = 6710886
            ColumnsColor = 6052956
            FontHotLine.Charset = DEFAULT_CHARSET
            FontHotLine.Color = clSilver
            FontHotLine.Height = -11
            FontHotLine.Name = 'Tahoma'
            FontHotLine.Style = []
            FontLine.Charset = DEFAULT_CHARSET
            FontLine.Color = clSilver
            FontLine.Height = -11
            FontLine.Name = 'Tahoma'
            FontLine.Style = []
            FontSelLine.Charset = DEFAULT_CHARSET
            FontSelLine.Color = clSilver
            FontSelLine.Height = -11
            FontSelLine.Name = 'Tahoma'
            FontSelLine.Style = [fsBold]
            ColumnsFont.Charset = DEFAULT_CHARSET
            ColumnsFont.Color = clSilver
            ColumnsFont.Height = -11
            ColumnsFont.Name = 'Tahoma'
            ColumnsFont.Style = [fsBold]
          end
        end
        object TabSheetDB: TTabSheet
          Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
          ImageIndex = 11
          TabVisible = False
          object Panel46: TPanel
            Left = 0
            Top = 0
            Width = 930
            Height = 635
            Align = alClient
            BevelOuter = bvNone
            Color = 2171169
            ParentBackground = False
            TabOrder = 0
            object Panel49: TPanel
              Left = 0
              Top = 0
              Width = 930
              Height = 635
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object PageControl1: TPageControl
                Left = -9
                Top = 18
                Width = 943
                Height = 626
                ActivePage = TabSheet1
                TabOrder = 1
                object TabSheet1: TTabSheet
                  Caption = 'TabSheet1'
                  TabVisible = False
                  object TableEx2: TTableEx
                    AlignWithMargins = True
                    Left = 5
                    Top = 5
                    Width = 930
                    Height = 606
                    Margins.Left = 5
                    Margins.Top = 5
                    Margins.Right = 0
                    Margins.Bottom = 5
                    Align = alClient
                    BevelInner = bvSpace
                    BorderStyle = bsNone
                    Color = 3355443
                    DefaultRowHeight = 30
                    TabOrder = 0
                    OnDrawCellData = TableExKitsDrawCellData
                    ItemIndex = -1
                    OnItemClick = TableExKitsItemClick
                    OnItemColClick = TableExKitsItemColClick
                    GetData = TableExKitsGetData
                    OnEdit = TableExKitsEdit
                    OnEditOk = TableExKitsEditOk
                    Columns = <>
                    CanNoSelect = False
                    VisibleEdit = False
                    ItemCount = 1
                    LineColor = 3355443
                    LineColorXor = 3355443
                    LineHotColor = 6052956
                    LineSelColor = 6710886
                    ColumnsColor = 6052956
                    FontHotLine.Charset = DEFAULT_CHARSET
                    FontHotLine.Color = clSilver
                    FontHotLine.Height = -11
                    FontHotLine.Name = 'Tahoma'
                    FontHotLine.Style = []
                    FontLine.Charset = DEFAULT_CHARSET
                    FontLine.Color = clSilver
                    FontLine.Height = -11
                    FontLine.Name = 'Tahoma'
                    FontLine.Style = []
                    FontSelLine.Charset = DEFAULT_CHARSET
                    FontSelLine.Color = clWhite
                    FontSelLine.Height = -11
                    FontSelLine.Name = 'Tahoma'
                    FontSelLine.Style = [fsBold]
                    ColumnsFont.Charset = DEFAULT_CHARSET
                    ColumnsFont.Color = clSilver
                    ColumnsFont.Height = -11
                    ColumnsFont.Name = 'Tahoma'
                    ColumnsFont.Style = [fsBold]
                  end
                end
                object TabSheet2: TTabSheet
                  Caption = 'TabSheet2'
                  ImageIndex = 1
                  TabVisible = False
                end
              end
              object Panel50: TPanel
                Left = 0
                Top = 0
                Width = 930
                Height = 29
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 0
                object Label2: TLabel
                  AlignWithMargins = True
                  Left = 3
                  Top = 3
                  Width = 111
                  Height = 23
                  Align = alLeft
                  Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
                  Color = clSilver
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clSilver
                  Font.Height = -19
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentColor = False
                  ParentFont = False
                end
              end
            end
          end
        end
      end
    end
  end
  object PanelMenu: TsPanel
    Left = 0
    Top = 0
    Width = 40
    Height = 785
    Align = alCustom
    Anchors = [akLeft, akTop, akBottom]
    BevelEdges = [beRight]
    BevelOuter = bvNone
    Color = clGray
    FullRepaint = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnFace
    Font.Height = -12
    Font.Name = 'Century Gothic'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    TabStop = True
    object SpeedButtonMenuReload: TsSpeedButton
      Left = 0
      Top = 623
      Width = 40
      Height = 30
      Hint = 
        #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072#13#10'-'#13#10#1045#1089#1083#1080' '#1091' '#1082#1086#1075#1086'-'#1090#1086' '#1085#1077#1082#1080#1081' '#1085#1086#1084#1077#1088' '#1077#1089#1090#1100',' +
        ' '#1072' '#1091' '#1074#1072#1089' - '#1085#1077#1090', '#13#10' '#1090#1086' '#1085#1072#1078#1084#1080#1090#1077' '#1101#1090#1091' '#1082#1085#1086#1087#1082#1091' '#1080' '#1087#1088#1086#1074#1077#1088#1100#1090#1077' '#1077#1097#1105' '#1088#1072#1079
      Align = alBottom
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonMenuReloadClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 18
      WordWrap = False
      ExplicitTop = 628
    end
    object SpeedButtonMenuAbout: TsSpeedButton
      Left = 0
      Top = 719
      Width = 40
      Height = 30
      Hint = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Align = alBottom
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 0
      WordWrap = False
      ExplicitTop = 709
    end
    object SpeedButtonMenuQuit: TsSpeedButton
      AlignWithMargins = True
      Left = 0
      Top = 755
      Width = 40
      Height = 30
      Hint = #1047#1072#1074#1077#1088#1096#1077#1085#1080#1077' '#1088#1072#1073#1086#1090#1099' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alBottom
      Caption = #1042#1099#1093#1086#1076
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonMenuQuitClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 20
      WordWrap = False
      ExplicitLeft = -2
      ExplicitTop = 740
    end
    object SpeedButtonMenuSettings: TsSpeedButton
      Left = 0
      Top = 689
      Width = 40
      Height = 30
      Hint = #1054#1090#1082#1088#1099#1090#1100' '#1086#1082#1085#1086' '#1085#1072#1089#1090#1088#1086#1077#1082
      Align = alBottom
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonMenuSettingsClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 7
      WordWrap = False
      ExplicitTop = 664
    end
    object SpeedButtonMenuChat: TsSpeedButton
      Left = 0
      Top = 76
      Width = 40
      Height = 30
      Hint = #1048#1075#1088#1086#1074#1086#1081' '#1095#1072#1090
      Align = alTop
      Caption = #1048#1075#1088#1086#1074#1086#1081' '#1095#1072#1090
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonMenuChatClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 1
      WordWrap = False
      ExplicitLeft = -8
      ExplicitTop = 133
    end
    object SpeedButtonMenuMonitor: TsSpeedButton
      Left = 0
      Top = 40
      Width = 40
      Height = 30
      Hint = #1052#1086#1085#1080#1090#1086#1088#1080#1085#1075
      Align = alTop
      Caption = #1052#1086#1085#1080#1090#1086#1088#1080#1085#1075
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonMenuMonitorClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 13
      WordWrap = False
    end
    object SpeedButtonMenuLog: TsSpeedButton
      Left = 0
      Top = 659
      Width = 40
      Height = 30
      Hint = #1054#1073#1097#1080#1081' '#1078#1091#1088#1085#1072#1083' RCON'
      Align = alBottom
      Caption = #1046#1091#1088#1085#1072#1083
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonMenuLogClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 17
      WordWrap = False
      ExplicitTop = 660
    end
    object sSpeedButton9: TsSpeedButton
      Left = 0
      Top = 30
      Width = 40
      Height = 10
      Align = alTop
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 3
      ParentFont = False
      Spacing = 20
      Alignment = taLeftJustify
      ButtonStyle = tbsSeparator
      TextAlignment = taLeftJustify
      ImageIndex = 5
      ExplicitWidth = 38
    end
    object SpeedButtonMenuPlayers: TsSpeedButton
      Left = 0
      Top = 232
      Width = 40
      Height = 30
      Hint = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093' '#1080#1075#1088#1086#1082#1086#1074
      Align = alTop
      Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093' '#1080#1075#1088#1086#1082#1086#1074
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonMenuPlayersClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 3
      WordWrap = False
      ExplicitLeft = -3
      ExplicitTop = 179
    end
    object SpeedButtonMenuMain: TsSpeedButton
      Left = 0
      Top = 0
      Width = 40
      Height = 30
      Hint = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      Align = alTop
      Caption = #1043#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonMenuMainClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 2
      WordWrap = False
      ExplicitLeft = -6
    end
    object Shape1: TShape
      AlignWithMargins = True
      Left = 5
      Top = 200
      Width = 30
      Height = 2
      Margins.Left = 5
      Margins.Top = 4
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alTop
      Brush.Color = 11376726
      Pen.Color = 11376726
      ExplicitLeft = 6
      ExplicitTop = 158
      ExplicitWidth = 28
    end
    object Shape2: TShape
      AlignWithMargins = True
      Left = 5
      Top = 74
      Width = 30
      Height = 2
      Margins.Left = 5
      Margins.Top = 4
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alTop
      Brush.Color = 11376726
      Pen.Color = 11376726
      ExplicitLeft = 4
      ExplicitTop = 68
      ExplicitWidth = 28
    end
    object Shape3: TShape
      AlignWithMargins = True
      Left = 5
      Top = 657
      Width = 30
      Height = 2
      Margins.Left = 5
      Margins.Top = 4
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alBottom
      Brush.Color = 11376726
      Pen.Color = 11376726
      ExplicitLeft = 4
      ExplicitTop = 494
      ExplicitWidth = 28
    end
    object Shape4: TShape
      AlignWithMargins = True
      Left = 5
      Top = 753
      Width = 30
      Height = 2
      Margins.Left = 5
      Margins.Top = 4
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alBottom
      Brush.Color = 11376726
      Pen.Color = 11376726
      ExplicitLeft = 2
      ExplicitTop = 597
      ExplicitWidth = 28
    end
    object SpeedButtonMenuWeb: TsSpeedButton
      Left = 0
      Top = 328
      Width = 40
      Height = 30
      Hint = #1041#1088#1072#1091#1079#1077#1088
      Align = alTop
      Caption = #1041#1088#1072#1091#1079#1077#1088
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonMenuWebClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 11
      WordWrap = False
      ExplicitTop = 238
    end
    object SpeedButtonMenuKits: TsSpeedButton
      Left = 0
      Top = 106
      Width = 40
      Height = 30
      Hint = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072#1084#1080
      Align = alTop
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1089#1087#1080#1089#1082#1072#1084#1080
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonMenuKitsClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 12
      WordWrap = False
      ExplicitLeft = -3
      ExplicitTop = 120
    end
    object Shape6: TShape
      AlignWithMargins = True
      Left = 5
      Top = 326
      Width = 30
      Height = 2
      Margins.Left = 5
      Margins.Top = 4
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alTop
      Brush.Color = 11376726
      Pen.Color = 11376726
      ExplicitLeft = 3
      ExplicitTop = 233
    end
    object SpeedButtonMenuBans: TsSpeedButton
      Left = 0
      Top = 262
      Width = 40
      Height = 30
      Hint = #1041#1072#1085#1099
      Align = alTop
      Caption = #1041#1072#1085#1099
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonMenuBansClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 16
      WordWrap = False
      ExplicitTop = 147
    end
    object SpeedButtonMenuAdmins: TsSpeedButton
      Left = 0
      Top = 292
      Width = 40
      Height = 30
      Hint = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1099
      Align = alTop
      Caption = #1040#1076#1084#1080#1085#1080#1089#1090#1088#1072#1090#1086#1088#1099
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonMenuAdminsClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 9
      WordWrap = False
      ExplicitTop = 192
    end
    object SpeedButtonWork: TsSpeedButton
      Left = 0
      Top = 136
      Width = 40
      Height = 30
      Hint = #1056#1072#1073#1086#1090#1072' '#1089' '#1080#1075#1088#1086#1082#1072#1084#1080
      Align = alTop
      Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1080#1075#1088#1086#1082#1072#1084#1080
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonWorkClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 15
      WordWrap = False
      ExplicitLeft = -3
      ExplicitTop = 112
    end
    object SpeedButtonDonat: TsSpeedButton
      Left = 0
      Top = 202
      Width = 40
      Height = 30
      Hint = #1044#1086#1085#1072#1090
      Align = alTop
      Caption = #1044#1086#1085#1072#1090
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonDonatClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 22
      WordWrap = False
      ExplicitLeft = -3
      ExplicitTop = 175
    end
    object SpeedButtonMenuDB: TsSpeedButton
      Left = 0
      Top = 166
      Width = 40
      Height = 30
      Hint = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
      Align = alTop
      Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBtnFace
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      Margin = 0
      ParentFont = False
      Spacing = 20
      OnClick = SpeedButtonMenuDBClick
      Alignment = taLeftJustify
      Images = ImageList24
      TextAlignment = taLeftJustify
      ImageIndex = 19
      WordWrap = False
      ExplicitLeft = -3
      ExplicitTop = 152
    end
  end
  object ClientSocket: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    OnLookup = ClientSocketLookup
    OnConnecting = ClientSocketConnecting
    OnConnect = ClientSocketConnect
    OnDisconnect = ClientSocketDisconnect
    OnRead = ClientSocketRead
    OnWrite = ClientSocketWrite
    OnError = ClientSocketError
    Left = 1088
    Top = 488
  end
  object ImageList24: TImageList
    ColorDepth = cd32Bit
    Height = 32
    Width = 32
    Left = 1094
    Top = 280
    Bitmap = {
      494C01011700EC05840620002000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000C000000001002000000000000080
      0100000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000373737A4414141C14141
      41C1414141C1414141C10B0B0B25000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF555555F71414143E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000060606162D2D2D85383838A3383838A3383838A3383838A33838
      38A3383838A3383838A3383838A3383838A3383838A3383838A3383838A33838
      38A3383838A3383838A3383838A3383838A3383838A3343434991B1B1B540000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020202080A0A0A200A0A
      0A210A0A0A210A0A0A210A0A0A210A0A0A210A0A0A210A0A0A210A0A0A210A0A
      0A210A0A0A210A0A0A2106060613000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF555555F71414143E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303030C4D4D4DE2585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FE2727
      2774000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E2E484848D3535353EF5353
      53EF535353EF535353EF535353EF535353EF535353EF535353EF535353EF5353
      53EF535353EF535353EF4F4F4FE8262626700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF555555F71414143E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001C1C1C57575757FD585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF4A4A
      4ADB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003636369E585858FF575757FE5757
      57FE575757FE575757FE575757FE575757FE575757FE575757FE575757FE5757
      57FE575757FE575757FE575757FE505050EA0707071800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF555555F71414143E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022222269585858FF575757FC3030308F0F0F0F310F0F0F310F0F0F310F0F
      0F310F0F0F310F0F0F310F0F0F33222222692323236C1919194E0F0F0F310F0F
      0F310F0F0F310F0F0F310F0F0F310F0F0F310F0F0F31515050EF585858FF5151
      51ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF272727760303
      030E0303030E0303030E0303030E0303030E0303030E0303030E0303030E0303
      030E0303030E0808081D565656FC545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF555555F71414143E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022222269585858FF575757FC2424246E0000000000000000000000000000
      0000000000020303030E0F0F0F33565656FC585858FF3A3A3AAD0303030B0000
      000000000000000000000000000000000000000000004D4D4DE5585858FF5151
      51ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0000
      00000000000000000000010101042525256D0C0C0C2600000000000000000000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF555555F71414143E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022222269585858FF575757FC2424246E0000000000000000000000000000
      000027272777585858FF585858FF585858FF585858FF585858FF585858FF3535
      359D00000000000000000000000000000000000000004D4D4DE5585858FF5151
      51ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0000
      000000000000000000002323236B565656FB4B4B4BD80C0C0C26000000000000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF565656FB535353F7515151EF515151EF4F4F4FEA474747D23333
      33970F0F0F310000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022222269585858FF575757FC2424246E0000000000000000000000000000
      000026262673585858FF585858FF585858FF585858FF585858FF585858FF5353
      53F400000000000000000000000000000000000000004D4D4DE5585858FF5151
      51ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001A1A1A4E272727740E0E0E2D0000
      000000000000000000000A0A0A21474747D3575757FE4B4B4BDC0D0D0D2A0000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FE3333339900000005000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022222269585858FF575757FC2424246E0000000000000000000000000000
      00001A1919503E3E3EB93E3E3EB93E3E3EB93E3E3EB9575756FF585858FF5454
      54F500000000000000000000000000000000000000004D4D4DE5585858FF5151
      51ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B251313133B1313133B1313
      133B1313133B1313133B1313133B1F1F1F5E545453F6575757FE4B4B4BDC0C0C
      0C26000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF3D3D3DB6000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022222269585858FF575757FC2424246E0000000000000000000000000000
      0000010101072D2D2D87383838A3383838A3383838A3575756FF585858FF5454
      54F500000000000000000000000000000000000000004D4D4DE5585858FF5151
      51ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF4B4B
      4BD8070707180303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF575757FE262626700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022222269585858FF575757FC2424246E0000000000000000000000000000
      000021212167575757FD585858FF585858FF585858FF585858FF585858FF5353
      53F500000000000000000000000000000000000000004D4D4DE5585858FF5151
      51ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031313191474747D1474747D14747
      47D1474747D1474747D1474747D1474747D1565555FA585858FF575757FE3333
      3398010101060303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF515151EF0000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022222269585858FF575757FC2424246E0000000000000000000000000000
      000026262673585858FF585858FF585858FF585858FF585858FF585858FE3A3A
      3AAE00000000000000000000000000000000000000004D4D4DE5585858FF5151
      51ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202080404040F0303030A0202
      020802020208020202080303030A2424246A565656FA575757FC3535359D0101
      0106000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF555555F71F1F1F610A0A0A230A0A0A230C0C0C272222226A5454
      54F7585858FF585858FF585858FF575757FD1818184B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022222269585858FF575757FC2424246E0000000000000000000000000000
      000026262673585858FF585858FF39393AAE1E1E1E5E1E1E1E5E1D1D1D5B0E0E
      0E2F00000000000000000000000000000000000000004D4D4DE5585858FF5151
      51ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003030308F464646CD1B1B1C540000
      000000000000000000001C1C1C57545454F5575757FE3535359D020202080000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF555555F71414143E000000000000000000000000000000002F2F
      2F8E585858FF585858FF585858FF585858FF2626267200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022222269585858FF575757FC2424246E0000000000000000000000000000
      000026262673585858FF585858FF585858FF585858FF585858FF585858FF5455
      55FA00000000000000000000000000000000000000004D4D4DE5585858FF5151
      51ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0000
      00000000000000000000131313384F4F4FE63333339801010106000000000000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF555555F71414143E000000000000000000000000000000002727
      2779565656FC585858FF585858FF585858FF2828287800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022222269585858FF575757FC2424246E0000000000000000000000000000
      00001F1F1F62575757FD585858FF585858FF585858FF585858FF585858FF5454
      54F500000000000000000000000000000000000000004D4D4DE5585858FF5151
      51ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0000
      00000000000000000000000000000A0A0A210101010600000000000000000000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF555555F71414143E0000000000000000000000000909091E4949
      49D8585858FF585858FF585858FF575757FE2121216000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022222269585858FF575757FC2424246E0000000000000000000000000000
      00000000000326262670373737A0565656FC585858FF494949D82F2F2F8D2D2D
      2D8700000000000000000000000000000000000000004D4D4DE5585858FF5151
      51ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB4585858FF3A3A3BAD2525
      256F2525256F2525256F2525256F2525256F2525256F2525256F2525256F2525
      256F2525256F28282878575757FE545454F20C0C0C2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF565656FB4E4E4EE8474747D1474747D1484848D4525252F35858
      58FF585858FF585858FF585858FF565656FC0606061400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000022222269585858FF575757FC2424246E0000000000000000000000000000
      00000000000000000000060606133E3D3DB73E3E3EB926262670000000000000
      000000000000000000000000000000000000000000004D4D4DE5585858FF5151
      51ED000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A2A2A7C575757FE585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF484848D40303030A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF383838A70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000021212166585858FF575757FD494949D83C3C3CB13C3C3CB13C3C3CB13C3C
      3CB13C3C3CB13C3C3CB13C3C3CB13C3C3CB13C3C3CB13C3C3CB13C3C3CB13C3C
      3CB13C3C3CB13C3C3CB13C3C3CB13C3C3CB13C3C3CB1565656FC585858FF4F4F
      4FEA000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030C2929297C3B3B3BAF3B3B
      3BB03B3B3BB03B3B3BB03B3B3BB03B3B3BB03B3B3BB03B3B3BB03B3B3BB03B3B
      3BB03B3B3BB03B3B3BB03535359C0E0E0E2C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF4C4C4CE1060606160000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F0F0F31565656FC585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF3D3D
      3DB4000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE3585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF4A4A4ADB0C0C0C28000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002828287A565656FC585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF484848D30C0C
      0C27000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004E4E4EE7585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5151
      51EC2E2E2E890303030D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020202080A0A0A230A0A0A230A0A0A230A0A0A230A0A
      0A230A0A0A230A0A0A230A0A0A230A0A0A230A0A0A230A0A0A230A0A0A230A0A
      0A230A0A0A230A0A0A230A0A0A230A0A0A230A0A0A230707071A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E0E0E2E141414411414
      144114141441141414411414144114141441141414411414143D0B0B0B250000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001414143D1818184A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B252A2A2A79404040BC4B4B4BDE4D4D4DE4454545CD333333981616
      1644010101040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020202080A0A0A200A0A
      0A210A0A0A210A0A0A210A0A0A210A0A0A210A0A0A210A0A0A210A0A0A210A0A
      0A210A0A0A210A0A0A2106060613000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000015151541515151ED2021216400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000030909091F0A0A0A210A0A
      0A210A0A0A210A0A0A210A0A0A210A0A0A210A0A0A210A0A0A210A0A0A210A0A
      0A210A0A0A210A0A0A210A0A0A210303030E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030B2D2D
      2D87535353EF575757FE575757FE575757FD565656FB575757FE585858FF5656
      56FA404040BC0E0E0E2D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E2E484848D3535353EF5353
      53EF535353EF535353EF535353EF535353EF535353EF535353EF535353EF5353
      53EF535353EF535353EF4F4F4FE8262626700000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001414143F505050E9585858FF2B2C2C800909091E010101070000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002D2D2D83525252EE535353EF5353
      53EF535353EF535353EF535353EF535353EF535353EF535353EF535353EF5353
      53EF535353EF535353EF535353EF474747CF0505051000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303030B3F3F3FB95757
      57FE575757FC414141C1222222681414143F111111381A1A1A50313131945252
      52F2575757FE505050EA1414143D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003636369E585858FF575757FE5757
      57FE575757FE575757FE575757FE575757FE575757FE575757FE575757FE5757
      57FE575757FE575757FE575757FE505050EA0707071800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E0E0E2D525252EC585858FF585858FF585858FF555555F9464646CD1F1F
      1F5E010101040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF575757FE5757
      57FE575757FE575757FE585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101073B3B3BAF575757FE4F4F
      4FE81D1D1D5A0000000000000000000000000000000000000000000000001717
      1747545453F5585858FF505050EB0E0E0E2E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF272727760303
      030E0303030E0303030E0303030E0303030E0303030E0303030E0303030E0303
      030E0303030E0808081D565656FC545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000005050510434343C3575757FE585858FF515151ED535353F4575757FE5757
      57FE3C3C3CB20505051200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF464646CF0E0E
      0E2F1313133C4F4F4FE7585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000022222263575757FD515151ED1616
      16440000000000000000000000000000000000000000000000000B0B0B224949
      49D7575757FE545454F5575757FE414141BF0000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0000
      0000000000030000000300000003000000030000000300000003000000000000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202090000
      00000000000007070717424242C0575757FE2424256E0A0A0A20272727785252
      52F1575757FE3D3D3DB401010104000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF272727770000
      000000000000363636A3585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020209494949D6575757FD2929297A0000
      000000000000000000000000000000000000000000000B0B0B22474747D35757
      57FE494949D717171747515151EC565656FB1919194800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C1212
      1237434343C5444444C6444444C6444444C6444444C6404242BE0B0B0B220000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000004040411424343C50D0D
      0D2A000000000000000007070717424242C42021216400000000000000001717
      1749525252F1575757FE20202061000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF444444C70707
      07170B0B0B254D4D4DE2585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001414143D565656FB515151EE020202090000
      0000000000000000000000000000000000000B0B0B25494949D7585858FF4848
      48D40B0B0B220000000030303091575757FD3535359C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C1919
      194C575757FC585858FF585858FF585858FF585858FF545454F50E0E0E2E0000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000027272774575757FE4141
      41C1000000000000000000000000040404110B0B0B2500000000000000000000
      000027272778575757FC464646CE020202080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5656
      56FD575757FD585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000026262670575757FE3B3B3BAF000000000000
      00000000000000000000000000000B0B0B22494949D7575757FE494949D70B0B
      0B2200000000000000001A19194F575656FC484848D400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0404
      04111818184B1818184B1818184B1818184B1818184B16171746020202090000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000013E3E3EB8575757FD2929
      297B000000000000000000000000000000000000000000000000000000000000
      00000B0B0B20525252F0565656FA0B0B0B200000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002F2F2F8B555555F7555555F95555
      55F9555555F9555555F9555555F9555555F9555555F9555555F9555555F95555
      55F9555555F9555555F9555555F9494949D80606061300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8C575757FE32323297000000000000
      000000000000000000000B0B0B22474747D3575757FE494949D70C0C0C260000
      0000000000000000000012121239555555F7515151EE00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0808
      0819222221642222226422222264222222642222226422222264222222642222
      2264151515410303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010107454545CB565656FB1A1A
      1A51000000000000000000000000000000000000000000000000000000000000
      00000404040F484848D5575757FD111111360000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202080F0F0F31101010331010
      1033101010331010103310101033101010331010103310101033101010331010
      10331010103310101033101010330707071A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E2E2E86575757FE3535359C000000000000
      0000000000000B0B0B25494949D7585858FF484848D40B0B0B22000000000000
      000000000000000000001414143F555555FA515151E900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C1919
      194C575757FC585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF3B3B3BAF0303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010104444444C6565656FB1D1D
      1D58000000000000000000000000000000000000000000000000000000000000
      0000060606144C4C4CDF575757FE0F0F0F300000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E2E2E2E2E8A2F2F2F8D2F2F
      2F8D2F2F2F8D2F2F2F8D2F2F2F8D2F2F2F8D2F2F2F8D2F2F2F8D2F2F2F8D2F2F
      2F8D2F2F2F8D2F2F2F8D2F2F2F8D1F1F1F5F0000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001F1F1F5D575757FE414343C3000000000000
      00000B0B0B22494949D7575757FE494949D70B0B0B2200000000000000000000
      0000000000000000000021212165565656FC424242C000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C1010
      10333F3F3FBB3F3F3FBB3F3F3FBB3F3F3FBB3F3F3FBB3F3F3FBB3F3F3FBB3F3F
      3FBB2929297C0303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000373737A4575757FE3131
      3193000000000000000000000000000000000000000000000000000000000000
      00001414143F555555F8535353EF070707180000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B3B3BAA585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF515151EE0A0A0A2100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D0D0D29545454F2545454F50A0A0A230B0B
      0B22474747D3575757FE494949D70C0C0C260000000000000000000000000000
      00000000000000000000404040BE575757FE2C2C2C8000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000303030F565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001A1A1A50575757FE5050
      50EB0D0D0D290000000000000000000000022D2D2D8800000005000000000000
      000017171747545454F23B3B3BAF000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF565656FC3C3C
      3CB3424242C2575757FD585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000013D3D3DB5585858FF3F3F3FBB4949
      49D7585858FF484848D40B0B0B22000000000000000000000000000000000000
      0000000000001D1D1D59565656FA535353F10C0C0C2700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF565656FE5656
      56FD565656FD565656FD565656FD565656FD565656FD565656FD565656FD5656
      56FD565656FD565656FE575757FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000424242C45757
      57FE494949D80D0D0D290000000001010104575656FE33333397010101070000
      0000000000001919194D0D0D0D2C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF333333990000
      000100000000414141C1585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010101034545454F2575757FE5757
      57FF494B4BD80B0B0B2200000000000000000000000000000000000000000000
      0000151515434F4F4FE6575757FE2F2F2F8B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B0B0B254B4B
      4BDC575757FE505050EA323232951E1E1E5B575756FE575757FC333333970000
      0005000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2E2E2E890000
      0001000000013C3C3CB1585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023232366575757FE5757
      57FE3F3F3FBC0A0A0A2300000000000000000000000000000000020202092828
      2879515151ED575757FE414141BB0303030C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB4585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20C0C0C2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B0B
      0B25434343C3575757FE585858FF585858FF585858FF585858FF575757FE2E2E
      2E86000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF525252F02F2F
      2F8E3434349B565656FB585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212121655353
      53F3585858FF555555F8434343C53535359C323232963B3B3BB1515151EF5757
      57FE575757FD3B3B3BB00303030C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002A2A2A7C575757FE585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF484848D40303030A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A1A1A50373737A2444444C7575757FE585858FF515151ED1111
      1137000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003C3C3CB1585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF535353F10C0C0C2600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      10333C3C3CB3545454F2575757FE585858FF585858FF585858FF565656FA4A4A
      4AD5202020610202020800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030C2929297C414141C15757
      57FE575757FE3B3B3BB03B3B3BB03B3B3BB03B3B3BB03B3B3BB03B3B3BB04D4C
      4CE1585858FF4C4C4CDF3535359C0E0E0E2C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020208575756FE515151E9161616400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000171717473A3A3AAD3B3B3BB03B3B
      3BB03B3B3BB03B3B3BB03B3B3BB03B3B3BB03B3B3BB03B3B3BB03B3B3BB03B3B
      3BB03B3B3BB03B3B3BB03B3B3BB02C2C2C840101010400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010C0C0C261F1F1F5D2A2A2A7F2C2C2C842525256D1313133C0202
      0208000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F0F0F315555
      55F8565656FE0000000000000000000000000000000000000000000000003535
      359E585858FF2F2F2F8E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010104515150EE15151542000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060606132323
      2366222222680000000000000000000000000000000000000000000000001615
      1540232323691313133800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F3100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B252A2A2A79404040BC4B4B4BDE4D4D4DE4454545CD333333981616
      1644010101040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000007070717262626703E3E3EB7494949D84D4D4DE0434343C7303030901212
      1235000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030B2D2D
      2D87535353EF575757FE585858FF585858FF585858FF585858FF585858FF5656
      56FA404040BC0E0E0E2D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000111111361313
      133B1313133B1313133B0B0B0B2300000000000000000303030D1313133B1313
      133B1313133B1313133B04040511000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000021F1F
      1F5E4E4E4EE3575757FE575757FE575757FD565656FB575757FE585858FF5454
      54F63535359E0404041100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303030B3F3F3FB95757
      57FE585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF505050EA1414143D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000565656FC5858
      58FF585858FF585858FF3A3A3AA9000000000000000017171749565656FA5858
      58FF585858FF585858FF1F1F1F5E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000808081C2525256F373737A4414141BF424242C23D3D3DB42D2D2D831414
      143D000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000262626735555
      55F9575757FE474747D3252525711414143F121212391C1C1C56393939A85656
      56FB575757FE434343C30303030C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101073B3B3BAF575757FE5757
      57FE585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF505050EB0E0E0E2E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000555555FB5858
      58FF585858FF585858FF393939A8000000000000000017171749555555F85858
      58FF585858FF585858FF1F1F1F5D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C273A3A
      3AA9565656FB585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF494949D71C1C1C5500000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001919194E575757FE5555
      55F92E2E2E8A0101010400000000000000000000000000000000000000001616
      16444D4D4DE1585858FF3A3A3AA9000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000022222263575757FD575757FE4444
      44CA31313193515151ED575757FE585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF414141BF0000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000555555FB5858
      58FF585858FF585858FF393939A8000000000000000017171749555555F85858
      58FF585858FF585858FF1F1F1F5D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000021B1B1B54515151ED5757
      57FE585858FF575757FE525252F1464646CF424242C54D4D4DE4575757FD5858
      58FF585858FF565656FB3434349B0404040F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030D474747D2575757FD3232
      3295010101040000000000000000000000000000000000000000000000000000
      000016161645535353EF565656FB171717470000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020209494949D6585858FF585858FF5454
      54F20E0E0E2C0909091F2B2B2B814F4F4FE8575757FE585858FF585858FF5858
      58FF585858FF585858FF585858FF565656FB1919194800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000555555FB5858
      58FF585858FF585858FF393939A8000000000000000017171749555555F85858
      58FF585858FF585858FF1F1F1F5D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001F1F1F5E555555F6585858FF5858
      58FF575757FE404040BD0E0E0E2D0000000100000000050505122828287A5656
      56FD585858FF585858FF575757FE3B3B3BAE0202020900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001818184A575757FE4D4D4DE00808
      0819000000000000000000000000000000000000000000000000000000000000
      00000000000232323295575757FE3A3A3AAD0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001414143D565656FB585858FF585858FF5757
      57FE3333339900000000000000000303030B2424246F484848D5575757FF5858
      58FF585858FF585858FF585858FF585858FF3535359C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000555555FB5858
      58FF585858FF585858FF3E3E3EB90C0C0C280C0C0C282222226A555555F85858
      58FF585858FF585858FF1F1F1F5D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001313133C545454F4585858FF585858FF5757
      57FE464646CE0303030B1D1D1D59484848D34E4E4EE7313131930404040F2828
      2879565656FC585858FF585858FF575757FE3131319200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002F2F2F8C585858FF3434349D0000
      00000000000000000000000000000909091F0C0C0C2801010106000000000000
      00000000000015151542545454F54E4E4EE30303030B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000026262670575757FE585858FF585858FF5858
      58FF535353F408080819000000000909091F1313133A0707071A484848D35757
      57FE585858FF585858FF585858FF585858FF484848D400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000555555FB5858
      58FF585858FF585858FF565657FC535353F3535353F3555555F8575757FE5858
      58FF585858FF585858FF1F1F1F5D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000002464646CC575757FE585858FF585858FF5757
      57FD1D1D1D581414143D535353F3585858FF585858FF575757FE323232950505
      05124C4C4CE1585858FF585858FF585858FF565656FA11111137000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000393939A8585858FF262626730000
      0000000000000000000002020208434242C5525254F212121239000000000000
      0000000000000707071A545454F5515151EE0A0A0A2000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8C585858FF585858FF585858FF5858
      58FF575757FE2C2C2C840303030A444444C8555555F91414143D2424246F5757
      57FD585858FF585858FF585858FF585858FF515151EE00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F0F0F312222226422222264575757FD5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF3535359D222222641E1E1E5900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000017171747575757FE585858FF585858FF585858FF5454
      54F40F0F0F312F2F2F8C575757FE585858FF585858FF585858FF515151EF0000
      0000424242C0585858FF585858FF585858FF585858FF393939A8000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A3A3AA9585858FF272727740000
      0000000000000000000002020209464646CD575757FD1414143D000000000000
      0000000000000808081B545454F6525252EE0A0A0A2100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E2E2E86575757FE585858FF585858FF5858
      58FF585858FF4D4D4DE40808081B31313192454545CA0A0A0A210303030B4F4F
      4FE6585858FF585858FF585858FF585858FF515151E900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000808081B434343C3575757FE585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF515151ED1B1B1B5300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B24555555F9585858FF585858FF585858FF5555
      55F81313133828282878575757FE585858FF585858FF585858FF4A4A4ADA0000
      0001464646CC585858FF585858FF585858FF585858FF2B2B2B81000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002D2D2D87585858FF383838A50000
      0000000000000000000002020209464646CD575757FD1414143D000000000000
      00000000000017171748555555F84D4D4DE00202020800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001F1F1F5D575757FE585858FF585858FF5858
      58FF585858FF575757FE303030910808081A0202020900000000000000002B2B
      2B80575757FE585858FF585858FF585858FF424242C000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000060606143B3B3BAE575757FE5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF4E4E4EE3151515410000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000033333397575757FE585858FF585858FF5757
      57FD2A2A2A7E0707071A484848D3575757FE585858FF545454F41E1E1E5B0E0E
      0E2D515151ED585858FF585858FF585858FF4F4F4FE606060614000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000017171747575757FD4E4E4EE50808
      081D000000000000000002020209464646CD575757FD1414143D000000000000
      0000000000023535359C575757FE383838A70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D0D0D29545454F2585858FF585858FF5858
      58FF585858FF585858FF575757FE4E4E4EE42B2B2B8208080819000000000909
      091F505050EA585858FF585858FF575757FE2C2C2C8000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020209383838A35757
      57FE585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FE4D4D4DE10D0D0D2B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000006060614474747D1575757FE585858FF5858
      58FF535353EF111111370707071A262626742D2D2D871414143D0303030B3F3F
      3FBC575757FE585858FF585858FF555555F71A1A1A5000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030C494949D2575757FD3737
      37A0010101040000000002020209464646CD575757FD1414143D000000000000
      00001919194D545454F2565656FB1414143E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000013D3D3DB5585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF535353F4343434990D0D
      0D2B31313192575757FE585858FF535353F10C0C0C2700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000032E2E
      2E89565656FB585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FE464646CD0909091E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B22484848D3575757FE5858
      58FF585858FF525252F02A2A2A7F111111370E0E0E2E1D1D1D58464646CE5757
      57FE585858FF585858FF545454F5212121640000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151543555555F95656
      56FC363636A105050512000000021C1C1B532323236906060615000000031E1E
      1E5D515151ED585858FF3B3B3BAE000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010101034545454F2585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5454
      54F2444444CA565656FC575757FE2F2F2F8B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      010425252571555555F8585858FF585858FF585858FF585858FF575757FE3E3E
      3EB9070707180000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000070707173C3C3CB15656
      56FA585858FF585858FF575757FE555555F9545454F6575757FD585858FF5858
      58FF575757FE4B4B4BDD17171747000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002525256E5454
      54F6575757FE4B4B4BDC2D2D2D871C1C1C561919194E2424246F3F3F3FBC5555
      55F9575757FE575757FF515151EE151515420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023232366575757FE5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF575757FE414141BB0303030C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1F1F60545454F5585858FF585858FF575757FE3A3A3AAB0303
      030C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000031919
      194E3E3E3EB7575757FD575757FE575757FE585858FF575757FE575757FE4B4B
      4BDB2828287A0606061300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A1A
      1A514D4D4DE2575757FE585858FF585858FF585858FF585858FF575757FE5555
      55F72D2D2D883D3D3DB5515151ED1313133B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212121655353
      53F3585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FD3B3B3BB00303030C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000017171748515151EC575757FD31313192000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000050505101616164421212160212121641B1B1B540A0A0A230000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020208212121603A3A3AA9444444C6464646CC3F3F3FB82929297A0707
      071A00000000020202080E0E0E2D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      10333C3C3CB3545454F2575757FE585858FF585858FF585858FF565656FA4A4A
      4AD5202020610202020800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000111111372626267000000005000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000232222693E3E3EB73F3F3FBA404040BD3E3E3EB83A3A3BAF0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010C0C0C261F1F1F5D2A2A2A7F2C2C2C842525256D1313133C0202
      0208000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000032323296585858FF585858FF585858FF585858FF555555F70000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001414143E23232369232323692323236923232369232323660000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000000000
      0000000000000000000000000000000000020000000300000000000000000000
      0000000000000000000000000003000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E2E2E8A444444C61A1B1B520000
      00000000000000000000010101063636369F434343C50E0E0E2C000000000000
      00000000000002020209424242C4414141BB0808081D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000011111136313131933C3C3CB01E1E1E5C010101070000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0000
      0000000000000000000002020209464646CD575757FD1414143D000000000000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000808081B3A3A3AAD575757FC585858FF585858FF585858FF4B4B4BDD1818
      184B000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030C02020209000000000000
      0000000000000000000000000000000000000000000000000000050505100000
      0003000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B252A2A2A79404040BC4B4B4BDE4D4D4DE4454545CD333333981616
      1644010101040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0000
      0000000000000000000002020209464646CD575757FD1414143D000000000000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000F0F
      0F304A4A4AD9575757FE585858FF585858FF414141C24C4C4CDF575757FE5555
      55F7262626730000000200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003535359E4B4B4BD82A2A2A7E0C0C
      0C26000000030000000000000000050505101919194C373737A44F4F4FE64646
      46CF2A2A2A7D0D0D0D2B01010106000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030B2D2D
      2D87535353EF575757FE575757FE575757FE585858FF585858FF585858FF5656
      56FA404040BC0E0E0E2D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000404040BD585858FF252526720000
      000000000000000000000303030B474747D2575757FD16161644000000000000
      00000000000006060614565656FC545454F40E0E0E2D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000A0A0A214B4B
      4BDC585858FF585858FF585858FF585858FF20212164080808193636369F5656
      56FB555555F92222226500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5454
      54F43E3E3EB722222268323232964C4C4CDF575757FE575757FE575757FE5757
      57FE585858FF565656F9444444C62525256F0101010400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303030B3F3F3FB95757
      57FE565656FC434343C7282828794B4B4BDD585858FF585858FF585858FF5858
      58FF585858FF505050EA1414143D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000032323296575757FC585858FF545454F52121
      2160000000000303030C3B3B3BB0585858FE585858FF4F4F4FE6121212390000
      00000B0B0B20474747D2575757FE585858FF4A4A4ADA0808081D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000003424242C25858
      58FF585858FF585858FF585858FF585858FF2021216400000000000000002E2E
      2E89555555F9565656FA0E0E0E2E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF585858FF585858FF565656FC464646CF2B2B2B81323232965757
      57FE585858FF585858FF585858FF545454F20C0C0C2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101073B3B3BAF575757FE4F4F
      4FE81E1E1E5E000000011818184A4F4F4FE6585858FF585858FF585858FF5858
      58FF585858FF585858FF505050EB0E0E0E2E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001414143E575757FD585858FF585858FF585858FF4D4D
      4DE00505051021212164575757FD585858FF585858FF585858FE444444C60000
      00002F2F2F8D575757FE585858FF585858FF585858FF373737A0000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000020202062575757FE5858
      58FF585858FF585858FF585858FF585858FF2021216400000000000000000202
      02083C3C3CB2575757FE404040BD010101070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF535353F3313131921212123902020209000000002525256F5757
      57FE585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000022222263575757FD515151EE1616
      1644000000001919194D545454F6585858FF585858FF585858FF585858FF5858
      58FF565656FA4B4B4BDF575757FE414141BF0000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000022222268575757FE585858FF585858FF585858FF5252
      52F10D0D0D2931313193585858FF585858FF585858FF585858FF545454F50000
      00003D3D3DB5585858FF585858FF585858FF585858FF444444C6000000030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030A464646CD585858FF5858
      58FF585858FF585858FF585858FF585858FF2021216400000000000000000000
      00000D0D0D2C515151EF565656FB1414143F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF454545CA010101070000000000000000000000002525256F5757
      57FE585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020209494949D6575757FD2828287A0000
      00000000000031313192585858FF585858FF585858FF585858FF565656FC3333
      339A1E1E1E5B0B0B0B25515151ED565656FB1919194800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002424236B575757FE585858FF585858FF585858FF5353
      53F30D0D0D2C33333398585858FF585858FF585858FF585858FF555555F90000
      00003F3F3FBB585858FF585858FF585858FF585858FF454545C9000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000012121239575757FD585858FF5858
      58FF585858FF585858FF585858FF585858FF2021216400000000000000000000
      000000000001373737A0575757FE3535359C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF454545CA010101070000000000000000000000002525256F5757
      57FE585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001414143D565656FB515151ED0303030A0000
      00000808081B4A4A4ADA585858FF585858FF585858FF585858FF555555F70000
      0000000000000000000031313193575757FD3535359C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000707071A1818184B1818184B1818184B1818184B1617
      1746020202090C0C0C271818184B1818184B1818184B1818184B161616440000
      0000101010331818184B1818184B1818184B1818184B11111136000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000028282879575757FE585858FF5858
      58FF585858FF585858FF585858FF585858FF2021216400000000000000000000
      0000000000001B1B1B54565656FA4B4B4BD80000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF454545CA010101070000000000000000000000002525256F5757
      57FE585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000026262670575757FE3B3B3BB0000000000909
      091E464646CE575757FE585858FF585858FF585858FF585858FF545454F70000
      000000000000000000001A19194F575656FC484848D400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C28222222642222226422222264222222642121
      215F0404040F1313133B22222264222222642222226422222264202020610000
      0000171717472222226422222264222222642222226419191A4D000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003434349A585858FF575757FE5757
      57FE575757FE575757FE575757FE575757FE363637A122222264222222642222
      2264222222642A2A2A7E555555F9515151E90606061500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF454545CA010101070000000000000000000000002525256F5757
      57FE585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8C575757FE323232960808081A4646
      46CE575757FF575757FE575757FE575757FE575757FE575757FE404040BD0000
      000000000000000000001313133A555555F7515151EE00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002424236B575757FE585858FF585858FF585858FF5454
      54F20D0D0D2B32323296585858FF585858FF585858FF585858FF555555F80000
      00003E3E3EB9585858FF585858FF585858FF585858FF454545C9000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003C3C3CB2585858FF2424246F0101
      010401010104010101040101010402020208575756FE585858FF585858FF5858
      58FF585858FF585858FF585858FF535353F10C0C0C2600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF454545CA010101070000000000000000000000002525256F5757
      57FE585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E2E2E86575757FE3D3D3DB64A4A4AD55858
      58FF565657FE0101010401010104010101040101010401010104000000000000
      000000000000000000001313133E555555F9515151E900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002424246B575757FE585858FF585858FF585858FF5353
      53F10D0D0D2B32323296585858FF585858FF585858FF585858FF555555F70000
      00003E3E3EB8585858FF585858FF585858FF585858FF454545C9000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0000
      000000000000000000000000000001010104575756FE585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF454545CA010101070000000000000000000000002525256F5757
      57FE585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001F1F1F5D575757FE575757FE575757FE5858
      58FF575757FE3A3A3AAB373737A20D0D0D2B0000000000000000000000000000
      0000000000000000000020202063565656FC424242C000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002424246B575757FE585858FF585858FF585858FF5353
      53F10D0D0D2B32323296585858FF585858FF585858FF585858FF555555F70000
      00003E3E3EB8585858FF585858FF585858FF585858FF454545C9000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0000
      000000000000000000000000000001010104575756FE585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF454545CA010101070000000000000000000000002525256F5757
      57FE585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D0D0D29545454F2585858FF585858FF5858
      58FF585858FF585858FF575757FE3030308F0000000000000000000000000000
      000000000000000000003F3F3FBB575757FE2C2C2C8000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002424246B575757FE585858FF585858FF585858FF5353
      53F10D0D0D2B32323296585858FF585858FF585858FF585858FF555555F70000
      00003E3E3EB8585858FF585858FF585858FF585858FF454545C9000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0000
      000000000000000000000000000001010104575756FE585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF454545CA010101070000000000000000000000032C2C2C845757
      57FE585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000013D3D3DB5585858FF585858FF5858
      58FF585858FF585858FF585858FF393939A60C0C0C2906060616000000000000
      0000000000001B1B1B55565656FB535353F10C0C0C2700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000023232366545454F5575757FD585858FF565656FA5050
      50EA0C0C0C2931313192545454F6575757FE575757FE555555F9515152F00000
      00003D3D3DB4545454F7575757FE575757FE555555F7414143C1010101040000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF3434349B0606
      061500000000000000000000000001010104575756FE585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF454545CA0303030B0A0A0A2326262674454545C9545454F65757
      57FE585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010101034545454F2585858FF5858
      58FF585858FF585858FF585858FF565656FA535353F34F4F4FE6202020630000
      00001414143E4D4D4DE4575757FE2F2F2F8B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000040404110D0D0D2C434242C5585858FF2D2D2D880D0D
      0D2B000000050606061810101035494949D8575757FD202020630C0C0C290000
      00000909091F1212123B565656FC545454F51A1A1A500A0A0A21000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003C3C3CB2575757FE575757FE4C4C
      4CE12D2D2D870808081B0000000001010104575756FE585858FF585858FF5858
      58FF585858FF585858FF575757FE535353F10C0C0C2600000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000393939A6575757FE585858FE5858
      58FF585858FF505050EA404040BF535353F3575757FE575757FE575757FD5757
      57FE575757FE585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023232366575757FE5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF4F4F50EA2828
      287A505050EB575757FE414141BB0303030C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0000
      0000000000000000000002020209464646CD575757FD1414143D000000000000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000404040F2525256F4A4A4AD95757
      57FE585858FF545454F7373737A21414143F575756FE585858FF585858FF5858
      58FF585858FF525252F03434349A0E0E0E2D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101071818184B383838A34F4F
      4FE6585858FF585858FF585858FF525252F13C3C3CB01D1D1D590303030B1212
      1235323232964E4E4EE4575757FE545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212121655353
      53F3585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FD3B3B3BB00303030C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF2323236C0000
      0000000000000000000002020209464646CD575757FD1414143D000000000000
      0000000000000303030E565656FB545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030D1D1D
      1D58434343C3565656F9575757FE555555F7575757FE585858FF575757FE4D4D
      4DE12D2D2D830A0A0A2100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      06141A1A1A513434349A232323670909091D0000000100000000000000000000
      000000000000060606131E1E1E5D323232940404040F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      10333C3C3CB3545454F2575757FE585858FF585858FF585858FF565656FA4A4A
      4AD5202020610202020800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000383838A7575757FE202020610000
      0000000000000000000000000005434343C5565656FC0F0F0F31000000000000
      00000000000002020208535353F5515151ED0909091E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000003151515433B3B3BAF565656FB575757FE4B4B4BD82424246A0404
      0411000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010C0C0C261F1F1F5D2A2A2A7F2C2C2C842525256D1313133C0202
      0208000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000707071A1E1E1E5D010101040000
      00000000000000000000000000000D0D0D291A1A1A4F00000002000000000000
      000000000000000000001313133B161616400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000B0B0B241617164600000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000005060606160808081B0303030C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B252A2A2A79404040BC4B4B4BDE4D4D4DE4454545CD333333981616
      1644010101040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000909091F484848D44F4F4FE84F4F4FE84F4F4FE6232323670000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00010E0E0E2E3434349A4B4B4BDC505050EA525252EC4E4E4EE53F3F3FB91D1D
      1D58020202090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030B2D2D
      2D87535353EF575757FE575757FE575757FD565656FB575757FE585858FF5656
      56FA404040BC0E0E0E2D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E0E0E2E1D1D1D59000000020000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000017171743575757FD585858FF585858FF585858FF383838A30000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101042C2C
      2C84545454F5575757FE575757FE575757FE575757FE575757FE575757FE5757
      57FE434343C10909091F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303030B3F3F3FB95757
      57FE575757FC414141C1222222681414143F121212391A1A1A51333333985353
      53F4575757FE505050EA1414143D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E0E0E2E4C4C4CDE555555F71E1E1E5C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000909091F0F0F0F310000
      00010000000027272777575757FD585858FF585858FF585858FF474747D20101
      010600000000060606151212123C000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002363636A15757
      57FE575757FD3B3B3BB01A1A1A520909091F07070717121212392D2D2D875050
      50EB575757FE4E4E4EE40909091F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101073B3B3BAF575757FE4F4F
      4FE81D1D1D5A0000000000000000000000000000000000000000000000000B0B
      0B24404040BD575757FE505050EB0E0E0E2E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      10324D4D4DE2585858FF4D4D4DE00F0F0F2F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030B464646CD575757FE4646
      46CD3D3D3DB5575757FE585858FF585858FF585858FF585858FF585858FF4A4A
      4AD93B3B3BAF545454F7565656FA151515410000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002323236B575757FE5353
      53F42424246F0101010400000000000000000000000000000000000000001010
      1032474747D2575757FE424242C20303030A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000022222263575757FD515151ED1616
      1644000000000000000000000000000000000000000000000000000000000101
      0104060606143F3F3FBB575757FE414141BF0000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E2E4D4D
      4DE2575757FE4E4E4EE40F0F0F2F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002424246B575757FD585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF434343C50202020800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000060606144E4E4EE4575757FC2B2B
      2B80000000010000000000000000000000000000000000000000000000000000
      0000101010324F4F4FE8575757FE1E1E1E5C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020209494949D6575757FD2929297A0000
      0000000000000000000000000000000000000000000000000000101010323F3F
      3EB91313133C0B0B0B24525252F1565656FB1919194800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      10343030308F404040BE424242C0333333991414143E0B0B0B254C4C4CDE5757
      57FE4E4E4EE41010103300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000080808194E4E4EE3585858FF585858FF5858
      58FF585858FF585858FF575757FE575757FE565656FD575757FE585858FF5858
      58FF585858FF585858FF585858FF575757FC2222226300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E1E1E5C575757FE494949D80404
      040F000000000000000000000000000000000000000000000000000000000000
      0000000000002C2C2C85575757FD414141BF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001414143D565656FB515151EE020202090000
      0000000000000000000000000000000000000707071831313192555555F95454
      54F2222223690000000032323296575757FD3535359C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000005313131925656
      56FB585858FF585858FF585858FF585858FF575757FE484848D4565656FB4D4D
      4DE00F0F0F2F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000010101033525252F1585858FF585858FF5858
      58FF585858FF575757FD3434349A0A0A0A210404040F1F1F1F5F505050EB5757
      57FE585858FF585858FF585858FF575757FD2E2E2E8A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031313192585858FF323232970000
      00000000000000000000000000010E0E0E2D1313133A0303030A000000000000
      0000000000001313133A555555F74F4F4FE60505051000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000026262670575757FE3B3B3BAF000000000000
      00000000000000000000000000011C1C1C554D4D4DE0565656FA3F3F3FBA0F0F
      0F2F00000001000000001A1A1A50565656FC484848D400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000022E2E2E88575757FE5555
      55F8393939AA1E1E1E5B1D1D1D5832323297545454F4575757FE484848D50B0B
      0B25000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000151515404B4B4BDC585757FF5858
      58FF585858FF3E3E3EB7010101070000000000000000000000001F1F1F5F5656
      56FB585858FF585858FF555555F82A2A2A7E0202020800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B3B3BAD585858FF262626720000
      0000000000000000000002020209464646CE575757FD1414143D000000000000
      00000000000007070717545454F7535353EF0B0B0B2300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8C575757FE32323297000000000000
      0000000000000000000002020209464646CE535353EF1E1E1E5C000000050000
      000000000000000000001313133A555555F7515151EE00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F2F545454F4565656FB2323
      236C000000010000000000000000000000001A1A1A50535353F4575757FE1515
      1541000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002424226A585757FF5858
      58FF585858FF2525256D000000000000000000000000000000000404040F5656
      56FB585858FF585858FF444444C6000000030000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000393939A8585858FF282828780000
      0000000000000000000002020209464646CD575757FD1414143D000000000000
      0000000000000A0A0A20535353F4515151EE0A0A0A2000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E2E2E86575757FE3535359D000000000000
      0000000000000000000002020209464646CD454545CA01010107000000000000
      000000000000000000001414143F555555FA515151E900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002C2C2C82585858FF3D3D3DB50101
      0104000000000000000000000000000000000000000032323296575757FE3636
      369F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000022E2E2D86585757FF5858
      58FF585858FF2A2A2A7E000000000000000000000000000000000A0A0A215555
      55F9585858FF585858FF484A4AD5060606130000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002C2C2C84585858FF3A3A3AAD0000
      0001000000000000000002020209464646CD575757FD1414143D000000000000
      0000000000001A1A1A51555555F84C4C4CDF0101010700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001F1F1F5D575757FE434343C5000000000000
      0000000000000000000002020209464646CD454545CA01010107000000000000
      0000000000000000000021212165565656FC424242C000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000393939A8585858FF272727760000
      000000000000000000000000000000000000000000001C1C1C57565656F94242
      42C0000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000303030A30303091555555F9585858FF5858
      58FF585858FF4B4B4BDD0B0B0B24000000000000000001010107333333995757
      57FE585858FF585858FF575757FE454545CB0D0D0D2C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000016161640575757FD505050EA0C0C
      0C26000000000000000002020209464646CD575757FD1414143D000000000000
      000000000005393939AA575757FE373737A20000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D0D0D29545454F2555555FA0C0C0C270000
      0000000000000000000002020209464646CD454545CA01010107000000000000
      00000000000000000000404040BE575757FE2C2C2C8000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000383838A5585858FF272727770000
      000000000000000000000000000000000000000000001E1E1E5C565656FB4141
      41BF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001414143E565656FB585858FF585858FF5858
      58FF585858FF575757FE4B4B4BDE2C2C2C802424246E3E3E3EB7575757FD5858
      58FF585858FF585858FF585858FF575757FE3535359D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001010107404040BC575757FE3F3F
      3FBA050505100000000002020209464646CD575757FD1414143D000000000000
      000126262670565656FA545454F4101010330000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000013D3D3DB5585858FF3B3B3BAF0202
      0208000000000000000002020209464646CE454545CA01010107000000000000
      0000000000001D1D1D59565656FA535353F10C0C0C2700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000028282879575757FE434343C50202
      02080000000000000000000000000000000000000001393939A8585858FF3131
      3193000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000005404040BF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF535353F31010103300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000F0F0F2E525252F05656
      56FA262626720000000002020209464646CD575757FD1414143D000000000B0B
      0B254F4F4FE6575757FE2C2C2C82000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010101034545454F2565656FB2E2E
      2E8A020202080000000000000001121212391313133800000000000000000000
      0000151515434F4F4FE6575757FE2F2F2F8B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0C0C27525252F0565656FB2C2C
      2C830202020800000000000000000101010422222269545454F5565656FB1111
      1137000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001313133B545454F6585858FF5757
      57FE575757FE585858FF585858FF585858FF585858FF585858FF585858FF5757
      57FF575757FE585858FF575757FE323232950000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000171717483131
      31920303030A0000000002020209464646CD575757FD1414143D000000000000
      00001B1B1B532F2F2F8D00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023232366575757FE5656
      56FB3B3B3BB00C0C0C2600000000000000000000000000000000020202092828
      2879515151ED575757FE414141BB0303030C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000027272774575757FE5656
      56FB444444C62A2A2A7E2929297B3D3D3DB5565656FB575757FE323232940000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000231313193474747D02525
      256F1C1B1B554B4B4BDC575757FE585858FF585858FF585858FF565656FB2C2C
      2C801A1A1A513A3A3AAC484848D60808081B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020209464646CD575757FD1414143D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212121655353
      53F3585858FF555555FB444444C83434349D323232963B3B3BB1515151EF5757
      57FE575757FD3B3B3BB00303030C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000262626725252
      52F0585858FF585858FF585858FF585858FF545454F52E2E2E8A000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C1C1C55575757FD585858FF585858FF585858FF3D3D3DB60000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000052F2F2F8C3B3B3BAF0C0C0C26000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      10333C3C3CB3545454F2575757FE585858FF585858FF585858FF565656FA4A4A
      4AD5202020610202020800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000B0B
      0B2528282878383838A3393939A62C2C2C820E0E0E2E00000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001313133A565656FB585858FF585858FF585858FE333333980000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010C0C0C261F1F1F5D2A2A2A7F2C2C2C842525256D1313133C0202
      0208000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000303030C272727772D2D2D882D2D2D882D2D2D860F0F0F310000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000B0B0B252A2A2A79404040BC4B4B4BDE4D4D4DE4454545CD333333981616
      1644010101040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000005050512373737A400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030B2D2D
      2D87535353EF575757FE585858FF585858FF585858FF585858FF585858FF5656
      56FA404040BC0E0E0E2D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000050505123E3E3EB6525252F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303030B3F3F3FB95757
      57FE585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF505050EA1414143D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000303030A3F3F3FBA575757FE525252F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C26212121602121216021212160212121602121
      21602121216021212160212121602121216021212160212121601E1E1E5B0000
      0000161615422121216021212160212121602121216018181A4A000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101073B3B3BAF575757FE5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF505050EB0E0E0E2E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000021F1F
      1F5D2C2C2C832C2C2C832C2C2C832C2C2C832C2C2C832C2C2C832C2C2C832C2C
      2C832C2C2C84434343C7575757FE585858FF525252F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001D1D1D5A2C2C2C832C2C2C832C2C
      2C832C2C2C832C2C2C832C2C2C832C2C2C832C2C2C832C2C2C832C2C2C832C2C
      2C832C2C2C832C2C2C832C2C2C832929297D0404040F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002424236B575757FE585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF555555F90000
      00003F3F3FB9585858FF585858FF585858FF585858FF454545C9000000050000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000022222263575757FD585858FF5858
      58FF585858FF585858FF585858FF4D4E4EE4464646CC575757FE585858FF5858
      58FF585858FF585858FF585858FF414141BF0000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001A1A1A520B0B0B20000000000D0D0D2A5353
      53F3585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF525252F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB6585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20D0D0D2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002424246A575757FE585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF545454F70000
      00003F3F3FB8585858FF585858FF585858FF585858FF444444C8010101040000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020209494949D6585858FF585858FF5858
      58FF585858FF585858FF585858FF3232329411111137565656FA585858FF5858
      58FF585858FF585858FF585858FF565656FB1919194800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8E454545CD0707071A0F0F0F315555
      55F8585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF525252F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000222222693434349D3434349D3434
      349D3434349D3434349D3434349D3434349D3434349D3434349D3434349D3434
      349D3434349D3434349D3434349D313131930505051200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001818184B575757FE585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF575757FE484848D50000
      0000454545CD585858FF585858FF585858FF585858FE3A3A3AAC000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001414143D565656FB585858FF585858FF5858
      58FF585858FF585858FF585858FF555555FA535353F6575757FF585858FF5858
      58FF585858FF585858FF585858FF585858FF3535359C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8E575757FE474747D10E0E0E2D2626
      2670272727742727277427272774272727742727277427272774272727742727
      2774272727742A2A2A7D575757FE585858FF525252F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E2E2E89545454F5585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF575757FE494949D6121212351111
      1138525252F0585858FF585858FF575757FD444444C60909091D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000026262670575757FE585858FF585858FF5858
      58FF585858FF585858FF585858FF565657FC565655FA575757FF585858FF5858
      58FF585858FF585858FF585858FF585858FF484848D400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8E585858FF575757FE454545C91616
      16441313133B1313133B1313133B1313133B1313133B1313133B1313133B1111
      11370303030B0303030E565656FB585858FF525252F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B251313133B1313133B1313
      133B1313133B1313133B1313133B1313133B1313133B1313133B1313133B1313
      133B1313133B1313133B1313133B111111360000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000020F0F0F31313131934B4B4BDC5353
      53EF545454F7545454F4515151E9424242C42424246A050505120B0B0B254747
      47D2545454F24F4F4FE63C3C3CB31D1D1D580303030A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8C585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF393939AA1F1F1E5F565656FB585858FF5858
      58FF585858FF585858FF585858FF585858FF515151EE00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8E585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5757
      57FE3030308E0303030E565656FB585858FF525252F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F20C0C0C2800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000050A0A
      0A200E0E0E2F0D0D0D2B06060615000000000000000000000000040404111010
      10320C0C0C280404040F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E2E2E86575757FE585858FF585858FF5858
      58FF585858FF585858FF585858FF3232329411111136565656FA585858FF5858
      58FF585858FF585858FF585858FF585858FF515151E900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8E585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF3B3B3BAF0303030E565656FB585858FF525252F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031313191474747D1474747D14747
      47D1474747D1474747D1474747D1474747D1474747D1474747D1474747D14747
      47D1474747D1474747D1474747D1434343C50909091E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001313
      133A2B2B2B822525256D060606150000000000000000010101041919194D2C2C
      2C871F1F1F5D0303030A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001F1F1F5D575757FE585858FF585858FF5858
      58FF585858FF585858FF585858FF3232329411111136565656FA585858FF5858
      58FF585858FF585858FF585858FF585858FF424242C000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8E585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF3B3B3BAF0303030E565656FB585858FF525252F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010402020208020202080202
      0208020202080202020802020208020202080202020802020208020202080202
      0208020202080202020802020208010101070000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001E1E1E5C5353
      53F3585858FF575757FE454545C906060614000000012C2C2C85565656FA5858
      58FF575757FD3C3C3CB200000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D0D0D29545454F2585858FF585858FF5858
      58FF585858FF585858FF585858FF3232329411111136565656FA585858FF5858
      58FF585858FF585858FF585858FF575757FE2C2C2C8000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8E585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF3B3B3BAF0303030E565656FB585858FF525252F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004A4A4ADA5858
      58FF585858FF585858FF575757FD212121650909091F505050EA585858FF5858
      58FF585858FF575757FE1414143F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000013D3D3DB5585858FF585858FF5858
      58FF585858FF585858FF585858FF393939A61C1C1C57565656FB585858FF5858
      58FF585858FF585858FF585858FF535353F10C0C0C2700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8E585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF3B3B3BAF0303030E565656FB585858FF525252F100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003A3A3AAE565656FD565656FD5656
      56FD565656FD565656FD565656FD565656FD565656FD565656FD565656FD5656
      56FD565656FD565656FD565656FD515151EF0B0B0B2200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000525252F25858
      58FF585858FF585858FF575757FE2A2A2A7E0E0E0E2E545454F2585858FF5858
      58FF585858FF575757FE1C1C1C55000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010101034545454F2585858FF5858
      58FF585858FF585858FF585858FF565656FA545454F6575757FF585858FF5858
      58FF585858FF585858FF575757FE2F2F2F8B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8E585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF3B3B3BAF0303030D535352F3545454F5434343C300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003B3B3BAE545454F5545454F55454
      54F5545454F5545454F5545454F5545454F5545454F5545454F5545454F55454
      54F5545454F5545454F5545454F5505050EA0B0B0B2500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003535359E5757
      57FE585858FF585858FF535353F31111113602020208434343C5575757FE5858
      58FF585858FF525252EC06060614000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023232366575757FE5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF575757FE414141BB0303030C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8E585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF3B3B3BAF000000000D0D0D2C0D0D0D2C0404040F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808081D0D0D0D2C0D0D0D2C0D0D
      0D2C0D0D0D2C0D0D0D2C0D0D0D2C0D0D0D2C0D0D0D2C0D0D0D2C0D0D0D2C0D0D
      0D2C0D0D0D2C0D0D0D2C0D0D0D2C0D0D0D2A0000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050505123535
      359D505050ED494949D71D1D1D5A00000000000000000B0B0B253D3D3DB45252
      52F2444444C81414143E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212121655353
      53F3585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FD3B3B3BB00303030C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002F2F2F8E585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF3B3B3BAF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      10333C3C3CB3545454F2575757FE585858FF585858FF585858FF565656FA4A4A
      4AD5202020610202020800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E2E2E86575757FE585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF383838A70000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010C0C0C261F1F1F5D2A2A2A7F2C2C2C842525256D1313133C0202
      0208000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000808081D2B2B2B802D2D2D882D2D2D882D2D
      2D882D2D2D882D2D2D882D2D2D882D2D2D882D2D2D882D2D2D882D2D2D882C2C
      2C840D0D0D2A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000C00000000100010000000000000C00000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFF81FFFFFFFFFFFF00000000FFFFFFFFFF81FFFFF800001F00000000
      FF8001FFFF81FFFFF000000F00000000FF0000FFFF81FFFFF000000F00000000
      FF00007FFF81FFFFF000000F00000000FF00007FFF81FFFFF0F01F8F00000000
      FF1C787FFF81FFFFF0F00F8F00000000FF1C387FFF8007FFF0F00F8F00000000
      FF1C187FFF8001FFF0F00F8F00000000FF00087FFF8000FFF0F00F8F00000000
      FF00007FFF8000FFF0F00F8F00000000FF00007FFF80007FF0F00F8F00000000
      FF00087FFF80007FF0F00F8F00000000FF1C187FFF81E07FF0F00F8F00000000
      FF1C387FFF81E07FF0F00F8F00000000FF1E787FFF81C07FF0F00F8F00000000
      FF00007FFF80007FF0FC3F8F00000000FF00007FFF8000FFF000000F00000000
      FF0000FFFF8000FFF000000F00000000FFFFFFFFFF8001FFF800000F00000000
      FFFFFFFFFF8003FFFC00003F00000000FFFFFFFFFF800FFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF00000000
      FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FFFFFFFFFFF
      FFF007FFFF8001FFFFFC7FFFFF0000FFFFC003FFFF0000FFFFF81FFFFF00007F
      FF8001FFFF00007FFFF007FFFF00007FFF07E0FFFF00007FFFF003FFFF00007F
      FF0FC07FFF10387FFFD801FFFF18007FFE1F807FFF00187FFF8C61FFFF00007F
      FE1F047FFF00187FFF8E70FFFF00007FFE3E0C7FFF00187FFF0FF0FFFF00007F
      FE3C1C7FFF00007FFF0FF0FFFF0000FFFE383C7FFF00007FFF0FF0FFFF00007F
      FE307C7FFF00007FFF8FF0FFFF00007FFE00FC7FFF1FF87FFF8630FFFF00007F
      FE01F87FFF00007FFFC219FFFF08007FFF03F0FFFF00007FFFC00FFFFF00007F
      FF83C0FFFF00007FFFE00FFFFF00007FFFC001FFFF00007FFFF80FFFFF00007F
      FFE003FFFF0000FFFFFE1FFFFF00007FFFF00FFFFFC7E3FFFFFE3FFFFFFFFFFF
      FFFFFFFFFFC7E3FFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF007FFFFFFFFFFFFFFFFFFFFF007FFFFC003FFFFC181FFFFFF7FFFFFC003FF
      FF8001FFFFC181FFFFF007FFFFC001FFFF0000FFFFC181FFFFC001FFFF83E0FF
      FF00007FFFC181FFFF0000FFFF07F0FFFE00007FFFC181FFFF00807FFF0FF0FF
      FE06007FFFC001FFFE00007FFF1E387FFE02007FFFC001FFFC00003FFF1C387F
      FE00007FFE00007FFC00101FFF1C387FFE00007FFE00007FFC00003FFF1C387F
      FE00607FFF0000FFFE00003FFF0C30FFFE00207FFF8001FFFE00007FFF0430FF
      FE00007FFFC003FFFF0000FFFF8000FFFF0000FFFFE007FFFF8000FFFFC000FF
      FF8000FFFFF80FFFFFC003FFFFE000FFFFC001FFFFFC1FFFFFF81FFFFFF009FF
      FFE003FFFFFE3FFFFFFFFFFFFFF81FFFFFF00FFFFFFFFFFFFFFFFFFFFFF81FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FF3E7CFFFFFFFFFFFFFFFFFFFFFFFFFFFF1C387FFFFC1FFFFFFFFFFFFFFFFFFF
      FF1C387FFFF007FFFF3FCFFFFFF007FFFF1C387FFFE003FFFF0601FFFFC003FF
      FF1C387FFFC003FFFF00007FFF8001FFFE08103FFF8061FFFF00007FFF0000FF
      FC00103FFF8060FFFF00407FFF08007FFC00101FFF0070FFFF01C07FFE18007F
      FC00101FFF0070FFFF01C07FFE101C7FFC00103FFF00787FFF01C07FFE201C7F
      FC00101FFF00007FFF01C07FFE001C7FFC00101FFF00007FFF01C07FFE003C7F
      FC00101FFF1E007FFF01C07FFE00FC7FFC00101FFF1E007FFF01C07FFE00FC7F
      FC00101FFF1E007FFF01807FFE00387FFC00101FFF0E007FFF00007FFF0010FF
      FC00103FFF02007FFF00007FFF8000FFFF1C387FFF0000FFFF00007FFFC001FF
      FF1C387FFFC003FFFFE0787FFFE003FFFF1C387FFFF00FFFFFFFFFFFFFF00FFF
      FF1E3CFFFFFE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFC3FFFFFF007FFFFFFFFFFFFF81FFFFFE007FFFFC003FFFFFFF8FFFFF81FFF
      FFC003FFFF8001FFFFFFF0FFFF8808FFFF8001FFFF07E0FFFFFFE0FFFF0000FF
      FF83E0FFFF0FE07FFFFFC1FFFF00007FFF07F0FFFE1FC07FFFE003FFFE00007F
      FF0FF8FFFE1F047FFF8007FFFE00007FFF1C387FFE3C047FFF000FFFFF01C07F
      FF1C387FFE3C1C7FFF070FFFFF83C0FFFF1C387FFE3C3C7FFF0F8FFFFF03C0FF
      FF0C387FFE3C3C7FFF1F8FFFFE01807FFF0C30FFFE1C3C7FFF1F8FFFFE00007F
      FF0420FFFE0C387FFF0F0FFFFE00007FFF8420FFFF0470FFFF060FFFFF0000FF
      FFC431FFFF83C0FFFF801FFFFF0000FFFFFC3FFFFFC001FFFFC01FFFFFF81FFF
      FFFC3FFFFFE003FFFFE03FFFFFF81FFFFFFFFFFFFFF00FFFFFFFFFFFFFF81FFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFF007FFFFFFFE7FFFFFFFFFFFFFFFFFFFC003FFFFFFFC7FFFFFFFFFFFFFFFFF
      FF8001FFFFFFF87FFFFFFFFFFC00101FFF0000FFFFC0007FFF00007FFC00101F
      FF00007FFE40007FFF00007FFC00101FFE00007FFE00007FFF00007FFC00103F
      FE00007FFE00007FFFFFFFFFFE00003FFE00007FFE00007FFF00007FFE00007F
      FE00007FFE00007FFF00007FFFC1C3FFFE00007FFE00007FFF00007FFFE183FF
      FE00007FFE00007FFF0000FFFFC001FFFE00007FFE00007FFFFFFFFFFFC001FF
      FE00007FFE00007FFF00007FFFC001FFFF0000FFFE00007FFF00007FFFC001FF
      FF8000FFFE00047FFF00007FFFC183FFFFC001FFFE0007FFFFFFFFFFFFFFFFFF
      FFE003FFFE0007FFFFFFFFFFFFFFFFFFFFF00FFFFE0007FFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ImageList16: TImageList
    ColorDepth = cd32Bit
    Left = 1092
    Top = 328
    Bitmap = {
      494C010123001C01F40510001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000009000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001818184911111136000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000151515414545
      45C9474747D1474747D1474747D1474747D1474747D1474747D1474747D14747
      47D1464646CE2626267200000000000000000000000000000000000000000000
      00000000000000000000000000001C1C1C55565656FA2D2D2D87000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002D2D2D83434343C300000000000000001E1E
      1E5C3F3F3FBB0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003B3B3BAF4D4D
      4DE2333333983333339833333398393939A63A3A3AAD33333398333333983333
      3398444444C7525252F100000000000000000000000000000000000000000000
      0000000000000000000015151542565656FA585858FF2D2D2D87000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010101063535359C494949D2040404111E1E1E5C5555
      55F91F1F1F5D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D3D3DB43D3D
      3DB5000000000000000020202061454545CB505050EA23232369000000000000
      000026262672545454F600000000000000000000000000000000000000000000
      0000000000000000000026262673585858FF585858FF2D2D2D87000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000151515424E4E4EE5515151EC4F4F4FE6555555F7565656FA1F1F
      1F5D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D3D3DB43D3D
      3DB500000000000000003636369F4B4B4BDC515151ED555555FA000000000000
      000026262672545454F600000000000000000000000000000000000000000000
      0000000000000000000026262673585858FF585858FF2D2D2D87000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0C0C27535353F1212121660E0E0E2D27272773565656FB202020611010
      1034000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D3D3DB43D3D
      3DB500000000000000002A2A2A7D474747D14F4F4FE8555555FA000000000000
      000026262672545454F600000000000000000000000000000000000000000000
      0000000000000000000026262673585858FF585858FF2D2D2D87000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003030308E373737A01818184A575757FD575757FC1F1F1F5D1A1A1A4F4747
      47CF000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D3D3DB43D3D
      3DB500000000000000003F3F3FB9505050EA3B3B3BAE2F2F2F8D000000000000
      000026262672545454F600000000000000000000000000000000000000000000
      000000000000010101043D3D3DB4585858FF585858FF434343C50303030D0000
      0000000000000000000000000000000000000000000000000000000000000000
      00001F1F1F5C161616403434349B575757FC21212160262626740909091E2B2B
      2B7F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D3D3DB43D3D
      3DB500000000000000003D3D3DB4585858FF585858FF565656FB000000000000
      000026262672545454F600000000000000000000000000000000000000000000
      0000010101043B3B3BAA585858FF585858FF585858FF585858FF404040BD0303
      030D000000000000000000000000000000000000000000000000000000000000
      0000000000001E1E1E5C555555F920202061383838A5484848D4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003D3D3DB43D3D
      3DB500000000000000000808081D3434349A424242C016161645000000000000
      000026262672545454F600000000000000000000000000000000000000000101
      01043B3B3BAA585858FF585858FF585858FF585858FF585858FF585858FF4040
      40BD0303030D0000000000000000000000000000000000000000000000000000
      00001E1E1E5C555555F920202061393939A6585858FF484848D4000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000383838A55454
      54F54B4B4BD84B4B4BD84B4B4BD84B4B4BD84B4B4BD84B4B4BD84B4B4BD84B4B
      4BD8505050EA4F4F4FE700000000000000000000000000000000000000003939
      39AA585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF404040BE0101010700000000000000000000000000000000000000001E1E
      1E5C555555F91F1F1F5D2929297C585858FF585858FF474747D2000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000909091E2E2E
      2E8A313131913131319131313191313131913131319131313191313131913131
      31913030308F1414143E00000000000000000000000000000000000000033535
      359C393939AA393939AA393939AA393939AA393939AA393939AA393939AA3939
      39AA373737A20404041100000000000000000000000000000000000000001919
      194C1F1F1F5D0000000016161645565656FB585858FE2D2D2D83000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000B0B0B221010103400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002525
      256F434343C4434343C4434343C4434343C4434343C4434343C4434343C44343
      43C43535359C0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000020505051000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002727
      2774464646CF464646CF464646CF464646CF464646CF464646CF464646CF4646
      46CF383838A50000000000000000000000000000000000000000000000000000
      00000000000000000000212121644C4C4CDD515151EE2E2E2E890303030C0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000003383838A5484848D306060615000000000000
      0000000000000000000000000000000000000000000000000000000000000909
      091F2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B
      2B7F1414143F0000000000000000000000000000000000000000000000000000
      00000000000000000000000000001818184A2626267000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000001373737A4585858FF585858FF3435359D4F4F4FE8494949D20606
      0613000000000000000000000000000000000000000000000000000000000909
      091F2B2B2B7F2B2B2B7F3E3E3EB5585858FF585858FF4A4A4AD52B2B2B7F2B2B
      2B7F1414143F0000000000000000000000000000000000000000000000001313
      133C585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF2A2A2A7C0000000000000000000000000000000000000000000000000000
      000000000000000000000D0D0D2A535353F3575757FD1B1B1B52000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002B2B2B7F585858FF585858FF585858FF1414153F0808081B4B4B4BD84141
      41BF000000000000000000000000000000000000000000000000000000001414
      143D585858FF585858FF585858FF585858FF505051E9575757FD585858FF5858
      58FF2A2A2A7D0000000000000000000000000000000000000000000000000303
      030C494949D6585858FF585858FF585858FF585858FF585858FF585858FF5353
      53F1101010310000000000000000000000000000000000000000000000000000
      00000000000001010104474747D0585858FF585858FF535353EF0A0A0A210000
      0000000000000000000000000000000000000000000000000000000000000808
      081C555555F8585858FF585858FF585858FF1414153F000000000E0E0E2D5555
      55F81D1D1D570000000000000000000000000000000000000000000000001414
      143D585858FF585858FF585858FF585858FF1414153F0E0E0E2E494949D85858
      58FF2A2A2A7D0000000000000000000000000000000000000000000000000000
      00000303030A2424246A3E3E3EB84E4E4EE3505050E9444444C62B2B2B810808
      081B000000000000000000000000000000000000000000000000000000000000
      00000000000027272774585858FF585858FF585858FF585858FF3C3C3CB30000
      0000000000000000000000000000000000000000000000000000000000002828
      2877585858FF585858FF585858FF585858FF1414153F00000000000000003939
      39A63F3F3FB90000000000000000000000000000000000000000000000033939
      39A8585858FF585858FF585858FF585858FF1414153F000000000E0E0E2E5656
      56FB4A4A4AD50606061500000000000000000000000000000000000000000000
      00000000000000000000000000000A0A0A230F0F0F3100000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000006060614545454F2585858FF585858FF585858FF585858FF575757FD1717
      1746000000000000000000000000000000000000000000000000000000003C3C
      3CB1585858FF585858FF585858FF585858FF2525256F1515153F1515153F2F2F
      2F8B535353F30000000000000000000000000000000000000000373737A45858
      58FF585858FF585858FF585858FF585858FF1414153F00000000000000004A4A
      4AD9585858FF484848D305050511000000000000000000000000000000000000
      000000000000000000002929297C575757FE585858FF3F3F3FB9000000030000
      0000000000000000000000000000000000000000000000000000000000000000
      00002C2C2C80585858FF585858FF585858FF585858FF585858FF585858FF3E3F
      3FB9000000000000000000000000000000000000000000000000000000004141
      41BF2F2F2F8B000000000000000000000000575757FF585858FF585858FF5858
      58FF575757FE0000000000000000000000000000000000000000232323695757
      57FE585858FF585858FF585858FF585858FF1414153F00000000000000004E4E
      4EE4585858FF393939A600000002000000000000000000000000000000000000
      0000000000000303030C555555F8585858FF585858FF575757FE171717480000
      0000000000000000000000000000000000000000000000000000000000000000
      0000474747D0585858FF555555F72E2E2E8B2424246E565656FA585858FF5454
      54F60404040F0000000000000000000000000000000000000000000000004242
      42C02F2F2F8B000000000000000000000000575757FF585858FF585858FF5858
      58FF575758FF0000000100000000000000000000000000000000000000002828
      2878585858FF585858FF585858FF585858FF1414153F000000001A1A1A525757
      57FC3D3D3DB50000000300000000000000000000000000000000000000000000
      0000000000000303030B555555F8585858FF585858FF575757FE171717470000
      0000000000000000000000000000000000000000000000000000000000000000
      0000525252F0585858FF555555F90101010700000000454545CA585858FF5353
      53F30C0C0C280000000000000000000000000000000000000000000000004242
      42C033333397000000000000000000000000575757FF585858FF585858FF5858
      58FF575758FF0000000100000000000000000000000000000000000000001414
      143D585858FF585858FF585858FF585858FF1D1D1D5A2525256D535353F35858
      58FF2A2A2A7D0000000000000000000000000000000000000000000000000000
      0000000000000000000027272776575757FE585858FF3D3D3DB4000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000454545CA585858FF575757FE3A3A3AAC32323293575757FE585858FF5151
      51EE0303030C0000000000000000000000000000000000000000000000003535
      359E575757FE424242C41B1B1B5300000003575757FF585858FF585858FF5858
      58FF4B4C4CDE0000000000000000000000000000000000000000000000001414
      143E585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF2A2A2A7E0000000000000000000000000000000000000000000000000000
      00000000000000000000000000000A0A0A200F0F0F2F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001E1E1E5C575757FE585858FF585858FF585858FF585858FF565656FB2F2F
      2F8E000000000000000000000000000000000000000000000000000000000000
      000012121235393939A8565656FB4B4B4BDD575757FF585858FE444444C61B1B
      1B53000000020000000000000000000000000000000000000000000000000404
      040F1515153F1515153F28282879575757FE585858FF393939A81515153F1515
      153F0909091F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002C2C2C83565656FB585858FF585858FF545454F7373737A60303
      030B000000000000000000000000000000000000000000000000000000000000
      000000000000000000000909091E3030308E393939A811111137000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000023232369383838A300000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D0D0D2A2424246F262626741313133E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000A0A0A212D2D2D852D2D2D8516161644000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021212160414141BF4E4E4EE4434343C7272727750303
      030D000000000000000000000000000000000000000000000000000000001E1E
      1E5B2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B
      2B7F262626700303030B00000000000000000000000000000000000000000000
      000000000000000000002323236B585858FF585858FF3B3B3BAD000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B252B2B2B7F3434349926262670000000000606
      06132F2F2F8D3636369F3434349A000000000000000000000000000000000000
      0000000000002E2E2E89535353F3333333962424246C2E2E2E884F4F4FE64444
      44C7060606150000000000000000000000000000000000000000111111365757
      57FE585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF2828287700000000000000000000000000000000000000000F0F
      0F30494949D72F2F2F8B4C4C4CDF585858FF585858FF545454F22F2F2F8C4545
      45C9232323680000000000000000000000000000000000000000000000000000
      00000000000028282879555555F9585858FF585858FF505050EA050505114747
      47D0585858FF585858FF575757FE000000000000000000000000000000000000
      0000070707180808081A0C0C0C26000000000000000000000000060606134646
      46CB3C3C3CB40000000000000000000000000000000000000000171717435858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF2D2D2D8400000000000000000000000000000000000000004242
      42C0585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF515151EE0606061400000000000000000000000000000000000000000000
      000028282877575757FE585858FF585858FF585858FF575757FE515151EE5858
      58FF585858FF575758FF28282877000000000000000000000000000000001F1F
      1F5D505050EB1616164500000000000000000404041131313193323232970E0E
      0E2C545454F51010103300000000000000000000000000000000171717435858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF2D2D2D84000000000000000000000000000000000404040F4D4D
      4DE2585858FF585858FF515151E91818184B11111136434343C5585858FF5858
      58FF555555F71414143D00000000000000000000000000000000000000001313
      1338565656FA585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF2C2C2C84000000000000000000000000000000001E1E1E5A5757
      57FE585858FF525252EC16161646000000014E4E4EE32E2E2E880303030A0000
      0000505050E81D1D1D5A00000000000000000000000000000000171717435858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF2D2D2D8400000000000000000000000000000000000000000606
      0616565656FB585858FF28282877000000000000000011111137575757FD5858
      58FF1B1B1C540000000000000000000000000000000000000000000000034747
      47D1585858FF585858FF444444C8575757FD585858FF545454F64A4A4AD95858
      58FF585858FF383838A300000000000000000000000000000000000000000E0E
      0E2C535353EF0E0E0E2E0000000000000003555555F701010107000000000000
      0000515151ED1C1C1C5700000000000000000000000000000000171717435858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF2D2D2D8400000000000000000000000000000000000000001414
      143F575757FD585858FF2F2F2F8C00000000000000001818184B575757FE5858
      58FF2A2A2A7E0000000000000000000000000000000000000000232323665858
      58FF585858FF464646CD02020208575756FD585858FF484848D40A0A0A215454
      54F2585858FF575757FE1F1F1F5E000000000000000000000000000000000000
      0003525252EC2323236B0000000000000003545454F701010106000000001313
      133C565656FB0A0A0A2300000000000000000000000000000000171717435858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF2D2D2D8400000000000000000000000000000000050505105555
      55F8585858FF585858FF565656FA2E2E2E8A272727754F4F4FE7585858FF5858
      58FF585858FE1919194C000000000000000000000000010101044C4C4CDE5858
      58FF575757FE1818184901010104575656FD585858FF4B4B4BDC000000002A2A
      2A7D585858FF585858FF535353F1000000000000000000000000000000000000
      0000262626724F4F4FE715151542000000000303030E000000000C0C0C264B4B
      4BDB343434990000000000000000000000000000000000000000171717435858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FE1D1D1D5800000000000000000000000000000000000000003535
      359C585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF4B4B4BD80000000500000000000000000000000017171743585858FF5858
      58FF444444C7000000002929297B575757FC585858FF4A4A4AD9000000000606
      0613525252F0585858FF585858FF000000000000000000000000000000000000
      00000000000032323292545454F4404040BF2F2F2F8D3D3D3DB4545454F63A3A
      3AAC0101010600000000000000000000000000000000000000000B0B0B255555
      55F9585858FF585858FF585858FF464646CC0F0F0F310D0D0D2B0D0D0D2B0D0D
      0D2B0909091F0000000000000000000000000000000000000000000000000606
      0616333333971818184B3F3F3FBA585858FF585858FF4D4D4DE11A1A1A4F2E2E
      2E891414143E0000000000000000000000000000000000000000000000010000
      000300000001000000000B0B0B201B1B1B531C1C1C550D0D0D29000000000000
      0000000000000000000000000001000000000000000000000000000000000000
      000000000000000000001414143D32323295414141BF3535359D1919194C0000
      0000000000000000000000000000000000000000000000000000000000000A0A
      0A211515153F1515153F1515153F0404040F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000021212160585858FF585858FF383838A3000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000303030E17171745171717450909091F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C281F1F1F5E2222226310101033000000030000
      0000000000000000000000000000000000000000000000000000060606140505
      0510000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002E2E
      2E86515151ED515151ED515151ED515151ED515151ED515151ED515151ED5151
      51ED3B3B3BB00000000000000000000000000000000000000000000000000000
      0000060606143D3D3DB3565656FB585858FF585858FF565656FB424242C40E0E
      0E2D0000000000000000000000000000000000000000000000001414143D3C3C
      3CB40404040F0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000101010333737
      37A2111111380000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004040
      40BC4D4D4DE128282877505050EA585858FF585858FF585858FF585858FF5858
      58FF4F4F4FE60000000000000000000000000000000000000000000000000505
      0510484848D3434343C4444444C6444444C7373737A14A4A4ADB3C3C3CB14E4E
      4EE30E0E0E2D00000000000000000000000000000000000000001414143D5858
      58FF3E3E3EB91F1F1F5D1F1F1F5D1F1F1F5D1F1F1F5D1F1F1F5D1F1F1F5D1F1F
      1F5D1212123B00000000000000000000000000000000000000001414143D5858
      58FF555555F7444444C61D1D1D59020202090000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004040
      40BC373737A0000000003B3B3BAD585858FF585858FF585858FF585858FF5858
      58FF4F4F4FE60000000000000000000000000000000000000000000000003535
      359D4D4D4DE01818184B545454F52A2A2A8121212167545454F51C1C1C594646
      46CF414141C100000003000000000000000000000000000000001414143D5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF565656FA17171747000000000000000000000000000000001414143D5858
      58FF585858FF585858FF575757FE4B4B4BDD2929297B0909091E000000000000
      0000000000000000000000000000000000000000000000000000000000004141
      41BB535353F3424242C5575757FD585858FF585858FF585858FF585858FF5858
      58FF4D4D4DE400000000000000000000000000000000000000000303030D5656
      56F9585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF555555F811111136000000000000000000000000000000001414143D5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF22222269000000000000000000000000000000001313133C5858
      58FF585858FF585858FF585858FF585858FF585858FF525252F1373737A01313
      1338000000000000000000000000000000000000000000000000000000001818
      184A2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B
      2B7F1D1D1D560000000000000000000000000000000000000000111111365252
      52EE090909211E1E1E5B525252F00000000000000000424242C02D2D2D830000
      0000505050EB1E1E1E5C000000000000000000000000000000001414143D5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF2222226900000000000000000000000000000000000000000202
      02081313133A1919194D2B2B2B7F32323295414141BF4F4F4FE6585858FF5454
      54F6444444C61C1C1C5900000000000000000000000000000000000000002121
      215F3F3F3FBB3F3F3FBB3F3F3FBB3F3F3FBB3F3F3FBB3F3F3FBB3F3F3FBB3F3F
      3FBB2B2B2B820000000000000000000000000000000000000000111111345151
      51EB1919194F2929297B525252F11010103310101032464646CD333333991010
      1032525252F01D1D1D58000000000000000000000000000000001414143D5858
      58FF585858FF454545CA474747CF4B4B4BDC424242C24D4D4DE23F3F3FB95858
      58FF585858FF2222226900000000000000000000000000000000010101061313
      133E212121642A2A2A7F3A3A3AAC434343C3525252F1535353F3585858FF5454
      54F5343434990D0D0D2A00000000000000000000000000000000000000004040
      40BC545454F5383838A3555555F8585858FF585858FF585858FF585858FF5858
      58FF4F4F4FE60000000000000000000000000000000000000000020202085454
      54F5585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF565656FA0D0D0D2A000000000000000000000000000000001414143D5858
      58FF585858FF494949D84C4C4CDF4F4F4FE6494949D7515151E9474747D15858
      58FF585858FF22222269000000000000000000000000000000001414143D5858
      58FF585858FF585858FF585858FF585858FF585858FF4D4D4DE0262626720404
      0411000000000000000000000000000000000000000000000000000000004040
      40BC3333339900000000393939A8585858FF585858FF585858FF585858FF5858
      58FF4F4F4FE60000000000000000000000000000000000000000000000003030
      308C494949D60E0E0E2E535353EF2424246E1818184B555555F81313133A4646
      46CC3D3D3DB300000000000000000000000000000000000000001414143D5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF22222269000000000000000000000000000000001414143D5858
      58FF585858FF585858FF585858FF404040BD1A1A1A5000000001000000000000
      0000000000000000000000000000000000000000000000000000000000004040
      40BC4E4E4EE433333399535353F3585858FF585858FF585858FF585858FF5858
      58FF4F4F4FE60000000000000000000000000000000000000000000000000303
      030A444444C6494949D6474747D1464646CE3E3E3EB74D4D4DE2464646CD4A4A
      4AD50606061500000000000000000000000000000000000000001414143D5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF22222269000000000000000000000000000000001414143D5858
      58FF545454F5343434990D0D0D2A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002727
      2773414141BF414141BF414141BF414141BF414141BF414141BF414141BF4141
      41BF2E2E2E870000000000000000000000000000000000000000000000000000
      00000303030A3030308E545454F5575757FD575757FE565656FB3636369F0505
      05100000000000000000000000000000000000000000000000000909091F5555
      55F8585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FE1313133C000000000000000000000000000000000D0D0D2A2626
      2673040404110000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000021313133A1414143E02020208000000000000
      0000000000000000000000000000000000000000000000000000000000000A0A
      0A211515153F1515153F1515153F1515153F1515153F1515153F1515153F1515
      153F0D0D0D290000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0A082E25221B94373226D63F392CF63C392CF5342F25D525211A920A09
      072B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E0E0E2B505050EA515151ED515151ED515151ED515151ED444444CB0909
      091E000000000000000000000000000000000000000000000000020202082623
      1D98413B2FFE413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF3E3B
      2FFD24231C930101000700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000D0D0D29202020630000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002C2C2C81585858FF585858FF585858FF585858FF585858FF525252EE1A1A
      1A53000000000000000000000000000000000000000002020209302D25C22E2B
      22BA090807270101000714120E4F3C352AEB413B2FFF413B2FFF413B2FFF413B
      2FFF413B2FFF2F2B21BB01010106000000000000000000000000161616442424
      246A2424246A2424246A2424246A2424246A2424246A2424246A2424246A2424
      246A2424246A1E1E1E5A01010104000000000000000000000000000000000000
      000000000000000000003B3B3BAA575757FC464646CC15151542000000000000
      00000000000000000000000000000000000000000000000000000C0C0C274646
      46CF575757FD585858FF585858FF585858FF585858FF585858FF585858FF5353
      53EF383838A90808081D00000000000000000000000027231D9B3C352AEA0303
      010B26231C962D2A21B11C19157014130F50413B2FFF413B2FFF413B2FFF413B
      2FFF413B2FFF413B2FFF24231C93000000000000000011111137575757FD5656
      56FC555555FB555555FB555555FB555555FB555555FB555555FB555555FB5555
      55FB555555FB575757FD28282877000000000000000000000000000000000000
      0000000000000000000022222265585858FF585858FF555555F91717174A0000
      00000000000000000000000000000000000000000000000000014A4A4AD75858
      58FF585858FF585858FF3535359C232323691818184A4B4B4BD8585858FF5858
      58FF575757FE333333980000000000000000040403122E281FB00D0B09340000
      000000000000000000002B2820AE010100073D362CEF413B2FFF413B2FFF413B
      2FFF413B2FFF413B2FFF3E3B2FFD0A09072B000000001A1A1A50565656FB0808
      081D000000000000000000000000000000000000000000000000000000000000
      000000000000484848D531313193000000000000000000000000000000000000
      000000000000000000001B1B1B52585858FF585858FF585858FF1E1E1E5D0000
      0000000000000000000000000000000000000000000010101031585858FF5858
      58FF585858FF585858FF535353F32929297C3535359C585858FF585858FF5858
      58FF585858FF4A4A4AD904040411000000000000000000000000000000000000
      00000000000013120D4D2A2820A80000000009080626373228D8413B2FFF413B
      2FFF413B2FFF413B2FFF413B2FFF25211A92000000001A1A1A50565656FB0808
      081D0000000000000000000000001313133C0000000300000000000000000000
      000000000000484848D5313131930000000000000000000000000808081B0707
      071A0000000015151541545454F5585858FF585858FF585858FF2424246A0000
      000000000000000000000000000000000000000000000909091E575757FE5858
      58FF4F4F4FE62E2E2E884C4C4CDF585858FF575757FE434343C7323232905656
      56F9585858FF494949D801010107000000000000000000000000020202090F0E
      0A3D000000000E0C0A390202020900000000000000000303020F27241C9C3C34
      28E6413B2FFF413B2FFF413B2FFF342F25D500000000060606161818184A0101
      010600000000000000000000000031313191383838A700000003000000000000
      000000000000484848D5313131930000000000000000000000004D4D4DE15757
      57FD454545CA545454F5585858FF585858FF585858FF585858FF404040BC0606
      0615000000000000000000000000000000000000000000000000404040BA5757
      57FE1E1E1E5E000000001A1A1A4D585858FF4D4D4DE20D0D0D2A000000003333
      3395585858FF2C2C2C83000000000000000005050419201D17813C352AEA413B
      2FFF342F26CC27231D9B0301010A000000000000000000000000000000000101
      000728261CA0413B2FFF413B2FFF3F392CF60000000015151541484848D34848
      48D3484848D3484848D3484848D3515151ED585858FF383838A7000000000000
      000000000000484848D5313131930000000000000000000000002D2D2D855858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF4444
      44CA0707071A0000000000000000000000000000000000000000393939A45757
      57FE30303091060606152E2E2E89585858FF505050EB1F1F1F60060606164444
      44C7585858FF2323236700000000000000003F392CF6413B2FFF413B2FFF413B
      2FFF413B2FFF413B2FFF28261CA0000000000301010A302B24BD3F372DF71D1A
      15740101000739362BE9413B2FFF3F392CF6000000000E0E0E2D323232933232
      3293323232933232329332323293474747D2575757FE2424246B000000000000
      000000000000484848D5313131930000000000000000000000000303030B4E4E
      4EE5585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF3E3E3EB70303030A00000000000000000000000000000000383838A35858
      58FF575757FE555555F7585858FF585858FF585858FF555555F7565656FD5858
      58FF585858FF222222680000000000000000383329DC413B2FFF413B2FFF413B
      2FFF413B2FFF413B2FFF413B2FFF110E0B4114130F50413B2FFF413B2FFF3F37
      2DF7000000002E2B20B5413B2FFF373226D6000000000D0D0D2A2E2E2E890303
      030D000000000000000000000000313131912424246B00000000000000000000
      000000000000484848D531313193000000000000000000000000000000001B1B
      1B51494949D74E4E4EE5535353F4585858FF585858FF585858FF585858FF5858
      58FF565656FA25252572000000000000000000000000000000002C2C2C815858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF545454F51919194E000000000000000027231D9B413B2FFF413B2FFF413B
      2FFF413B2FFF413B2FFF413B2FFF1E1A1673090705223F392CF6413B2FFF302B
      24BD00000000363128D2413B2FFF25221B94000000001A1A1A50565656FB0808
      081D000000000000000000000000070707170000000000000000000000000000
      000000000000484848D531313193000000000000000000000000000000000000
      00000000000000000000010101043E3E3EB6585858FF585858FF585858FF4949
      49D7545454F2484848D30303030C0000000000000000000000000C0C0C275757
      57FC585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF494949D70606061300000000000000000D0B0934413B2FFF413B2FFF413B
      2FFF413B2FFF413B2FFF413B2FFF3A352AE3060403170907052214130F500301
      010A15130F56413B2FFF413B2FFE0B0A072D000000001A1A1A50565656FB1A1A
      1A521313133C1313133C1313133C1313133C1313133C1313133C1313133C1313
      133C1313133C4C4B4BDE31313192000000000000000000000000000000000000
      00000000000000000000000000000303030A424242BE585858FF575757FC2121
      21643D3D3DB34F4F4FE515151540000000000000000000000000000000002C2C
      2C81585858FF585858FF585858FF585858FF585858FF585858FF585858FF5454
      54F41B1B1B530000000000000000000000000000000028241D9F413B2FFF413B
      2FFF413B2FFF413B2FFF413B2FFF413B2FFF3A352AE31E1C1676161411592523
      1B9740382DFB413B2FFF25231B9700000000000000000A0A0A21525252F15858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF575757FE1D1D1D57000000000000000000000000000000000000
      0000000000000000000000000000000000000101010631313191575757FE5858
      58FF585858FF565656FA1818184C000000000000000000000000000000000000
      00002525256E525252F0585858FF585858FF585858FF585858FF4F4F4FE61B1B
      1B5400000000000000000000000000000000000000000301010A312D24C3413B
      2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B
      2FFF413B2FFF312B22C002020208000000000000000000000000050505100D0D
      0D2A0D0D0D2A0D0D0D2A0D0D0D2A0D0D0D2A0D0D0D2A0D0D0D2A0D0D0D2A0D0D
      0D2A0D0D0D2A0808081B00000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E2D2F2F
      2F8C414141C14B4B4BD817171748000000000000000000000000000000000000
      0000000000000303030D1C1C1C552D2D2D832B2B2B811B1B1B520303030B0000
      00000000000000000000000000000000000000000000000000000301010A2924
      1E9D413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B
      2FFE26231D980202020800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000C0B083226231D98383127DA3D3A2EF93D3A2EF9353128D926231C960B0B
      082F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B0B22575757FD585858FF545454F70C0C0C26000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001616164032323294414141BF424242C0373737A01C1C1C560101
      0104000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031313192585858FF565656FB2929297C00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      05103E3E3EB6585858FF565656FB565656FC585858FF585858FF585858FF4848
      48D30C0C0C260000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001D1D1D582525
      256F32323295555555F7585858FF4E4E4EE50303030C00000000000000000000
      0000101010323434349A171717480000000000000000000000000303030E4949
      49D2555555F7303030900A0A0A23414141BF585858FF585858FF585858FF5858
      58FF525252EC0C0C0C260000000000000000000000003535359C474747D14747
      47D1474747D1474747D1474747D1474747D1474747D1464646CD0F0F0F2F3737
      37A0474747D1474747D1474747D1000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002B2B2B7F585858FF5858
      58FF585858FF585858FF585858FF404040BE0C0C0C290C0C0C26171717493333
      3398575757FC585858FF424242C40000000000000000000000003636369F5555
      55F821212165000000003F3F3FB8585858FF585858FF585858FF585858FF5151
      51EC545454F4474747D1010101040000000000000000414141BF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF555555F61212123B4444
      44C7585858FF585858FF585858FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000414141BF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5757
      57FE3F3F3FBC4B4B4BDB474747D200000000000000000909091F575757FD3939
      39A60000000000000003575757FD585858FF585858FF565656F9303030900E0E
      0E2E26262670575757FD1B1B1B520000000000000000414141BD585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF4E4E4EE5070707184F4F
      4FE6585858FF585858FF525252F0000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000032323290585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF4545
      45CD0404040F4A4A4AD9404040BE000000000000000023232367565656F91515
      154300000002393939A6585858FF585858FF585858FF555555F81313133B0000
      00000404040E565656FB3333339800000000000000000E0E0E2C3D3D3DB75656
      56FB585858FF585858FF585858FF555555F93E3E3EB80F0F0F30262626725858
      58FF555555F9444444CA1818184B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000031E1E1E5B4747
      47CF585858FF585858FF585858FF585858FF585858FF585858FF535353F31111
      11380404040E575757FD2F2F2F8C00000000000000002C2B2B81555555F90808
      081C393939A6565656FC565656FF565656FF565656FF505050ED0B0B0B240000
      0000000000004E4E4EE53D3D3DB6000000000000000000000000000000000707
      071817171749191919501717174A0808081C00000000000000001C1C1C571919
      194D0C0C0C270000000000000000000000000000000000000000000000025656
      56FD575757FE575757FE575757FE575757FE575757FE575757FE575757FE5757
      57FE575757FE1515154000000000000000000000000000000000000000000000
      00001D1D1D574D4D4DE2585858FF585858FF585858FF585858FF393939AB0000
      00001C1C1C56545454F51818184D00000000000000002A2A2A7D565656FA4141
      41BB585858FF393939AB01010107010101070101010701010104000000000000
      000000000000525252EC3B3B3BAE000000000000000000000000000000000000
      00001E1E1E5B3535359C1F1F1F5D000000000000000018181847343434992727
      2774010101040000000000000000000000000000000000000000000000014040
      40BD404040BE404040BE404040BE404040BE404040BE404040BE404040BE4040
      40BE424242BE0F0F0F3000000000000000000000000000000000000000000000
      000000000000050505103C3C3CB0585858FF585858FF555555F81B1B1B550000
      0000424242C04C4C4CDF0202020800000000000000001C1C1C54585858FF5858
      58FF585858FF585858FF575757FE282828770000000000000000000000000000
      00000C0C0C27575757FE2C2C2C84000000000000000000000000000000001C1C
      1C54585858FF585858FF575757FE1C1C1C560F0F0F30575757FD585858FF5858
      58FF2D2D2D870000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000033E3E3EB7585858FF525252F00A0A0A201919
      1948575757FC2828287A0000000000000000000000000303030C525251EE5858
      58FF585858FF585858FF585858FF3535359D0101010400000000000000000000
      00003A3A3AA7535353F311111138000000000000000000000000000000003030
      2F8C585858FF585858FF585858FF3030308F23232366585858FF585858FF5858
      58FF424242C40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000808081A545454F54F4F4FE8060606134D4D
      4DE14B4B4BDC04040411000000000000000000000000000000002525256D5757
      57FE585858FF585858FF585858FF585858FF585858FF424242C2010101072A2A
      2A79575757FC3434349D00000000000000000000000000000000000000001515
      1543565656FB585858FF545454F5171717480909091F535353F3585858FF5555
      55F7262626740000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000383838A3515151ED444444C75454
      54F71A1A1A510000000000000000000000000000000000000000000000003232
      3296575757FE585858FF585858FF585858FF585858FF565656FB4A4A4ADA5656
      56FB3E3E3EBB0303030D00000000000000000000000000000000000000000000
      0000151515402E2E2E8A1616164500000000000000000D0D0D2B2D2D2D871D1D
      1D5A000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002424246A585858FF555555F92828
      287B000000000000000000000000000000000000000000000000000000000000
      00002323236B505050EA585858FF585858FF585858FF585858FF505050EA2D2D
      2D8A020202090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202092E2E2E881A1A1A520000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000303030B1717174A2828287A2A2A2A7F191919500707071A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001616164032323294414141BF424242C0373737A01C1C1C560101
      0104000000000000000000000000000000000000000000000000000000000000
      0000000000001616164032323294414141BF424242C0373737A01C1C1C560101
      0104000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000003F3F3FB84E4E4EE300000002000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      05103E3E3EB6585858FF585858FF585858FF585858FF585858FF585858FF4848
      48D30C0C0C260000000000000000000000000000000000000000000000000505
      05103E3E3EB6585858FF585858FF585858FF585858FF585858FF585858FF4848
      48D30C0C0C260000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000040404112F2F2F8C515151E9585858FF585858FF535353F3383838A30B0B
      0B220000000000000000000000000000000000000000000000000303030E4949
      49D2585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF525252EC0C0C0C26000000000000000000000000000000000303030E4949
      49D2585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF525252EC0C0C0C2600000000000000000000000000000000000000000000
      0000131313391515153F1515153F1515153F1515153F1515153F1515153F1414
      143E000000050000000000000000000000000000000000000000000000000B0B
      0B244C4C4CDD565656FA434343C72E2E2E8B2D2D2D863D3D3DB5565656FC5454
      54F21717174300000000000000000000000000000000000000003636369F5858
      58FF585858FF535353F5575757FE585858FF585858FF575757FC545454F65858
      58FF585858FF474747D1010101040000000000000000000000003636369F5858
      58FF585858FF585858FF585858FF4E4E4EE54B4B4BDE585858FF585858FF5858
      58FF585858FF474747D101010104000000000000000000000000000000000000
      0000545454F5585858FF585858FF585858FF585858FF585858FF585858FF5454
      54F50E0E0E2E0000000000000000000000000000000000000000010101074A4A
      4AD7535353F41E1E1E5B00000000000000000000000000000000111111374F4F
      4FE6525252F00A0A0A210000000000000000000000000909091F575757FD5858
      58FF565657FC1C1C1C562F2F2F8D575757FE575757FC3C3C3CB50E0E0E2E5656
      56FC585858FF575757FD1B1B1B5200000000000000000909091F575757FD5858
      58FF585858FF585858FF585858FF3D3D3DB332323293585858FF585858FF5858
      58FF585858FF575757FD1B1B1B52000000000000000000000000000000000000
      0000535353F4585858FF585858FF585858FF585858FF585858FF585858FF5454
      54F20E0E0E2E00000000000000000000000000000000000000002424246B5656
      56FA2424246E000000001D1D1D56454545CA494949D228282878000000011313
      1338575757FD3535359E00000000000000000000000023232367585858FF5858
      58FF585858FF4E4E4EE50C0C0C282F2F2F8C3D3D3DB60808081C464646CD5858
      58FF585858FF585858FF33333398000000000000000023232367585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF33333398000000000000000000000000000000000000
      0000535353F4585858FF585858FF585858FF585858FF585858FF585858FF5454
      54F20E0E0E2E0000000000000000000000000000000000000000414141BB5050
      50E90101010616161644575757FE585858FF585858FF575757FE272727750000
      0000424242BE515151EC0000000200000000000000002C2B2B81585858FF5858
      58FF585858FF585858FF4E4E4EE30A0A0A210303030A464646CD585858FF5858
      58FF585858FF585858FF3D3D3DB600000000000000002C2B2B81585858FF5858
      58FF585858FF585858FF585858FF3D3D3DB53434349D585858FF585858FF5858
      58FF585858FF585858FF3D3D3DB6000000000000000000000000000000000000
      0000535353F4585858FF585858FF585858FF585858FF585858FF585858FF5454
      54F20E0E0E2E00000000000000000000000000000000414141BF585858FF4343
      43C3000000003434349A585858FF585858FF585858FF585858FF454545CD0000
      00002F2F2F8A585858FF585858FF00000000000000002A2A2A7D585858FF5858
      58FF585858FF575757FC3C3C3CB40808081B0A0A0A212F2F2F8C575757FE5858
      58FF585858FF585858FF3B3B3BAE00000000000000002A2A2A7D585858FF5858
      58FF585858FF585858FF585858FF3434349A2525256F585858FF585858FF5858
      58FF585858FF585858FF3B3B3BAE000000000000000000000000000000000000
      0000535353F4585858FF585858FF585858FF585858FF585858FF585858FF5454
      54F20E0E0E2E000000000000000000000000000000002C2C2C80535352F14444
      45CA000000002E2E2E89585858FF585858FF585858FF585858FF3F3F3FBB0000
      000033333397565656FB3C3C3CB200000000000000001C1C1C54585858FF5858
      58FF575757FC3C3C3CB50808081C464646CD4E4E4EE50C0C0C282F2F2F8D5757
      57FE585858FF585858FF2C2C2C8400000000000000001C1C1C54585858FF5858
      58FF585858FF585858FF585858FF3434349A2525256F585858FF585858FF5858
      58FF585858FF585858FF2C2C2C84000000000000000000000000000000000000
      0000535353F4585858FF585858FF585858FF585858FF585858FF585858FF5454
      54F20E0E0E2E0000000000000000000000000000000000000000393939A85555
      55F8060606150909091F505050EA585858FF585858FF525252F2171717480000
      00014B4B4BDB494949D70000000000000000000000000303030C525251EE5858
      58FF575757FE2929297C464646CD585858FF585858FF4E4E4EE5202020625656
      56FC585858FF535353F31111113800000000000000000303030C525251EE5858
      58FF585858FF585858FF585858FF3535359D26262672585858FF585858FF5858
      58FF585858FF535353F311111138000000000000000000000000000000000000
      0000535353F4585858FF585858FF585858FF585858FF585858FF585858FF5454
      54F20E0E0E2E0000000000000000000000000000000000000000171717465757
      57FE363636A1000000000909091F2B2B2B822E2E2E8B10101035000000002727
      2773565656FB27272778000000000000000000000000000000002525256D5757
      57FE585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FC3434349D000000000000000000000000000000002525256D5757
      57FE585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FC3434349D00000000000000000000000000000000000000000000
      00004D4D4DE0505050ED505050ED505050ED505050ED505050ED505050ED4E4E
      4EE70C0C0C280000000000000000000000000000000000000000000000003838
      38A5575757FE383838A30606061600000000000000000303030A2C2C2C825757
      57FE424242C40303030D00000000000000000000000000000000000000003232
      3296575757FE585858FF585858FF585858FF585858FF585858FF585858FF5656
      56FB3E3E3EBB0303030D00000000000000000000000000000000000000003232
      3296575757FE585858FF585858FF585858FF585858FF585858FF585858FF5656
      56FB3E3E3EBB0303030D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0107373737A4575757FE565656FC464646CC444444C6555555F8555555F93F3F
      3FBD0808081D0000000000000000000000000000000000000000000000000000
      00002323236B505050EA585858FF585858FF585858FF585858FF505050EA2D2D
      2D8A020202090000000000000000000000000000000000000000000000000000
      00002323236B505050EA585858FF585858FF585858FF585858FF505050EA2D2D
      2D8A020202090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000015151543363636A1525252F1545454F6393939AA1D1D1D5A0101
      0104000000000000000000000000000000000000000000000000000000000000
      0000000000000303030B1717174A2828287A2A2A2A7F191919500707071A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000303030B1717174A2828287A2A2A2A7F191919500707071A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002E2E2E86383838A700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001616164032323294414141BF424242C0373737A01C1C1C560101
      0104000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F0F0F301515154000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      05103E3E3EB6585858FF555555F9494949D9474747D2545454F8585858FF4848
      48D30C0C0C260000000000000000000000000000000000000000000000000000
      0003060606160000000000000000000000000000000000000000000000000101
      0107060606130000000000000000000000000000000000000000000000000000
      0003000000130000001A0000001A0000001A0000001A0000001A000000160000
      0006000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000424242BE575757FE00000000000000000000
      00000000000000000000000000000000000000000000000000000303030E4949
      49D2555555F73030308F0808081C00000000000000000303030B252525715757
      57FF525252EC0C0C0C2600000000000000000000000000000000000000003939
      39A84B4B4BDE0909091F00000000000000000000000000000000010101073D3D
      3DB6484848D40606061300000000000000000000000000000000000000000000
      00060000002A0404045A0707077609090982070707760404045A000000300000
      000C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000404040BE575757FE00000000000000000000
      00000000000000000000000000000000000000000000000000003636369F5555
      55F82121216500000000000000000000000000000000010101043A3A3AAC5656
      56FA575756FD474747D101010104000000000000000000000000000000002929
      297D575757FF4B4B4BDE0909091F0000000000000000010101073D3D3DB65858
      58FF3D3D3DB60101010700000000000000000000000000000000000000000101
      01080F0F0F5C4B4747ABA49797E7C1B2B2FBA39797E74B4646AB0F0F0F5C0101
      0108000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000404040BE575757FE00000000000000000000
      000000000000000000000000000000000000000000000909091F575757FD3737
      37A600000000000000000000000000000000010101043A3A3AAC565656FA3131
      319326262672575757FD1B1B1B52000000000000000000000000000000000000
      00002929297D575757FF4B4B4BDE0909091F010101073D3D3DB6585858FF3D3D
      3DB6010101070000000000000000000000000000000000000000000000000B0B
      0B3C4E4C4CA7BCB2B2FDBCB2B2FFBCB2B2FFBCB2B2FFBAAFAFFD4B4747A70B0B
      0B3C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000404040BE575757FE00000000000000000000
      0000000000000000000000000000000000000000000023232367565656F91616
      1644000000000000000000000000010101043A3A3AAC565656FA313131930000
      00020303030E565656FB33333398000000000000000000000000000000000000
      0000000000002929297D575757FF4B4B4BDE404040BD585858FF3D3D3DB60101
      0107000000000000000000000000000000000000000000000000000000001515
      1561A4A1A1E5B1ABABFFB1ABABFFB1ABABFFB1ABABFFB1ABABFF959090E51515
      1561000000000000000000000000000000000000000000000000000000025656
      56FD575757FE575757FE575757FE575757FE575757FF575757FE575757FE5757
      57FE575757FE151515400000000000000000000000002C2B2B81565656FA0808
      081B0000000000000000010101043A3A3AAC565656FA31313193000000020000
      0000000000004E4E4EE43D3D3DB6000000000000000000000000000000000000
      000000000000000000002C2C2C85575757FF585858FF404040BD010101070000
      0000000000000000000000000000000000000000000000000000000000001B1B
      1B6CC6C6C6FAB4B4B4FFAAA8A8FFA6A5A5FFA6A5A5FFA6A5A5FFA8A7A7FA1B1B
      1B6C000000000000000000000000000000000000000000000000000000014040
      40BD404040BE404040BE404040BE515151EE575757FE404040BE404040BE4040
      40BE424242BE0F0F0F300000000000000000000000002A2A2A7D555555F90909
      091F00000000010101043A3A3AAC565656FA3131319300000002000000000000
      000000000000515151ED3B3B3BAE000000000000000000000000000000000000
      000000000000010101073D3D3DB6585858FF575757FF4B4B4BDE0909091F0000
      0000000000000000000000000000000000000000000000000000000000001919
      195DB3B3B3E4C0C0C0FFBFBFBFFFB9B9B9FFB4B4B4FFB2B2B2FFA2A2A2E41919
      195D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000404040BE575757FE00000000000000000000
      000000000000000000000000000000000000000000001C1C1C54575757FE1C1C
      1C57010101043A3A3AAC565656FA313131930000000200000000000000000000
      00000C0C0C26575757FE2C2C2C84000000000000000000000000000000000000
      0000010101073D3D3DB6585858FF3D3D3DB62C2C2C85575757FF4B4B4BDE0909
      091F000000000000000000000000000000000000000000000000000000000F0F
      0F375F5F5FA0D5D5D5FDCECECEFFCECECEFFCECECEFFD3D3D3FD5C5C5CA00F0F
      0F37000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000404040BE575757FE00000000000000000000
      000000000000000000000000000000000000000000000303030C525251EE4646
      46CD3A3A3AAC565656FA31313193000000020000000000000000000000000000
      00003A3A3AA7535353F311111138000000000000000000000000000000000101
      01073D3D3DB6585858FF3D3D3DB601010107000000002929297D575757FF4B4B
      4BDE0909091F0000000000000000000000000000000000000000000000000101
      01071818184F6262629FC0C0C0E3DDDDDDFABFBFBFE36161619F1818184F0101
      0107000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000404040BE575757FE00000000000000000000
      00000000000000000000000000000000000000000000000000002525256D5757
      57FE575757FC3232329500000002000000000000000000000000000000002A2A
      2A7E575757FC3434349D00000000000000000000000000000000000000003D3D
      3DB5585858FF3D3D3DB6010101070000000000000000000000002929297D5757
      57FF4B4B4BDE0606061600000000000000000000000000000000000000000000
      000001010107101010351C1C1C57202020641C1C1C5710101035010101070000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000404040BD565656FD00000000000000000000
      0000000000000000000000000000000000000000000000000000000000003232
      3296575757FE464646CF1E1E1E5B0B0B0B240B0B0B231C1C1C53414141BD5656
      56FB3E3E3EBB0303030D00000000000000000000000000000000000000002424
      246C3D3D3DB50101010700000000000000000000000000000000000000002929
      297D393939A80000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002323236B505050EA585858FF585858FF585858FF585858FF505050EA2D2D
      2D8A020202090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000303030B1717174A2828287A2A2A2A7F191919500707071A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C1C1C57404040BE525252F2555555F9464646CE272727760303
      030A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000003C3C3CB2575757FD484848D5464646D0545454F7585858FF4A4A
      4AD50A0A0A200000000000000000000000000000000000000000000000000000
      0003000000130000001A0000001A0000001A0000001A0000001A000000160000
      0006000000000000000000000000000000000000000000000000000000000000
      0003000000130000001A0000001A0000001A0000001A0000001A000000160000
      0006000000000000000000000000000000000000000000000000000000000000
      0003000000130000001A0000001A0000001A0000001A0000001A000000160000
      0006000000000000000000000000000000000000000000000000000000000101
      010600000000010101060909091F00000000000000000404040F303030905757
      57FE4A4A4AD50303030A00000000000000000000000000000000000000000000
      00060003002E0022007D024300B1034C00C7024300B10022007D000400340000
      000C000000000000000000000000000000000000000000000000000000000000
      00060003052E002D347C005867B0006474C5005867B0002D347C000405340000
      000C000000000000000000000000000000000000000000000000000000000000
      00060000032E0000227D000043B100004CC7000043B10000227D000004340000
      000C0000000000000000000000000000000000000000000000002E2E2E8B4545
      45CB050505100000000000000000000000000000000000000000000000003030
      3090585858FF2727277600000000000000000000000000000000000000000003
      000E064A009A108907DF1DBF0EF621D010FD1CBE0EF6108906DF064A009A0003
      000E000000000000000000000000000000000000000000000000000000000003
      040E00505D951092A2DB1FC6D5F524D7E6FD1FC6D4F50D91A2DB00505D950003
      040E000000000000000000000000000000000000000000000000000000000000
      030E00004A9A07078ADF0E0EBFF61010D0FD0E0EBEF6060689DF00004A9A0000
      030E00000000000000000000000000000000000000002B2B2B82575757FE5858
      58FF454545CA0505051000000000000000000000000000000000000000000404
      040F545454F7464646CE00000000000000000000000000000000000000000438
      0069198D0CDF26C615FF21C510FF21C510FF21C510FF21C410FF128A06DF0438
      0069000000000000000000000000000000000000000000000000000000000039
      42631B96A4D835D9E3FF2ED7E2FF2ED7E2FF2ED7E2FF2DD7E1FF1093A2D80039
      4263000000000000000000000000000000000000000000000000000000000000
      38690D0D8FDF1616C7FF1010C5FF1010C5FF1010C5FF1010C4FF06068ADF0000
      38690000000000000000000000000000000000000000414141BF575757FF5757
      57FF575757FF454545CD000000050000000000000000000000001313133C1818
      184B4D4D4DE0555555FA1818184B000000000000000000000000000000000A61
      00AE38B629F621B210FF21B210FF21B210FF21B210FF21B210FF20A810F60A61
      00AE000000000000000000000000000000000000000000000000000000000160
      6F9F58CDD6F337D3D8FF37D3D8FF37D3D8FF37D3D8FF37D3D8FF31C2C9F30160
      6F9F000000000000000000000000000000000000000000000000000000000000
      61AE2C2CB9F61010B2FF1010B2FF1010B2FF1010B2FF1010B2FF1111A8F60000
      61AE0000000000000000000000000000000000000000020202083E3E3EB75757
      57FE0B0B0B240303030B00000000000000000000000000000000202020615656
      56FC585858FF585858FF575757FE000000000000000000000000000000000B74
      00C752C941FD37B326FF26A615FF21A210FF21A210FF21A210FF29A818FD0B74
      00C700000000000000000000000000000000000000000000000000000000006F
      7FB283E5F1FD57D9E4FF44D2D4FF3FCFD0FF3FCFD0FF3FCFD0FF4BD1D2FD006F
      7FB2000000000000000000000000000000000000000000000000000000000000
      74C74747CEFD2626B3FF1515A6FF1010A2FF1010A2FF1010A2FF1A1AA8FD0000
      74C70000000000000000000000000000000000000000000000002A2A2A7D5858
      58FF202020610000000000000000000000000000000000000000000000001F1F
      1F5E565656FC575757FE2F2F2F8D000000000000000000000000000000000C6A
      00AE50C640F648C037FF46BE35FF3FB72EFF38B027FF37AF26FF3DB32DF60C6A
      00AE000000000000000000000000000000000000000000000000000000000164
      72997FD8E2F16AE0F1FF68DFF0FF61D9EAFF5AD4E5FF59D3E4FF60CAD8F10164
      7299000000000000000000000000000000000000000000000000000000000000
      6AAE4848CEF63939C2FF3737C0FF3030B9FF2929B2FF2828B1FF3131B7F60000
      6AAE0000000000000000000000000000000000000000000000000909091F5454
      54F74E4E4EE50909091E00000000000000000000000000000000000000000000
      00001F1F1F5E2C2C2C8500000000000000000000000000000000000000000742
      006930A521DF5FD74EFF56CE45FF56CE45FF56CE45FF5DD54CFF2CA21DDF0742
      006900000000000000000000000000000000000000000000000000000000003D
      465B40A4B0CD90ECF9FE78E6F7FF78E6F7FF78E6F7FF89EAF7FE36A2AFCD003D
      465B000000000000000000000000000000000000000000000000000000000000
      42692525ABDF5959E2FF4E4ED7FF4E4ED7FF4E4ED7FF5656DFFF2121A6DF0000
      4269000000000000000000000000000000000000000000000000000000002525
      256F575757FF4E4E4EE520202061070707180404040F171717471414143D0000
      0000000000000000000000000000000000000000000000000000000000000009
      000E0C64009A32A922DF5DD44BF668E057FD5CD34AF631A821DF0C64009A0009
      000E000000000000000000000000000000000000000000000000000000000008
      090C015B688442A6B3CC90E0E8F0A2F1FAFC8CDFE8F03EA6B3CC015B68840008
      090C000000000000000000000000000000000000000000000000000000000000
      090E0000649A2828AFDF5959E1F66767EFFD5858E0F62727AEDF0000649A0000
      090E000000000000000000000000000000000000000000000000000000000000
      00002525256F545454F7585858FF575757FE575757FE575757FE535353F50A0A
      0A20000000000000000000000000000000000000000000000000000000000000
      00000009000E094600690E7300AE108400C70E7300AE094600690009000E0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000080A0C003E465901667492017586A701667492003E465900080A0C0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000090E00004669000073AE000084C7000073AE000046690000090E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000909091F2A2A2A7D3C3C3CB33E3E3EB830303090111111360000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000900000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFF3FFFFF0000C003FE3FFE670000C003FC3FFC070000CC33FC3FF80F0000
      CC33FC3FF00F0000CC33FC3FF00F0000CC33F81FF00F0000CC33F00FF83F0000
      CC33E007F03F0000C003E003E03F0000C003C003E43F0000FFFFFFFFFE7F0000
      FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFE007FF7FFE7F
      FFFFE007FC1FFC3FE007FE7FF00FE007E007FC3FF00FE007E007F81FE047E007
      F00FF81FE067C043FE3FF00FE007C061FC1FF00FE707C061F81FF007E703E043
      F81FF087E703E007FC1FF007E007E007FE7FF00FF007E007FFFFF80FFC3FFE3F
      FFFFFC3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFC3FFFFFFC0FE003FC3FFC21F807C003E007F801F1C7C003E003F001
      E303C003C003E003C013C003E187C003E233C003E187C001E223C003C0038021
      F147C003E0038421F807C007E007C43DFC1FE0FFFC3FFFFFFFFFFFFFFC3FFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFC1FCFFFFFFFE007F00FC7FFC7FFE007E007C007C0FFE407E003C003C03F
      E007C003C003C00FE007C193C003E003E007C003C003C003E007C003C003C00F
      E407E007C003C03FE007E007C003C1FFE007F00FC003C7FFFFFFFC3FE007FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF00FC003FFFFFC7F
      F00F8001C001FC3FC00380018001FC1F80031C008FF9FC1F8001F9008E79C81F
      8001C9808E39C00FC42301E08039C007C00301008039C003C00300088E79E003
      C00300088EF9FC01C00300008001FE01E00780018001FF01F00F8001C003FFC1
      F81FC003FFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFF83FF80FFFFFFFFF
      F87FE007FFFFFFFFC071C0038001FFFF8001C4018001FFFF800188018001FFFF
      800180118001FFFF80018019E0C7C003F0118039F187C003F81180F1E007FFFF
      FC038071E007FFFFFE03C003E007FFFFFF07E003F187FFFFFF0FF007FFFFFFFF
      FF1FF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FF80FFFFFFE3F
      E007E007FFFFF00FC003C003F007E007C001C001F007C3C380018001F007C403
      80018001F007C01180018001F007881180018001F007881180018001F007C003
      80018001F007C423C003C003F007E183E003E003FFFFE007F007F007FFFFF80F
      F81FF81FFFFFFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80FFFFF
      FFFFFE7FE007E7E7E00FFE7FC183E3C3E00FFE7FC781E183E00FFE7F8F01F007
      E00FFE7F8E01F80FE00FC0038C19FC1FE00FC0038839F81FE00FFE7F8071F00F
      E00FFE7F80F1E087E00FFE7FC1E3E1C3F01FFE7FE003E3E3FFFFFE7FF007FFFF
      FFFFFFFFF81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      F80FFFFFFFFFFFFFF807E00FE00FE00FE983E00FE00FE00FC7E3E00FE00FE00F
      83E3E00FE00FE00F81C1E00FE00FE00F83C1E00FE00FE00FC7E1E00FE00FE00F
      C3F3E00FE00FE00FE01FE00FE00FE00FF00FF01FF01FF01FF81FFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object ActionList: TActionList
    Images = ImageList16
    Left = 980
    Top = 320
    object ActionPlayersUpdate: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1080#1075#1088#1086#1082#1086#1074
      ImageIndex = 0
      OnExecute = ActionPlayersUpdateExecute
    end
    object ActionBan: TAction
      Caption = #1041#1072#1085
      Hint = #1041#1072#1085'. '#1047#1072#1073#1072#1085#1080#1090#1100' '#1080#1075#1088#1086#1082#1072
      ImageIndex = 8
    end
    object ActionKick: TAction
      Caption = 'ActionKick'
      Hint = 'Kick. '#1042#1099#1075#1085#1072#1090#1100' '#1080#1075#1088#1086#1082#1072' '#1089' '#1089#1077#1088#1074#1077#1088#1072
      ImageIndex = 9
    end
    object ActionSteamInfo: TAction
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
      Hint = #1048#1085#1092#1086#1088#1072#1094#1080#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103' Steam'
      ImageIndex = 10
      OnExecute = ActionSteamInfoExecute
    end
  end
  object TimerUpdate: TTimer
    Enabled = False
    Interval = 10000
    OnTimer = TimerUpdateTimer
    Left = 993
    Top = 632
  end
  object SQLConnectionSDB1: TSQLConnection
    AfterConnect = SQLConnectionSDB1AfterConnect
    AfterDisconnect = SQLConnectionSDB1AfterDisconnect
    OnLogin = SQLConnectionSDB1Login
    Left = 994
    Top = 488
  end
  object ImageListMed: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 980
    Top = 272
    Bitmap = {
      494C010116003002A00518001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      00000000000036000000280000006000000090000000010020000000000000D8
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001414143F4848
      48D5484848D5484848D5484848D5484848D5484848D51313133B000000000000
      00000000000000000000000000002222226A0F0F0F3100000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000909091E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000032D2D
      2D88565656FB585858FF585858FF585858FF585858FF1919194D000000000000
      0000000000000000000000000000515151ED545454F53A3A3AAD0909091F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0005454545C91414143D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01042F2F2F8D575757FF585858FF585858FF585858FF1919194D000000000000
      0000000000000000000000000000505050EA575757FE585858FF4C4C4CDF1010
      1034000000000000000000000000000000000000000000000000000000000000
      00054C4C4CDE505050EB11111136000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000333333398575757FF585858FF585858FF585858FF1919194D060606133A3A
      3AAC3B3B3BB11A1A1A5100000000121212353C3C3CB2575757FC585858FF4E4E
      4EE30B0B0B240000000000000000000000000000000000000000000000000000
      00054C4C4CDE585858FF505050EB1919194F0D0D0D2C0D0D0D2C0D0D0D2C0D0D
      0D2C0D0D0D2C0D0D0D2C0D0D0D2C0D0D0D2C0D0D0D2C0D0D0D2C0C0C0C270101
      0107000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001A1A
      1A52555555FA585858FF515151EF565656FC585858FF1919194D0909091D5656
      56FB585858FF2828287A0000000000000000010101072D2D2D86575757FD5757
      57FE3C3C3CB10000000000000000000000000000000000000000000000000000
      00054C4C4CDE585858FF585858FF565656FA545454F5545454F5545454F55454
      54F5545454F5545454F5545454F5545454F5545454F5545454F5535353F33E3E
      3EB70303030D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004646
      46CF585858FF545454F70F0F0F302E2E2E8A575757FE1919194D080808194F4F
      4FE6515151ED2323236B000000000000000000000000000000033E3E3EB85757
      57FE575757FD1010103200000000000000000000000000000000000000000000
      00054C4C4CDE585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5757
      57FD151515410000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000C0C0C295757
      57FE575757FE3131319300000000000000032A2A2A7E15151542000000000000
      0000000000000000000000000000000000000000000000000000111111385555
      55F7585858FF2E2E2E8A00000000000000000000000000000000000000000000
      00054C4C4CDE585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5757
      57FE171717470000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212121645757
      57FE575757FD17171748000000000000000000000001000000000303030C2727
      27762929297B1212123500000000000000000000000000000000010101064B4B
      4BDE585858FF404040BF00000001000000000000000000000000000000000000
      00054C4C4CDE585858FF585858FF454545C92323236723232367232323672323
      23672323236723232367232323672323236730303091565656FA585858FF5757
      57FE171717470000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002828287A5757
      57FF555555F70F0F0F30000000000000000000000000000000000909091E5656
      56FC585858FF2929297B00000000000000000000000000000000000000004444
      44C6585858FF464646CF02020208000000000000000000000000000000000000
      00054C4C4CDE585858FF585858FF424242C22121216021212160212121602121
      2160212121602121216021212160212121602E2E2E86565656FB585858FF5757
      57FE171717470000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000262626705757
      57FF555555F910101034000000000000000000000000000000000909091D5555
      55FB585858FF2828287A00000000000000000000000000000000000000004646
      46D0585858FF454545CD01010107000000000000000000000000000000000000
      00054C4C4CDE585858FF585858FF515151E9434343C5434343C5434343C54343
      43C5434343C5434343C5434343C5434343C5484848D3575757FD585858FF5757
      57FE171717470000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001A1A1A505757
      57FE575757FE1E1E1E5C000000000000000000000000000000000909091D5555
      55FB585858FF2828287A000000000A0A0A210000000100000000060606154F4F
      4FE8585858FF3C3C3CB200000000000000000000000000000000000000000000
      00054C4C4CDE585858FF585858FF3A3A3AA90707071807070718070707180707
      0718070707180707071807070718070707181A1A1A52565656FA585858FF5757
      57FE171717470000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060606145555
      55FA585858FE3F3F3FBB000000000000000000000000000000000909091D5555
      55FB585858FF2828287A000000004D4D4DE51A1A1A5200000000202020615757
      57FD575757FE2323236C00000000000000000000000000000000000000000000
      00054C4C4CDE585858FF585858FF555555FA4F4F4FEA4F4F4FEA4F4F4FEA4F4F
      4FEA4F4F4FEA4F4F4FEA4F4F4FEA4F4F4FEA545454F2575757FE585858FF5757
      57FE171717470000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003737
      37A4575757FE575757FE1F1F1F610000000000000000000000000909091D5555
      55FB585858FF2828287A00000000515151EC545454F5252525734F4F4FE85858
      58FF515151ED0606061300000000000000000000000000000000000000000000
      00054C4C4CDE585858FF585858FF3B3B3BB10C0C0C280C0C0C280C0C0C280C0C
      0C280C0C0C280C0C0C280C0C0C280C0C0C281F1F1F61565656FA585858FF5757
      57FE171717470000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D0D
      0D2A505050EA585858FF525252F12020206100000005000000000909091E5656
      56FC575757FF2828287B00000000515151EC585858FF575757FE575757FE5656
      56FC262626740000000000000000000000000000000000000000000000000000
      00054C4C4CDE585858FF585858FF4B4B4BDD3636369F3636369F3636369F3636
      369F3636369F3636369F3636369F3636369F3F3F3FBA575757FC585858FF5757
      57FE171717470000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001E1E1E5D555555F8575757FE565656FB404040BD0A0A0A21020202081919
      194D1A1A1A510A0A0A2300000000515151EC585858FF585858FF585858FF3F3F
      3FBC010101060000000000000000000000000000000000000000000000000000
      00054C4C4CDE585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5757
      57FE171717470000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C1C1C56515151ED575757FE585858FF1919194D000000000000
      0000000000000000000000000000515151EC585858FF585858FF585858FF5454
      54F61C1C1C580000000000000000000000000000000000000000000000000000
      0001484848D3585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5656
      56FB1313133B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C273535359D505050E91818184C000000000000
      0000000000000000000000000000515151EC575757FE575757FE575757FE5757
      57FE535353F41919194E00000000000000000000000000000000000000000000
      00001818184B484848D34D4D4DE14D4D4DE14D4D4DE14D4D4DE14D4D4DE14D4D
      4DE14D4D4DE14D4D4DE14D4D4DE14D4D4DE14D4D4DE14D4D4DE14D4D4DE03030
      3090010101050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000707071702020208000000000000
      0000000000000000000000000000212121662626267526262675262626752626
      2675262626751D1D1D5A00000000000000000000000000000000000000000000
      0000000000000000000100000005000000050000000500000005000000050000
      0005000000050000000500000005000000050000000500000005000000030000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000001060606140F0F0F331919
      194E1A1A1A521313133E0909091E010101060000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000909091E0C0C0C270C0C0C270C0C0C270C0C0C270C0C0C270C0C
      0C270C0C0C270C0C0C270C0C0C270C0C0C270C0C0C270C0C0C270C0C0C270101
      0106000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0107020202090000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000011111137383838A54F4F4FE7565656FD5757
      57FE575757FE555555FB535353F3404040BE1F1F1F6201010107000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020209484847D1585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF555555FA1111
      1138000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D0D0D2A2B2B2B813E3E3EB84646
      46CE474747D1424242C4333333991919194D0000000500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000202020932323297565656FB585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF565656FA434343CA0D0D0D2B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000002020209474747D1565656FD565656FD565656FD565656FD565656FD5656
      56FD565656FD565656FD565656FD565656FD565656FD565656FD545454F81212
      1239000000000000000000000000000000000000000000000000000000000000
      000000000000000000000B0B0B22383838A5565656FB585858FE585858FF5858
      58FF585858FF585858FF585858FF575757FE484848D31A1A1A50000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060606153E3E3EB8575757FE575757FE515151ED313132941818184B0C0C
      0C270B0B0B221313133828282879494949D6575757FD575757FD4C4C4CE21616
      1644000000000000000000000000000000000000000000000000000000000000
      0000000000000B0B0B231A1A1A511B1B1B531B1B1B531B1B1B531B1B1B531B1B
      1B531B1B1B531B1B1B531B1B1B531B1B1B531B1B1B531B1B1B53151515430303
      030A000000000000000000000000000000000000000000000000000000000000
      0000000000000D0D0D2B12121239121212391212123912121239121212391515
      15421919194E1212123912121239121212391212123912121239111111380202
      0209000000000000000000000000000000000000000000000000000000000000
      0000000000001313133C4D4D4DE2575757FE585858FF565656FB4E4E4EE54646
      46D0434343C84B4B4BDD535353F4575757FE575757FE555555F82A2A2A7F0101
      0106000000000000000000000000000000000000000000000000000000000101
      01063B3B3BAE585858FE575757FE3D3D3DB60B0B0B2400000000000000000000
      00000000000000000000000000000303030D2A2A2A7D565656FB575757FE4B4B
      4BDF0D0D0D2B0000000000000000000000000000000000000000000000000000
      00000909091D525252EC585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF4F4F4FE72222
      2269000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000053434
      3499474747D10707071800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000010101032505050EA575757FE575757FE434343C7171717480404040E0000
      000000000000010101040D0D0D2C31313194545454F7575757FE575757FC2A2A
      2A7F000000000000000000000000000000000000000000000000000000002A2A
      2A7E575757FE575757FD3535359C010101070000000000000000000000000000
      000000000000000000000000000000000000000000001C1C1C55565656FB5757
      57FD434343C90101010700000000000000000000000000000000000000000000
      00000F0F0F2E575757FE585858FF585858FF585858FF575757FD424242C42D2D
      2D832B2B2B813B3B3BAF585858FF585858FF585858FF585858FF525252ED2929
      297D000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002B2B2B7E5858
      58FE575757FE404040BE0303030C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000606
      0613494949D6585858FF565656FB2E2E2E8A0000000500000000000000000000
      000000000000000000000000000000000000161616444F4F4FE6575757FE5555
      55F81A1A1A500000000000000000000000000000000000000000070707185353
      53F3575757FE424242C40303030A000000000000000000000000000000000000
      00000000000000000000000000000A0A0A231D1D1D5A000000012A2A2A7D5757
      57FD545454F61F1F1F6100000000000000000000000000000000000000000000
      00000F0F0F2E575757FE585858FF585858FF585858FF565656FB2E2E2E8B0000
      00000000000018181849585858FF585858FF585858FF585858FF525252ED2929
      297D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000017171747545454F55858
      58FF585858FF575757FD2F2F2F8E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002828
      287A575757FE575757FE33333398000000050000000000000000000000000000
      0000000000000000000000000000000000000000000016161644545454F75757
      57FE484848D30000000500000000000000000000000000000000272727755757
      57FE525252F01515154200000000000000000000000000000000000000000000
      000000000000010101062424246E4F4F4FEA515151EC101010340303030D4B4B
      4BD8585858FF3F3F3FBD01010106000000000000000000000000000000000000
      00000F0F0F2E575757FE585858FF585858FF585858FF565656FB2D2D2D8B0000
      00000000000018181849585858FF585858FF585858FF585858FF525252ED2929
      297D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030A4C4C4CDD585858FF5858
      58FF585858FF585858FF555555FA1717174A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101044E4E
      4EE7585858FF4F4F4FE60303030D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000313131945757
      57FE575757FE1919194D00000000000000000000000000000002414141BF5858
      58FF424244C60000000300000000000000000000000000000000000000000000
      000015151543454545CD575757FE545454F63333339906060614000000002A2A
      297C585858FF515151ED0909091E000000000000000000000000000000000000
      00000F0F0F2E575757FE585858FF585858FF585858FF565656FB2D2D2D8B0000
      00000000000018181849585858FF585858FF585858FF585858FF525252ED2929
      297D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002F2F2F8A575757FE585858FF5858
      58FF585858FF585858FF585858FF494949D60505051200000000000000000000
      00000000000000000000000000000000000000000000000000001313133A5757
      57FE575757FE2B2B2B8100000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D0D0D2C5353
      53F4585858FF33333399000000000000000000000000050505114D4D4DE25555
      55F9303030930000000000000000000000000000000000000000020202093232
      3297545454F6565656FC424343C4131313380000000200000000000000001313
      133C585757FF565656FC1414143F000000000000000000000000000000001A1A
      1A4D3B3B3BAA575757FE585858FF585858FF585858FF565656FB2D2D2D8B0000
      00000000000018181849585858FF585858FF585858FF585858FF555555F64646
      46CC2B2B2B800000000300000000000000000000000000000000000000000000
      00000000000000000000000000000F0F0F2F535353F1585858FF585858FF5858
      58FF585858FF585858FF585858FF575757FD2B2B2B8100000000000000000000
      0000000000000000000000000000000000000000000000000000212121675757
      57FE575757FD15151543000000000000000000000000000000000303030C2727
      27762929297B1212123500000000000000000000000000000000010101044B4B
      4BDD585858FF424242C400000003000000000000000008080819535353F15454
      54F42828287A00000000000000000000000000000000000000000808081C5555
      55F8535353F32424246A01010107000000000000000000000000000000000B0B
      0B22575757FE555555F91A1A1A50000000000000000000000000000000003636
      369F585858FF585858FF585858FF585858FF585858FF565656FB2D2D2D8B0000
      00000000000018181849585858FF585858FF585858FF585858FF585858FF5858
      58FF444444C60606061500000000000000000000000000000000000000000000
      00000000000000000000000000003A3A3AA9585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF4F4F4FE60A0A0A20000000000000
      00000000000000000000000000000000000000000000000000002828287A5757
      57FF545454F70F0F0F30000000000000000000000000000000000909091E5656
      56FC585858FF2929297B00000000000000000000000000000000000000004343
      43C7585858FF474747D102020209000000000000000007070718525252F05353
      53F32A2A2A8100000000000000000000000000000000000000000808081C5555
      55F8474747D10505051000000000000000000000000000000000000000000C0C
      0C28575757FE565656FB1818184C000000000000000000000000000000003636
      369F585858FF585858FF585858FF585858FF585858FF565656FB2D2D2D8B0000
      00000000000018181849585858FF585858FF585858FF585858FF585858FF5858
      58FF444444C60606061500000000000000000000000000000000000000000000
      000000000000000000000F0F0F30545454F5585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF575757FD2C2C2C83000000000000
      0000000000000000000000000000000000000000000000000000272727755757
      57FF555555F80F0F0F31000000000000000000000000000000000909091D5555
      55FB585858FF2828287A00000000000000000000000000000000000000004444
      44CA585858FF464646CE0101010700000000000000000404040E4B4B4BDC5555
      55F83333339A00000000000000000000000000000000000000000808081C5555
      55F8474747D10505051000000000000000000000000000000000000000001919
      194C575757FE565757FD10101033000000000000000000000000000000003636
      369F585858FF585858FF585858FF585858FF585858FF565656FB2D2D2D8B0000
      00000000000018181849585858FF585858FF585858FF585858FF585858FF5858
      58FF444444C60606061500000000000000000000000000000000000000000000
      000000000000000000002E2E2E88585858FF585858FF585858FF565656FB4D4D
      4DE04D4D4DE5575757FD585858FF585858FF575757FE484849D8000000010000
      00000000000000000000000000000000000000000000000000001D1D1D5A5757
      57FE575757FE1A1A1A50000000000000000000000000000000000909091D5555
      55FB585858FF2828287A000000000000000000000000000000000303030B4E4E
      4EE3585858FF3E3E3EB8000000000000000000000000000000013E3E3EB65858
      58FF444444CC05050510000000000000000000000000000000000808081C5555
      55F8474747D10505051000000000000000000000000000000000000000003232
      3295585858FF4E4E4EE506060615000000000000000000000000000000002E2E
      2E88575757FE575757FE575757FE575757FE585858FF575757FC3D3D3DB62121
      2160212121603131318D585858FF585858FF575757FE575757FE575757FE5757
      57FD464646CE0303030D00000000000000000000000000000000000000000000
      00000000000000000000444444C6585858FF585858FF575757FE454545CD1414
      143F0B0B0B24373737A4575757FE585858FF585858FF545454F50A0A0A210000
      00000000000000000000000000000000000000000000000000000A0A0A215757
      57FE575757FE3535359C000000000000000000000000000000000909091D5555
      55FB585858FF2828287A00000000000000000000000000000000151515435555
      55F9585858FE2C2C2C8000000000000000000000000000000000212121625757
      57FE4E4E4EE521212168000000000000000000000000000000000808081C5555
      55F8474747D105050510000000000000000000000000000000000B0B0B245151
      51EC585858FF393939A600000001000000000000000000000000000000000000
      000206060616070707171818184B515151E9585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF555555F92E2E2E8D060606180707
      07170404040F0000000000000000000000000000000000000000000000000000
      00000000000000000000505050EB585858FF585858FF555555F82A2A2A820000
      0000000000000D0D0D28575757FE585858FF585858FF515151EE1313133E0000
      0000000000000000000000000000000000000000000000000000000000004242
      42C5585858FF555555F90F0F0F300000000000000000000000000909091D5555
      55FB585858FF2828287A00000000000000000000000000000005434343C85858
      58FE565656FC0C0C0C29000000000000000000000000000000000303030C4E4E
      4EE4575757FC464646CE0E0E0E2E000000000000000000000000080808194E4E
      4EE5424444C60303030D000000000000000000000000010101073C3C3CB35757
      57FE565656FA1212123900000000000000000000000000000000000000000000
      000000000000000000003F3F3FB7505050E83535359E2C2C2C87474747D35858
      58FF565656FB484848D8323232952F2F2F8D535353EF454545C90B0B0B250000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004B4B4BD8585858FF585858FF575757FE3D3D3DB60202
      0208000000012525256F585858FF585858FF585858FF515151ED0F0F0F310000
      0000000000000000000000000000000000000000000000000000000000001919
      194F555555F9585858FF454545CD0909091E00000000000000000909091D5555
      55FB585858FF2828287A0000000000000000010101072F2F2F8E575757FE5757
      57FE3A3A3AA90000000000000000000000000000000000000000000000001F1F
      1F5D565656FB545454F63D3D3DB60E0E0E2E0000000000000000000000010606
      0616060606140000000000000000000000000303030A3333339C575757FE5757
      57FE333333980000000000000000000000000000000000000000000000000000
      000000000000000000004B4B4BDA464646CC101010341414143E535353F34747
      47D14C4C4CDF535353F12D2D2D8600000001444444C8424242C2171717490000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003636369F575757FE585858FF585858FF575757FD4747
      47CF424242C2555555F7585858FF585858FF575757FE4D4D4DE0020202080000
      0000000000000000000000000000000000000000000000000000000000000000
      0003353535A0575757FE575757FE373737A200000000000000000909091D5555
      55FB585858FF2828287A000000000000000016161644565656FC575757FE4D4D
      4DE20A0A0A210000000000000000000000000000000000000000000000000000
      00002F2F2F8A575757FE545454F6464646D22121216705050510000000000000
      000000000000000000000000000315151542424242C5575757FD585858FF3F3F
      3FBA0303030A0000000000000000000000000000000000000000000000000000
      000000000000000000003131318F565656FC4A4A4AD9535353F14B4B4BDC2525
      25730B0B0B234F4F4FE5545454F5494949D6565656FA3E3E3EBA070707170000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000012121239545454F5585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF535353F12C2C2C83000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303030D3D3D3DB5464646D00808081C00000000000000000909091D5555
      55FB585858FF2828287A0000000000000000000000032C2C2C834F4F4FE81313
      133A000000000000000000000000000000000000000000000000000000000000
      0000020202083131318D565656FB575757FD4F4F4FE7444444CC3333339A2C2C
      2C872929297F32323295424242C6525252F1575757FE575757FE3C3C3CB00606
      0616000000000000000000000000000000000000000000000000000000000000
      000000000000000000000404040E3636369F525252EC494949D72B2B2B800303
      030A000000001414143E474747D0515151E93F3F3FBD1919194D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000012C2C2C83565656FB585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F63D3D3DB806060616000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000303030C060606130000000000000000000000000909091D5555
      55FB585858FF2828287A000000000000000000000000000000030808081B0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001F1F1F5C505050E8575757FE585858FF585858FF5858
      58FF585858FF585858FF585858FF575757FE545454F42B2B2B7F010101060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010707071A0707071A000000010000
      00000000000000000000010101070B0B0B220303030D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101062929297D545454F7575757FE5757
      57FE575757FE575757FE515151ED393939AC0A0A0A2000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000909091D5555
      55FB575757FF2828287A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000020202081F1F1F5C3F3F3FB9474747CF5656
      56FB575757FC4A4A4AD7414141BF262626710606061500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C0C0C282828287B3D3D
      3DB53F3F3FBD2B2B2B851919194F000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030D2828
      287A2A2A2A7E1313133800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101070909
      091D0909091E0303030C00000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000005080808190A0A
      0A210B0B0B230808081C0303030C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000060606152A2A2A7D454545CA545454F25858
      58FF585858FF555555F84A4A4AD73434349A1010103200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C0C0C27212121622B2B
      2B7F2C2C2C842626267015151543000000050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002424246C525252F0585858FF585858FF575757FD5454
      54F6545454F8565656FB585858FF585858FF565656FB353535A00404040F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010000020505041913100E4B29271EA4373228D93E38
      2EF63F382CF5363227D829251DA212100C480604031701000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000217171747444444C6575757FE585858FF5858
      58FF585858FF585858FF585858FF505050EA2828287804040411000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001818184D373737A60404040F0000000000000000000000000000
      0000000000000000000000000000000000000000000120202061323232970202
      0209000000000000000000000000000000000000000000000000000000000000
      00000101010732323290575757FD575757FD515151EC3A3A3AAF2424246F1717
      17471313133E1D1D1D59323232954F4F4FE6575757FE575757FE424242C40A0A
      0A20000000000000000000000000000000000000000000000000000000000000
      00000000000000000000110E0D442C2820AE3D382CF3413B2FFF413B2FFF413B
      2FFF413B2FFF413B2FFF413B2FFF3E372CF22C2820AB0F0E0B41000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000202020830303090555555F9585858FF555555F94B4B4BDF4242
      42C43F3F3FBC484848D4525252F0575757FE575757FE474747CF0C0C0C270000
      0000000000000000000000000000000000000000000000000000000000000000
      000016161644525252F0575757FE3A3A3AAD0303030B00000000000000000000
      00000000000000000000000000000000000020202061545454F6575757FD3232
      3297000000000000000000000000000000000000000000000000000000000000
      00002E2E2E87575757FE555555F8444444CA1515154000000000000000000000
      00000000000000000000000000000808081940403FBD585858FF575757FE4141
      41C30404040F0000000000000000000000000000000000000000000000000000
      000000000000110F0B42373228D82B271FAC1514105415130F562D2A21B13F3A
      2EF8413B2FFF413B2FFF413B2FFF413B2FFF413B2FFD383329DD0F0E0B3C0000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010106363636A1575757FE575757FD414141C1151515420303030B0000
      000000000000000000020C0C0C272F2F2F8D535353F4575757FE4D4D4DE20D0D
      0D2A000000000000000000000000000000000000000000000000000000000000
      00000B0B0B22484848D5575757FF575757FF3D3D3DB50303030B000000000000
      000000000000000000000000000021212167555555F8585858FF545454F62020
      2061000000000000000000000000000000000000000000000000000000001B1B
      1B51565656F9555555F83B3B3BB3060606150000000000000000000000000000
      00000000000000000000000000001C1C1C56545454F5575757FE575757FC5757
      57FE3434349D0000000000000000000000000000000000000000000000000000
      0002120F0C4539342AE0231F188A090706231A18136A1B18136C0A09072B2422
      198F413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF383329DD0F0E
      0B41010000020000000000000000000000000000000000000000000000000000
      00002A2A2A7F585858FE555555F92C2C2C840000000500000000000000000000
      000000000000000000000000000000000000141414414C4C4CDF575757FE4747
      47D0040404110000000000000000000000000000000000000000000000000000
      0000000000000B0B0B22494949D9575757FF575757FF3A3A3AAD0404040F0000
      0000000000000000000120202061555555F8585858FF555555F8202020610000
      0001000000000000000000000000000000000000000000000000000000024949
      49D7575757FD484848D50808081B000000000000000000000000000000000000
      000000000000000000011B1B1B52545454F5575757FD4A4A4ADB3F3E3EBA5757
      57FE545454F61010103200000000000000000000000000000000000000000606
      04182A251FA6322E24C50707051F0B0A072D14120F521B18136C1F1B177D0D0B
      0934413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFD2C28
      20AB060403170000000000000000000000000000000000000000000000000D0D
      0D28525252EE575757FD31313194000000050000000000000000000000000000
      0000000000000000000000000000000000000000000014141441545454F25757
      57FE2929297C0000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C26494949D9575757FF575757FF3A3A3AAD0303
      030B0000000020202061545454F6585858FF555555F821212167000000000000
      0000000000000000000000000000000000000000000000000000161616445757
      57FE545454F42020206300000000000000000000000000000000000000000000
      0000000000001B1B1B52535353F3575757FE4A4A4ADB151515430808081A5050
      50EA575757FD3030309100000000000000000000000000000000000000000404
      0310100F0C400808062500000001000000000000000009080727211D19830707
      061D2C2820AB413A2EFD413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF3E37
      2CF212100C480000000000000000000000000000000000000000000000003131
      3191575757FE4D4D4DE00303030C000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000002E2E2E8B5757
      57FD515151EC0101010700000000000000000000000000000000000000000000
      00000000000000000000000000000B0B0B22484848D5575757FF575757FF3D3D
      3DB525252572555555F8585858FF545454F62020206100000000000000000000
      00000000000000000000000000000000000000000000000000003030308F5858
      57FF4A4A4ADC0606061300000000000000000000000000000000000000000000
      00001C1C1C56545454F5575757FE494949D71414143F00000000000000003535
      359E585858FF454546CF0303030C000000000000000000000000000000000000
      0000000000000000000000000000000000000303030E25221B971714105C0000
      00030303020C1D1C16763C352BE6413B2FFF413B2FFF413B2FFF413B2FFF413B
      2FFF2A251EA10000000000000000000000000000000000000000000000004E4E
      4EE5575757FD2727277700000000000000000B0B0B23232323660808081B0000
      000000000000000000051B1B1B541717174800000002000000000C0C0C275050
      50E9585858FE1818184A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B22494949D9575757FF5757
      57FF575757FE585858FF555555F8202020610000000100000000000000000000
      00000000000000000000000000000000000000000000000000003E3E3EB85858
      58FF3B3B3BB00000000000000000000000000000000000000000000000011B1B
      1B52545454F5575757FD4A4A4ADB1414143F0000000000000000000000002424
      246A585858FF4E4E4EE50707071A000000000000000000000000000000000000
      000000000001080806201917126712100D49040403120A09072B000000050000
      0000000000000202010815130F5327241C9A383329DC413B2FFE413B2FFF413B
      2FFF363227D80000000000000000000000000000000000000000050505125757
      57FD555555F81414143D0000000001010107434343C3575757FE3C3C3CB10000
      0000000000001B1B1B52565656FA555555F81212123500000000000000024646
      46CF585858FF2626277300000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C0C0C264F4F4FEA5858
      58FF585858FF575757FE25252572000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000002434343C35858
      58FF3535359E00000000000000000000000000000000000000001B1B1B525353
      53F3575757FE4A4A4ADB15151543000000000000000000000000000000001B1B
      1B52585858FF525252F20A0A0B23000000000000000000000000000000000707
      051E201C167F332F25C93E382DF33A352AE4322E24C5221E1884020202090000
      00000000000000000000000000000303030E110F0C43363127D5413B2FFF413B
      2FFF3E392CF400000000000000000000000000000000000000000C0C0C275757
      57FC525252EC0C0C0C2900000000000000053C3C3CB3575757FE3535359E0000
      00000000000015151543555555F7525252F00D0D0D2900000000000000003C3C
      3CB1585858FF2E2E2E8A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021212167555555F85858
      58FF585858FF575757FF3D3D3DB50303030B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000414141BF5858
      58FF353535A0000000000000000000000000000000001C1C1C56545454F55757
      57FE494949D71414143F00000000000000000000000000000000000000001F1F
      1F5E585858FF505050ED0A0A0A20000000000000000000000000000000003D38
      2CF3413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF3E382DF31E1B16790202
      02090404041325201B903E372CF22C2821B00908062514110E4F413B2FFF413B
      2FFF3F382CF500000000000000000000000000000000000000000B0B0B225757
      57FC545454F42323236D0000000500000000010101070F0F0F30010101040000
      000000000000000000000B0B0B220707071A0000000000000000000000003E3E
      3EB8585858FF2C2C2C8400000000000000000000000000000000000000000000
      00000000000000000000000000000000000120202061555555F8585858FF5555
      55F84F4F4FEA575757FF575757FF3A3A3AAD0404040F00000000000000000000
      00000000000000000000000000000000000000000000000000003A3A3AA95757
      57FE434343C80000000100000000000000011B1B1B52545454F5575757FD4A4A
      4ADB1414143F0000000000000000000000000000000000000000000000002C2C
      2C82585858FF494949D706060616000000000000000000000000000000003834
      29DE413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF393329E00B0A
      08310E0C0A383C382CF0413B2FFF3F392DF71C19157004040310413B2FFF413B
      2FFF373228D90000000000000000000000000000000000000000010101075655
      55FA585858FF565656FC3E3E3EB80909091F0000000000000000000000000000
      0000000000000303030A101010342323236B2E2E2D862F2F2F8B2929297E4F4F
      4FEA585858FF2122226500000000000000000000000000000000000000000000
      000000000000000000000000000020202061545454F6585858FF555555F82121
      21670C0C0C26494949D9575757FF575757FF3A3A3AAD0303030B000000000000
      00000000000000000000000000000000000000000000000000002525256F5757
      57FE515151EE0C0C0C26000000001B1B1B52535353F3575757FE4A4A4ADB1515
      1543000000000000000000000000000000000000000000000000000000024646
      46CC575757FE3C3C3CB400000005000000000000000000000000000000002B26
      1FA9413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF1412
      0E510D0C09353C352BEA413B2FFF3E392DF41B17126906040316413B2FFF413B
      2FFF29271EA40000000000000000000000000000000000000000000000004545
      45CA585858FF585858FF585858FE494949D70A0A0A2100000000000000000000
      00011F1F1F5F464646CF565656FC585858FF585858FF585858FF585858FF5858
      58FF575757FE0F0F0F3000000000000000000000000000000000000000000000
      0000000000000000000021212167555555F8585858FF545454F6202020610000
      0000000000000B0B0B22484848D5575757FF575757FF3D3D3DB50303030B0000
      00000000000000000000000000000000000000000000000000000808081B5555
      55F8575757FE323232951C1C1C56545454F5575757FE494949D71414143F0000
      00000000000000000000000000000000000000000000000000001D1D1D565656
      56FB535353EF2323236C00000000000000000000000000000000000000001311
      0E4E3E392DF4413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF2C29
      20B203030211161411592C2820B31D1C1476050504151E1B177B413B2FFF3D38
      2DF313110E4B0000000000000000000000000000000000000000000000002323
      2368575757FD585858FF585858FF575757FE454545C902020208050505113939
      39AB575757FD585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF464646CC0000000000000000000000000000000000000000000000000000
      00000000000120202061555555F8585858FF555555F820202061000000010000
      000000000000000000000B0B0B22494949D9575757FF575757FF3A3A3AAD0404
      040F000000000000000000000000000000000000000000000000000000003535
      359C575757FE565656FA545454F6575757FD4A4A4ADB1414143F000000000000
      000000000000000000000000000000000000000000000B0B0B204E4E4EE55757
      57FC484848D40404041200000000000000000000000000000000000000000505
      04192C281FB0413B2FFE413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF3F3A
      2EFB1F1C177F0A080728000000050606041B1C19146B393429E2413B2FFE2C27
      1FAD060604180000000000000000000000000000000000000000000000000303
      030E484848D4585858FF585858FF585858FF575757FE282828783D3D3DB45757
      57FE585858FF585858FF585858FF585858FF585858FF585858FF585858FF5555
      55F91919194B0000000000000000000000000000000000000000000000000000
      00001919194E545454F6585858FF555555F82121216700000000000000000000
      00000000000000000000000000000C0C0C26494949D9575757FF575757FE3737
      37A6000000000000000000000000000000000000000000000000000000000808
      081C4B4B4BDC575757FE585858FF4D4D4DE21515154300000000000000000000
      0000000000000000000000000000000000000D0D0D28494949D2575757FE4F4F
      4FE61C1C1C590000000000000000000000000000000000000000000000000100
      0002120F0C4639342AE0413B2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B
      2FFF3F392DF5363127D3322D25C2343027CD3D372CEE413B2FFE393329DF110F
      0C43010000020000000000000000000000000000000000000000000000000000
      000015151541545454F3575757FE585858FF585858FF565656FC575757FD5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF575757FE3333
      3396000000020000000000000000000000000000000000000000000000000000
      000006060616434343C7545454F6202020610000000000000000000000000000
      0000000000000000000000000000000000000B0B0B22484848D5525252F01818
      184D000000000000000000000000000000000000000000000000000000000000
      0000121212354F4F4FE8575757FE565656FA333333980C0C0C28000000010000
      000000000000000000000909091E28282878545454F2585858FF505050EB2727
      2779000000000000000000000000000000000000000000000000000000000000
      000000000000110F0C4339342AE0413B2FFE413B2FFF413B2FFF413B2FFF413B
      2FFF413B2FFF413B2FFF413B2FFF413B2FFF413B2FFD393329DF110F0C400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001B1B1B55545454F2585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF383838A30202
      0209000000000000000000000000000000000000000000000000000000000000
      000000000000060606161919194E000000010000000000000000000000000000
      000000000000000000000000000000000000000000000B0B0B22161616440000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000101010354A4A4ADB575757FD585858FF545454F24B4B4BD83A3A
      3AA9383838A54A4A4AD9525252EE575757FE565656FB4C4C4CDF2323236E0101
      0106000000000000000000000000000000000000000000000000000000000000
      00000000000000000000120F0C462D2720AF3D382DF3413B2FFF413B2FFF413B
      2FFF413B2FFF413B2FFF413B2FFF3D382DF32C2820AE110F0C43000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001414143F484848D3575757FE585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF535353EF2C2C2C80010101060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000808081C33323299515151F0575757FE575757FE5858
      58FF585858FF575757FE575757FE4F4F4FE63D3D3DB915151543000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000010000020505041913110D4C2B271EA7383229DC3F39
      2DF73F392DF7373428DB2A261DA513100E4B0606041801000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000303030D23232367434343C5565656FA5757
      57FE575757FE575757FE4C4C4CE13030308E0C0C0C2700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000707071A22222269303030913F3F
      3FBD404040C13232329926262676121212390000000200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101060909
      091F0B0B0B240505051000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404110000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000033A3A3AB01111
      1138000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000015151542383838A5000000000000
      0000000000002929297B323232990909091E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000032B2B
      2B813C3C3CB00404041100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212121604949
      49D8161616460000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101073030
      30903535359C0303030A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000003535353F4585858FF000000000000
      000000000000585858FF525252EC2C2C2C870000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030C4646
      46CF555555F80E0E0E2D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000070707184F4F
      4FE7474747D21D1D1D5C00000002000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000060606155050
      50EB515151EE0808091D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002E2E2E864E4E4EE5323232935858
      58FF4B4B4BDD4C4C4CDE4D4D4DE50909091F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000016161640414141BD4949
      49D84E4E4EE7434343C127272776000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001313133C3B3B3BB05555
      55F8575757FE474747D30A0A0B20000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000002929297C3535359E0303030E00000000000000013C3C
      3CB13F3F3FBB0101010600000000020202082E2E2E8B2D2D2D8A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001F1F1F60434343C53232329510101032515252F2333333955858
      58FF4D4D4DE42D2D2D843F3F3FBD0A0A0A234F4F4FEB353535A01E1E1E5F0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C0C0C271313133B0B0B0B233B3B3BAF414141C3555555F95858
      58FF585858FF575757FD484848D43C3C3CB11B1B1B510C0C0C261313133A0000
      0002000000000000000000000000000000000000000000000000000000000000
      000001010107252525714A4A4ADA484848D6121212394B4B4BDB585858FF5252
      52F22323236C0303030B000000001F1F1F5E505050ED424242C4222222680303
      030B000000000000000000000000000000000000000000000000000000000000
      000000000000000000004D4D4DE2565656FC2424246E00000000000000001D1D
      1D572525267300000000000000001F1F1F5E575757FD505050EB0303030A0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000373737A4575757FD585858FF505050EF060606162828287C171717475858
      58FF3F3F3FBE0909091E171717472F2F2F8A585858FF585858FF4A4A4ADA0404
      040F000000000000000000000000000000000000000000000000000000000000
      00000303030A454545CB555555F93C3C3CB4565656FB474747D2464646D05858
      58FF585858FF505050EB3D3D3DB5575757FE434343C74F4F4FE6535353F30D0D
      0D2A000000000000000000000000000000000000000000000000000000000000
      00002F2F2F8B575757FC565656FB4C4C4CE10F0F0F330909091E424242C04C4C
      4CE10F0F0F2F00000000000000002A2A2A7C525252F0575757FD515151E93030
      308F020202090000000000000000000000000000000000000000000000000000
      00000000000000000000101010323B3B3BB0484848D606060616202020613B3B
      3BB03F3F3FBB2424246F06060615454546CD3E3E3EBA15151542000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000585858FF4C4C4CE11919194F000000000000000000000000000000002727
      2878101010340000000000000000000000000000000017171747555555F84141
      41C11818184A0000000000000000000000000000000000000000000000000000
      00000000000328282879505050E9535454F7575757FE575757FE575757FE5757
      57FE575757FE575757FE575757FF575757FD545454F8535353F4393939AA0606
      0614000000000000000000000000000000000000000000000000000000000B0B
      0B24535353F1515151EE202020640808081C0000000000000000050505103A3A
      3AA72F2F2F900000000000000000000000020B0B0B2221212164565656FB4C4C
      4CDF1C1C1C570000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000215151540454545CB575757FE5757
      57FE575757FE575757FD454545CD1B1B1C560101010400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0104585858FF393939AC00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000272727724A4A
      4AD92D2D2D8B0000000000000000000000000000000000000000000000000000
      000000000000000000013D3D3DB3575757FE585858FF585858FF4F4F4FE72929
      297F22222269474747D2575757FE585858FF585858FF4C4C4CDE0B0B0B240000
      0000000000000000000000000000000000000000000000000000000000001616
      1641575757FE414141C300000000000000000000000000000000000000000000
      00012B2B2B800303030D000000000000000000000000000000002E2E2E865555
      55F73333339A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002C2C2C80575757FE4B4B4BDC2626
      2674252525714B4B4BDD575757FD303030910000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0104585858FF444444CE0303030B000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000B0B0B235656
      56F9323232950000000000000000000000000000000000000000000000000000
      000000000000010101044B4B4BDD505050EB545454F6565656FB272727760000
      00000000000010101032545454F7575757FD4E4E4EE5515151EC141414410000
      0000000000000000000000000000000000000000000000000000000000001111
      1134555555F84D4D4DE416161645060606140303030C00000000000000000000
      00000000000000000000000000000000000000000000000000001F1F1F5C5757
      57FE3B3B3BB00000000000000000000000000000000000000000000000000000
      000231313192414141C32424246E0D0E0E2C454545CB545454F61E1E1E5D0000
      00000000000016161645575757FE464646CE0F0F0F2F222222633F3F3FBA3838
      38A7020202080000000000000000000000000000000000000000000000000000
      0000575757FC585858FF585858FF505050EB2222236B00000000000000000000
      00000000000000000000000000000000000000000000000000003030308E5252
      52EC2B2B2B860000000000000000000000000000000000000000000000000000
      000000000000000000003D3D3DB6484848D54E4E4EE5565656FB1B1B1B530000
      00000000000008080819525252F1565657FD424242C44D4D4DE20808081B0000
      0000000000000000000000000000000000000000000000000000000000000000
      00053F3F3FB8575757FE535353F34D4D4DE42929297E00000000000000000000
      00000000000000000000000000000000000000000000000000003535359C5656
      56FB3636369F0000000000000000000000000000000000000000000000000202
      02094C4C4CDE575757FE4D4D4DE23535359C4B4B4BD8545454F61313133A0000
      0000000000000A0A0A21565656FC4A4A4AD9313131924A4A4ADA575757FE4B4B
      4BDC0808081B0000000000000000000000000000000000000000000000000000
      000016161642545454F2585858FF4D4D4DE21010103500000000000000000000
      0000000000000000000012121239212121680A0A0A202D2D2D87575757FE4C4C
      4CE20E0E0E2D0000000000000000000000000000000000000000000000000000
      000000000000000000054F4F4FEB575757FD585858FF585858FF444444C80B0B
      0B22050505102F2F2F8B575757FE585858FF585858FF525252F1171717490000
      0000000000000000000000000000000000000000000000000000000000000000
      00000404040E373737A1555555F8545454F61C1C1C5700000000000000000000
      000000000000000000001313133C272727771818184D32323293575757FE5252
      52F0171717490000000000000000000000000000000000000000000000000000
      00000C0C0C271313133C00000002000000003A3A3AAC565656FA373737A40707
      071A0505051133333397575757FE3D3D3DB60101010500000000101010320D0D
      0D2A000000000000000000000000000000000000000000000000000000000000
      00000000000000000005444444C84B4B4BDF0B0B0B2500000000000000000000
      00000000000000000000373737A0515151EB545454F6585858FF585858FF2929
      297E000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F2F3B3B3BAF555554F9575757FF575757FD575757FE5353
      53EF4F4F4FE7575757FD575757FD575757FC565656FC474747D11B1B1B510000
      0003000000000000000000000000000000000000000000000000000000000000
      00000000000000000001434343C4545454F21C1C1C5900000000000000000000
      000000000000000000003030308E555555F9565656FA575757FE555555F82B2B
      2B82000000030000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000012121239545454F6555555F74B4B
      4BDD4E4E4EE3565656FC535353F41919194F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000020202061545454F4393939AA01010106000000000000
      0000000000001818184C585858FE585858FF383838A72C2C2C820B0B0B220000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303030B474747D0575757FC4D4D4DE5575757FD4D4D4DE44B4B4BDD5858
      58FF585858FF515153EF474747D1575757FE515151EC575757FD545454F60F0F
      0F2F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031313191555555F8363636A101010104000000000000
      00000000000005050510494949D6565656FA484848D33A3A3AA7171717480000
      0003000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001414143D3C3C3CB321212165494949D75757
      57FE575757FE4D4D4DE2212121663E3E3EBA1818184B00000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000003585858FF494949D731313198000000000000
      000000000000535353EF585858FF515151EC0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000126262670353535A01C1C1C57525252F2474747D1545454F55757
      57FF575757FD575757FE464646CE535353F52E2E2E8B27272779363636A10505
      0510000000000000000000000000000000000000000000000000000000000000
      000000000000000000000C0C0C27535353EF4F4F4FE82D2D2D8B0E0E0E2D0505
      05120F0F0F303E3E3EB8575757FE474747D10606061400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000383838A5565656FB383838A300000000000000011919
      194E21212268010101040000000032323294555555F83C3C3CB4000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000575757FD585858FF4A4A4AD52C2C2C8A2C2C
      2C883C3C3CB5585858FF575757FC3A3A3AB00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001000000020C0C0C2627272777545454F75151
      50EE535353F5525252F23D3D3DB60C0C0C260303030B00000000000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001F1F1F5B545454F5545454F4444444CA4848
      48D44F4F4FE8575757FE515151EC151515420000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000484848D34F4F4FE81010103300000000000000002E2E
      2E863333339800000000000000000C0C0C274F4F4FE74D4D4DE0010101060000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000909091D32323293585858FF5858
      58FF575757FE1E1E1E5C00000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000020202091212123C4444
      44C8525252F11919194D08080819000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001414143E414141BF575757FD5757
      57FE555555F73B3B3BAE0F0F0F30000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000070707180B0B0B2500000000000000000303030A4747
      47D2494949D80606061300000000000000000B0B0B250909091F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404110909
      091E0303030A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000020202084040
      40BE4E4E4EE70C0C0C2700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101050606
      0615000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000050505114C4C
      4CDF515151EC0808081C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000707
      07180C0C0C270000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000A0A
      0A210C0C0C270000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000B0B0B232525257121212165212121652121
      21652121216521212165212121652222226A0808081D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006060613393939AA2929
      297D0303030B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000303030D474747D1585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF535353EF3131319400000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003030308E585858FF5555
      55F8484848D41C1C1C5701010106000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101032555555F7585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF3D3D3DB704040411000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B1B1B50575757FD5858
      58FF575757FE545454F23C3C3CB40D0D0D2B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000303030A1D1D1D583D3D3DB5575757FE585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF4A4A4AD5303030941717174A0202
      0208000000000000000000000000000000000000000000000000000000000000
      0000000000020808081906060616000000010000000000000000000000000000
      000000000000000000000000000000000000000000000303030D0808081C0303
      030A000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000303030C1313133B2C2C2C843535359B3131
      3192202020620808081B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000808081A515151EB5858
      58FF585858FF585858FF565656FB2828287C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      05123E3E3EB7575757FE585858FF585858FF585858FF575757FE575757FE5858
      58FF575757FE575757FE585858FF585858FF585858FF585858FF4A4A4ADA2C2C
      2C870303030C0000000000000000000000000000000000000000000000000000
      00002525256D525252F2494949D9101010330000000000000000000000000000
      00000000000000000000000000000000000008080819494949D2535353F32F2F
      2F90000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002424246A575757FD585858FF575757FE5757
      57FE575757FE4F4F4FE82424246E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010106464646CD5858
      58FF585858FF585858FF585858FF2D2D2D870000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      39A8585858FF585858FF585858FF585858FF585858FF404040BE0F0F0F2F4444
      44C6323232961414143F575757FD585858FF585858FF585858FF585858FF4A4A
      4AD52424246E0000000000000000000000000000000000000000000000000000
      00003636369E585858FF515151ED3434349D2121216521212165212121652121
      2165212121652121216521212165212121652D2D2D88585858FF585858FF3838
      38A7000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000020202093D3D3DB6575757FE4D4D4DE42222
      22693F3F3FBC545454F6575757FE2D2D2D880000000300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000101010431313191575757FC5858
      58FF585858FF585858FF585858FF323232970000000200000000000000000000
      00000000000000000000000000000000000000000000000000000A0A0A1F5757
      57FC585858FF585858FF585858FF585858FF585858FF4D4D4DE12828287C0505
      051205050510383838A5575757FE585858FF585858FF585858FF585858FF5757
      57FC3D3D3DB60101010600000000000000000000000000000000000000000000
      00003636369E585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF3838
      38A7000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B25545454F5545454F61010
      1034010101072222226A545454F5555555F81919194F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000505
      05121A1A1A510606061600000000010101042F2F2F8B575757FE585858FF5858
      58FF585858FF585858FF585858FF3434349B0101010700000000000000000000
      00000000000000000000000000000000000000000000000000001B1B1B525757
      57FE585858FF585858FF585858FF585858FF585858FF585858FF4D4D4DE12B2B
      2B85393939A8575757FE585858FF585858FF585858FF585858FF585858FF5858
      58FF434343C70A0A0A2000000000000000000000000000000000000000000000
      00003636369E585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF3838
      38A7000000050000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003A3A3AAD575757FD2A2A
      2A7D00000000000000022E2E2E86575757FE424242C500000002000000000000
      0000000000000000000000000000000000000000000000000000000000014545
      45CB585858FF555555FA404040BF3C3C3CB2585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF444444C81010103200000000000000000000
      0000000000000000000000000000000000000000000000000000161616405757
      57FE585858FF585858FF575757FD4E4E4EE5434343C3555555F6585858FF5858
      58FF585858FF575757FD505050E9434343C3545454F4585858FF585858FF5858
      58FF464646CE0505051000000000000000000000000000000000000000000000
      00003636369E585858FF4B4B4BDC323232944F4F4FE6585858FF585858FF5858
      58FF585858FF585858FF585858FF4C4C4CDF3434349B4B4B4BDC585858FF3838
      38A7000000050000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023232369575757FD3B3B
      3BAE000000000000000006060613565656FA505050EB0B0B0B25000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3EB8585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF575757FC474747D21313133E000000000000
      0000000000000000000000000000000000000000000000000000000000054D4D
      4DE0585858FF585858FF434343C70B0B0B22000000021B1B1B51555555F75858
      58FF575757FE444444C60D0D0D2B0000000218181849545454F4585858FF5555
      55F83434349D0000000000000000000000000000000000000000000000000000
      00003636369E575757FD27272778000000002C2C2C84585858FF585858FF5858
      58FF585858FF585858FF585858FF2E2E2E8D0000000326262672575757FE3838
      38A7000000050000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001919194D575757FE4141
      41BF000000000000000000000000505050EB555555F712121239000000000000
      0000000000000000000000000000000000000000000000000000000000001010
      1032535353F3585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF575757FD494949D91414143D0000
      0000000000000000000000000000000000000000000000000000000000002C2C
      2C81585858FF575757FD2828287B0000000000000000010101044C4C4CDD5858
      58FF545454F62F2F2F8C000000000000000001010105454545C9585858FF4B4B
      4BD81A1A1A520000000000000000000000000000000000000000000000000000
      00003636369E585858FF464646D0272727754A4A4AD7585858FF585858FF5858
      58FF585858FF585858FF585858FF474747D12A2A2A7D454545C9585858FF3838
      38A7000000050000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001B1B1B53575757FE3F3F
      3FBA000000000000000000000000535353F3535353F310101035000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00002F2F2F8B585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF434343C80E0E
      0E2D000000000000000000000000000000000000000000000000000000002828
      2877585858FF575757FE3434349D05050510000000000D0D0D29525252F05858
      58FF575757FD373737A406060616000000000909091F505050E8585858FF4747
      47D01818184B0000000000000000000000000000000000000000000000000000
      00003434349A585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF575757FE3838
      38A5000000030000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002C2C2C84575757FD3434
      349D00000000000000001313133A575757FE4C4C4CDF06060615000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000070707184D4D4DE0585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF555555F73939
      39AB0303030D0000000000000000000000000000000000000000000000002828
      2877585858FF585858FF525252EC3E3E3EB9313131934B4B4BDB575757FE5858
      58FF585858FF515151E93D3D3DB731313192484848D4585858FF585858FF4747
      47D01818184B0000000000000000000000000000000000000000000000000000
      00001D1D1D57575757FE4B4B4BDD3B3B3BB03B3B3BB03B3B3BB03B3B3BB03B3B
      3BB03B3B3BB03B3B3BB03B3B3BB03B3B3BB03B3B3BB04A4A4ADA4E4E4EE52929
      297C000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000002484848D3565656FA1E1E
      1E5E0000000005050512434343C4565656FB3232329700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001B1B1B51424242C0464646CE4A4A4ADB505050E9575757FC5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF4E4E
      4EE31F1F1F620000000000000000000000000000000000000000000000002727
      2773585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF4949
      49D2171717490000000000000000000000000000000000000000000000000000
      000006060616515151E93F3F3FBD0303030C0000000000000000000000000000
      00000000000000000000000000000000000000000003414141BB464646CD1313
      133E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E1E1E5C575757FE4C4C4CE10707
      071A0E0E0E2E414141BF575757FE494949D90B0B0B2400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000001D1D1D565454
      54F6585858FF585858FF585858FF585858FF575757FD525252F1575757FE5757
      57FC3E3E3EBA0000000500000000000000000000000000000000000000001A1A
      1A4F575757FE585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF4444
      44C60F0F0F300000000000000000000000000000000000000000000000000000
      0000000000003A3A3AA7505050E9121212390000000000000000000000000000
      0000000000000000000000000000000000000B0B0B22545454F4383838A50404
      040E000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000E0E0E2D505050EA585858FF535353F54C4C
      4CDF575757FE575757FD494949D91313133A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000012525
      256D565656FB585858FF585858FF585858FF454545C91E1E1E5F343434985858
      58FF444444C81515154200000000000000000000000000000000000000000909
      091E525252EC585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF575757FD3939
      39A8010101060000000000000000000000000000000000000000000000000000
      0000000000001C1C1C53545454F52C2C2C870404041104040411040404110404
      04110404041104040411040404110404041127272772525252EC252525720000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001A1A1A50464646CC535353EF575757FE5656
      56FC4A4A4ADC3434349B0C0C0C26000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000027272776565656F9585858FF585858FF484848D41B1B1B553636369E5858
      58FF4D4D4DE12121216700000000000000000000000000000000000000000000
      00003434349A575757FE585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF4F4F4FE71E1E
      1E5E000000000000000000000000000000000000000000000000000000000000
      00000000000002020209535353EF535353F34D4D4DE14D4D4DE14D4D4DE14D4D
      4DE14D4D4DE14D4D4DE14D4D4DE14D4D4DE1535353F3464646CE1414143D0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101040D0D0D2A141414411313
      133A0707071A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A1A1A4F4F4F4FE7585858FF585858FF585858FF585858FF5858
      58FF555555F62424246F00000000000000000000000000000000000000000000
      0000070707174B4B4BDC585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF555555F73434349D0202
      0209000000000000000000000000000000000000000000000000000000000000
      0000000000000000000017171746393939AA3C3C3CB33C3C3CB33C3C3CB33C3C
      3CB33C3C3CB33C3C3CB33C3C3CB33C3C3CB33B3B3BB02323236C000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000909091D393939A4525252F0575757FE585858FF5858
      58FF575757FC2828287A00000000000000000000000000000000000000000000
      0000000000000F0F0F2E4C4C4CDD585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF555555F93C3C3CB4060606150000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000B0B0B24212121643434349B3E3E
      3EB8444444C62121216500000000000000000000000000000000000000000000
      000000000000000000000808081A373737A0575757FC575757FE585858FF5858
      58FF585858FF585858FF575757FE515151EE2D2D2D860404040F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000909091E262626703B3B3BAF4343
      43C4434343C4393939AA2424246A080808190000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000303030B0B0B0B240F0F0F2F0F0F0F2F0F0F0F2F0F0F
      0F2F0F0F0F2F0F0F0F2F0F0F0F2F0F0F0F2F0F0F0F2F0E0E0E2E0909091F0101
      0106000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001313133B484848D4575757FC585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF575757FE535353F43535
      35A00808081A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000060606144E4E4EE5585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5454
      54F22C2C2C8700000000000000000000000000000000000000000303030C2A2A
      2A79393939AB1C1C1C56424242BE424242C0424242C0424242C0424242C04242
      42C0424242C0424242C0424242C0424242C0424242C03E3E3EB7202020623A3A
      3AA9313131920B0B0B2400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00001313133B575757FE585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5757
      57FD3C3C3CB50000000000000000000000000000000001010104383838A35757
      57FE494949D82B2B2B80575757FE585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF4F4F4FE42A2A2A815252
      52EC565656FC3C3C3CB406060615000000000000000000000000000000000000
      0000000000000B0B0B231A1A1A511B1B1B531B1B1B531B1B1B531B1B1B531B1B
      1B531B1B1B531B1B1B531B1B1B531B1B1B531B1B1B531B1B1B53151515430303
      030A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000012121235020202090000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000015151541585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5757
      57FE3E3E3EB8000000000000000000000000000000000808081B555555F75858
      58FF494949D82B2B2B80575757FE585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF4F4F4FE42A2A2A815252
      52EC585858FF484848D417171748000000000000000000000000000000000000
      00000909091D525252EC585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF4F4F4FE72222
      2269000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001B1B1B55575757FC3434349B0101
      0106000000000000000000000000000000002626267011111136000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F0F0F30575757FE585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5757
      57FC373737A8000000000000000000000000000000000909091E575757FD5858
      58FF494949D82B2B2B80575757FE585858FF585858FF585858FF484848D52E2E
      2E892B2B2B814D4D4DE1585858FF585858FF585858FF4F4F4FE42A2A2A815252
      52EC585858FF484848D31B1B1B54000000000000000000000000000000000000
      00000F0F0F2E575757FE585858FF585858FF585858FF575757FD424242C42D2D
      2D832B2B2B813B3B3BAF585858FF585858FF585858FF585858FF525252ED2929
      297D000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000D0D0D2B505050EB585858FF515151ED0F0F
      0F3000000000000000000000000016161645555555F9535353F51F1F1F5F0000
      0000000000000000000000000000000000000000000000000000000000000000
      00000808081A545454F2585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5353
      53F32F2F2F90000000000000000000000000000000000909091E575757FD5858
      58FF494949D82B2B2B80575757FE585858FF585858FF585858FF3F3F3FBD0303
      030E00000000434343C1585858FF585858FF585858FF4F4F4FE42A2A2A815252
      52EC585858FF484848D31B1B1B54000000000000000000000000000000000000
      00000F0F0F2E575757FE585858FF585858FF585858FF565656FB2E2E2E8B0000
      00000000000018181849585858FF585858FF585858FF585858FF525252ED2929
      297D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000006060616444444C7585858FF585858FF494949D60303
      030A000000000000000000000002444444C6585858FF575757FE3030308F0000
      0000000000000000000000000000000000000000000000000000000000000000
      000001010106444444C6585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF4F4F
      4FE61E1E1E60000000000000000000000000000000000909091E575757FD5858
      58FF494949D82B2B2B80575757FE575757FE575757FE575757FE404040C00303
      030E00000000434343C1575757FE575757FE575757FE4F4F4FE42A2A2A815252
      52EC585858FF484848D31B1B1B54000000000000000000000000000000000000
      00000F0F0F2E575757FE585858FF585858FF585858FF565656FB2D2D2D8B0000
      00000000000018181849585858FF585858FF585858FF585858FF525252ED2929
      297D000000000000000000000000000000000000000000000000000000000000
      0000000000000F0F0F304A4A4AD5575757FE585858FF585858FF424242C20000
      000500000000000000001C1C1C54575757FE585858FF555555F7202020640000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001C1C1C55575757FE585858FF585858FF585858FF575757FD5555
      55F9505050E9515151EE575757FE585858FF585858FF585858FF575757FE3F3F
      3FBA0909091E000000000000000000000000000000000909091E575757FD5858
      58FF494949D82B2B2B80575757FE464646CE252525731E1E1E5E1B1B1B540000
      000300000000101010331E1E1E5E20202064525252EC4F4F4FE42A2A2A815252
      52EC585858FF484848D31B1B1B54000000000000000000000000000000000000
      00000F0F0F2E575757FE585858FF585858FF585858FF565656FB2D2D2D8B0000
      00000000000018181849585858FF585858FF585858FF585858FF525252ED2929
      297D000000000000000000000000000000000000000000000000000000000000
      00012424246B535353F3585858FF585858FF585858FF585858FF575757FD3737
      37A0010101050404040E494949D7585858FF585858FF505050EB0E0E0E2D0000
      0000000000000000000000000000000000000000000000000000070707182A2A
      2A7D33333396333333993F3F3FBC555555F9575757FE4F4F4FE8363636A53535
      359C373737A4373737A031313192444444C8575757FC575757FC494949D83838
      38A734343499313131931414143F00000000000000000909091E575757FD5858
      58FF494949D82B2B2B80575757FE454545CA0B0B0B2500000000000000000000
      00000000000000000000000000000303030A4D4D4DE14F4F4FE42A2A2A815252
      52EC585858FF484848D31B1B1B54000000000000000000000000000000001A1A
      1A4D3B3B3BAA575757FE585858FF585858FF585858FF565656FB2D2D2D8B0000
      00000000000018181849585858FF585858FF585858FF585858FF555555F64646
      46CC2B2B2B800000000300000000000000000000000000000000000000000000
      0005434343C7575757FE585858FF575757FE575757FE585858FF585858FF5757
      57FD3333339928282878575757FE585858FF585858FF4B4B4BDF000000030000
      00000000000000000000000000000000000000000000050505104A4A4AD75858
      58FF585858FF575757FD4A4A4ADC3B3B3BB0383838A9282828784C4C4CDE5858
      58FF585858FF585858FF565656FC393939AA2323236C3B3B3BB1444444C65656
      56FA585858FF585858FF2B2B2B7F00000000000000000909091E575757FD5858
      58FF494949D82B2B2B80575757FE464646CD1818184B0D0D0D2B0B0B0B240000
      000000000000060606140D0D0D2B121212354F4F4FE84F4F4FE42A2A2A815252
      52EC585858FF484848D31B1B1B54000000000000000000000000000000003636
      369F585858FF585858FF585858FF585858FF585858FF565656FB2D2D2D8B0000
      00000000000018181849585858FF585858FF585858FF585858FF585858FF5858
      58FF444444C60606061500000000000000000000000000000000000000000000
      00000B0B0B23414141BF373737A62525256D494949D6575757FE585858FF5858
      58FF575757FD565656FB585858FF585858FF575757FE393939AB000000000000
      000000000000000000000000000000000000000000000909091E575757FC5858
      58FF585858FF585858FF585858FF555555F7444444CE525252EE585858FF5858
      58FF585858FF585858FF585858FF545454F53D3D3DB6535353F1585858FF5858
      58FF585858FF585858FF2B2B2B7F00000000000000000909091E575757FD5858
      58FF494949D82B2B2B80575757FE585858FF585858FF585858FF434343C90303
      030D00000000434343C1585858FF585858FF585858FF4F4F4FE42A2A2A815252
      52EC585858FF484848D31B1B1B54000000000000000000000000000000003636
      369F585858FF585858FF585858FF585858FF585858FF565656FB2D2D2D8B0000
      00000000000018181849585858FF585858FF585858FF585858FF585858FF5858
      58FF444444C60606061500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808081B4A4A4AD5575757FE5858
      58FF585858FF585858FF585858FF585858FF555555F72424246F000000000000
      000000000000000000000000000000000000000000000909091D565656F95858
      58FF585858FF585858FF585858FF4D4D4DE0464646CF575757FE585858FF5858
      58FF585858FF585858FF585858FF585858FF464646CC4B4B4BDB585858FF5858
      58FF585858FF585858FF2B2B2B7F00000000000000000909091E575757FD5858
      58FF494949D82B2B2B80575757FE585858FF585858FF585858FF3F3F3FBD0303
      030E00000000434343C1585858FF585858FF585858FF4F4F4FE42A2A2A815252
      52EC585858FF484848D31B1B1B54000000000000000000000000000000003636
      369F585858FF585858FF585858FF585858FF585858FF565656FB2D2D2D8B0000
      00000000000018181849585858FF585858FF585858FF585858FF585858FF5858
      58FF444444C60606061500000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000B0B0B234C4C4CDE5858
      58FF585858FF585858FF585858FF585858FF525252F115151542000000000000
      0000000000000000000000000000000000000000000006060615505050EA5858
      58FF585858FF585858FF585858FF454545CA4E4E4EE3585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF4D4D4DE2434343C3585858FF5858
      58FF585858FF585858FF2B2B2B7F00000000000000000909091E575757FD5858
      58FF494949D82B2B2B80575757FE585858FF585858FF585858FF484848D52323
      2368212121604B4B4BD8585858FF585858FF585858FF4F4F4FE42A2A2A815252
      52EC585858FF484848D31B1B1B54000000000000000000000000000000002E2E
      2E88575757FE575757FE575757FE575757FE585858FF575757FC3D3D3DB62121
      2160212121603131318D585858FF585858FF575757FE575757FE575757FE5757
      57FD464646CE0303030D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000505051231313191535353F15858
      58FF585858FF585858FF585858FF585858FF4B4B4BDE0A0A0A20000000000000
      0000000000000000000000000000000000000000000000000001393939A85656
      56FA4D4D4DE43D3D3DB533333398353535A0484848D3585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF4B4B4BD83333339A3A3A3AAE3434
      349A434343C3575757FC2A2A2A7C00000000000000000909091D565656FA5858
      58FF494949D82B2B2B80575757FE585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF4F4F4FE42A2A2A815252
      52EC585858FF494949D21818184D000000000000000000000000000000000000
      000206060616070707171818184B515151E9585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF555555F92E2E2E8D060606180707
      07170404040F0000000000000000000000000000000000000000000000000000
      000000000000000000000404041128282878515151EE585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF575757FD373737A0010101060000
      0000000000000000000000000000000000000000000000000000060606152424
      24702424246E424242C24C4C4CDD393939A830303091575757FE585858FF5858
      58FF585858FF585858FF585858FF575757FE3F3F3FBD2B2B2B81484848D34A4A
      4ADA353535A01B1B1B541313133B000000000000000001010107404040BC5757
      57FE494949D82B2B2B80575757FE585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF4F4F4FE42A2A2A815252
      52EC575757FC3F3F3FBC0A0A0A20000000000000000000000000000000000000
      000000000000000000003F3F3FB7505050E83535359E2C2C2C87474747D35858
      58FF565656FB484848D8323232952F2F2F8D535353EF454545C90B0B0B250000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000051F1F1F5D4B4B4BDD575757FE585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF575757FD323232970101
      0106000000000000000000000000000000000000000000000000000000001515
      153F545454F4585858FF585858FF575757FD494949D74C4C4CDE575757FE5858
      58FF585858FF585858FF585858FF4D4D4DE0454545CF575757FD585858FF5858
      58FF565656FC3A3A3AAE0303030E000000000000000000000000070707183939
      39AA494949D922222269545454F8555555F9575757FD525252F2525252F45252
      52F4525252F4525252F4555554F8565656FB515151EC4D4D4DE52929297E4B4B
      4BDD3E3E3EB91313133E00000000000000000000000000000000000000000000
      000000000000000000004B4B4BDA464646CC101010341414143E535353F34747
      47D14C4C4CDF535353F12D2D2D8600000001444444C8424242C2171717490000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F0F0F2F555555F9575757FE585858FF585858FF585858FF575757FE5656
      56FA525252F3414141C14B4B4BDD575757FE585858FF585858FF565656F92020
      2062000000000000000000000000000000000000000000000000000000003838
      38A3585858FF585858FF585858FF585858FF4F4F4FE8272727773A3A3AA75555
      55F9585858FF555555F74B4B4BDF262626744B4B4BDB585858FF585858FF5858
      58FF585858FF494949D615151542000000000000000000000000000000000000
      000000000000000000000000000027272774565656F92828287A070707170707
      071707070717070707172424246C545454F42A2A2A8300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000003131318F565656FC4A4A4AD9535353F14B4B4BDC2525
      25730B0B0B234F4F4FE5545454F5494949D6565656FA3E3E3EBA070707170000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000121212167555555F9545454F84D4D4DE03D3D3DB7262626761616
      16440303030B000000000707071A484848D5575757FE585858FF585858FF4545
      45CD0303030A0000000000000000000000000000000000000000000000003939
      39A6585858FF585858FF585858FF585858FF525252EC21212168010101040D0D
      0D2A1D1D1D591919194F0909091F010101074B4B4BDA585858FF585858FF5858
      58FF585858FF474747D01818184C000000000000000000000000000000000000
      00000000000000000000000000002525256D575757FE535353F4505050EA5050
      50EA505050EA505050EA545454F2535353F12A2A2A8000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000404040E3636369F525252EC494949D72B2B2B800303
      030A000000001414143E474747D0515151E93F3F3FBD1919194D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000116161644101010350606061300000002000000000000
      00000000000000000000000000000A0A0A21434343C1575757FD585858FF4949
      49D70808081D0000000000000000000000000000000000000000000000002020
      2061575757FD585858FF585858FF575757FE464646D011111136000000000000
      0000000000000000000000000000000000002E2E2E87575757FE585858FF5858
      58FF575757FE3C3C3CB40B0B0B22000000000000000000000000000000000000
      000000000000000000000000000006060616393939A8464646D0464646D04646
      46D0464646D0464646D0464646D03A3A3AAD1313133A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010707071A0707071A000000010000
      00000000000000000000010101070B0B0B220303030D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030D21212165373737A42626
      2675000000030000000000000000000000000000000000000000000000000000
      00012D2D2D83525252F0525252F2494949D82020206400000000000000000000
      000000000000000000000000000000000000020202093535359B535353F55252
      52F2424242C41818184D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000010707071808080819070707170000000100000000000000000000
      00000000000000000000000000000000000000000000000000020707071A0808
      0819060606140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000900000000100010000000000C00600000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF000000000000FFFFFFFF
      FFFF000000000000FFFFFFFFFFFF000000000000C03E3FF7FFFF000000000000
      C03E1FE3FFFF000000000000E03E0FE1FFFF000000000000E00207E0000F0000
      00000000E00307E00007000000000000E00383E00007000000000000C23FC3E0
      0007000000000000C343C1E00007000000000000C3C3E1E00007000000000000
      C3C3E1E00007000000000000C3C243E00007000000000000C3C243E000070000
      00000000E1C203E00007000000000000E04207E00007000000000000F00207E0
      0007000000000000F83E07E00007000000000000FC3E03F00007000000000000
      FF3E03F8001F000000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFF0000
      00000000FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
      FFFFF8000FFFE3FFFE003FFFFFFFF0000FFF007FF8001FFFFFFFF0000FFC003F
      F0000FF8000FF8000FF8000FE07E07F0000FFFC3FFF0180FE0FF83F0000FFFC1
      FFE07F07C1FE03F0180FFF81FFE0FF83C3F801F0180FFF00FFC1FFC383F021F0
      180FFF007FC3FFC387C061E01803FE007FC3C3C187C1E1E01803FE003FC3C3E1
      87C3E1E01803FC003FC3C3E187C3E1E01803FC001FC3C3C383C3E1E00003FC00
      1FC3C3C3C3C3C1E00007FC181FE1C383C1C383FC001FFC001FE0C307E0C707FC
      001FFC001FE0C307F03C07FC001FFC003FF0C30FF0000FFC083FFC003FF9C39F
      FC001FFE1C7FFE007FFFC3FFFE007FFFFFFFFF80FFFFC3FFFFC1FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      81FFFFFFFFFFFFFFFFFFFFFE007FFFFFFFFF80FFFFFFFFFC001FFC003FFC003F
      F8FF0FF0000FFC003FF8001FF07F0FF07E07F8001FF0180FF03E0FE0FE07E000
      07F07F07F8180FC1F803E00007E0FF87FC083FC3F803E18007E1FFC3FE007FC3
      F061FF0007E31843FF007FC7C0E1F01807C21843FF81FF87C1E1E01E07C21863
      FF80FFC783E1E00007C11CE3FE007FC207E1E00007C0F803FE003FC20FC1E000
      07E06003FC181FC01FC3E00007E00007F01C0FE03F83E00007E00007F07E0FE0
      7F07E00007F00007F0FF0FF01C0FF8001FF8000FF8FF9FF8000FFC003FFC001F
      FFFFFFFC003FFC003FFE007FFFFFFFFF007FFFFFFFFFC3FFFFFFFFFFF7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFDFFFFFFFFFFFFFFFFFFFFFFF8FFFFFFFFFFF38FFFFC3FFFFC3FFFFC3FF
      FE38FFFFC3FFFFC1FFFFC3FFFF00FFFF81FFFF81FFFC423FF8001FF8000FF002
      0FFC661FF0000FF0000FF00607FC003FF1E787F0000FE0C607FE007FE3FFC7F8
      001FE3E3C7FF00FFE1FFC7F8181FE07FC7E01807F07FC7FC181FE07FC7E01807
      F07C07F8001FF07C07F1004FF87C0FF8000FF87C07FF00FFFC381FF0000FFC38
      0FFE003FFC38FFF0000FFC007FFC421FFE00FFFC005FFE00FFFC661FFF01FFFF
      81FFFF01FFFCC33FFFC7FFFFC3FFFFC7FFFFC3FFFFFFFFFFE3FFFFFFFFFFE3FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFE
      007FFFFFFFFFFFFFFF87FFFC003FFFFFFFFFFFFFFF81FFFC003FFFFFFFFFFFFF
      FF80FFF0000FF0FF8FFE03FFFF80FFE00007F0FF0FFE01FFFF80FFE00007F000
      07FE007FFF007FC00003F00007FF007FE2007FC00003F00007FF883FC0007FC0
      0003F00007FF8C3FE0003FC00007F10007FF8E3FE0001FE18307F00007FF8E3F
      F0000FE08107F00007FF8C3FF00007E00007F0000FFF087FF80007E00007F0FF
      0FFF007FFFC003E00007F8FF0FFE00FFFFC003E00007F8001FFE01FFFFF003F0
      000FF8001FFF07FFFFF803F0000FFC003FFFFFFFFFFC03F8001FFFFFFFFFFFFF
      FFFF03FC003FFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFE7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC000FFF
      FFFFFFFFFFFFFFFFF80007FFFFFFFFFFFFFFFFFFF00007C00003FFFFFFFFFFFF
      F00007800001F8000FFF9FFFF00007800001F0000FFF0F3FF00007800001F000
      0FFE0E1FF00007800801F0180FFC0C1FF00007800801F0180FF80C1FF8000780
      0801F0180FE0001FC00001807E01E01803E0001F800001801801E01803F0003F
      800001800801E01803FF003F800001800801E01803FF803F800001800001E000
      03FF003F800001800001E00007FC001FC00001800001FC001FF0000FE00001C0
      0003FC001FF0000FE00001FE007FFC001FF00407E00001FE007FFC083FF83E07
      E03F01FE007FFE1C7FFFFF07E07F03FFFFFFFFFFFFFFFFFFF07F87FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object PopupMenuAirdrop: TPopupMenu
    Images = ImageListMed
    Left = 1091
    Top = 227
    object MenuItemаAirdropMax: TMenuItem
      Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1100' '#1084#1072#1089#1089#1086#1074#1099#1081' '#1072#1080#1088#1076#1088#1086#1087
      ImageIndex = 3
      OnClick = MenuItemаAirdropMaxClick
    end
  end
  object ColorDialog: TColorDialog
    Color = 2928940
    CustomColors.Strings = (
      'ColorA=A2FF01'
      'ColorB=0099CC'
      'ColorC=FFFFFFFF'
      'ColorD=FFFFFFFF'
      'ColorE=FFFFFFFF'
      'ColorF=FFFFFFFF'
      'ColorG=FFFFFFFF'
      'ColorH=FFFFFFFF'
      'ColorI=FFFFFFFF'
      'ColorJ=FFFFFFFF'
      'ColorK=FFFFFFFF'
      'ColorL=FFFFFFFF'
      'ColorM=FFFFFFFF'
      'ColorN=FFFFFFFF'
      'ColorO=FFFFFFFF'
      'ColorP=FFFFFFFF')
    Left = 983
    Top = 371
  end
  object PopupMenuBan: TPopupMenu
    Images = ImageListMed
    Left = 1095
    Top = 379
    object MenuItemExeSlay: TMenuItem
      Caption = #1041#1072#1085' '#1085#1072' 1 '#1075#1086#1076' (slay)'
      ImageIndex = 13
      OnClick = MenuItemExeSlayClick
    end
  end
  object PopupMenuPlayer: TPopupMenu
    Left = 985
    Top = 224
  end
  object TimerHearthBeat: TTimer
    Enabled = False
    Interval = 400
    OnTimer = TimerHearthBeatTimer
    Left = 1081
    Top = 635
  end
  object ImageListState48: TImageList
    ColorDepth = cd32Bit
    Height = 48
    Width = 48
    Left = 984
    Top = 420
    Bitmap = {
      494C010103000800680030003000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000C00000003000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000080808192B2B2B8005050510000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000020101010400000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      0104010101020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000311111136454545CF575757FD393939AB0A0A0A210000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000303
      030C10101034212121652A2A2A7D2D2D2D842E2E2E892D2D2D832A2A2A7D1B1B
      1B570D0D0D2A0101010600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000002020208121212391D1D1D5A2929297A2C2C2C812E2E
      2E872D2D2D852A2A2A7D202020641313133A0202020900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000011111137424242C5575757FD585858FF565656FC3A3A3AAD0606
      0613000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000060606132C2C2C834242
      42C24A4A4AD9525252F2575757FD585858FF585858FF585858FF575757FD5050
      50EA4A4A4AD5424242BE1D1D1D5A0303030D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000111111384A4948DB515151EC565656FC575757FE5858
      58FF585858FF575757FD525252F14B4B4BDD424242BE2A2A2A7E0808081B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000909091F474747D1575757FD585858FF585858FF585858FF575757FD3636
      369F060606140000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C292C2C2C83525252EC585858FE5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF575757FE4A4A4AD92222226806060616000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C282B2B2B84444444CA555555FB5757
      57FE585858FF585858FF585858FF585858FF585858FF585858FF565656FA2727
      27760B0B0B240000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000031313
      133B474747D3575757FE585858FF585858FF585858FF585858FF585858FF5757
      57FD3B3B3BB10B0B0B2500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000116161644434343C8575757FD585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF575757FD373737A40F0F0F300000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000010D0D0D2A323232954D4D
      4DE2565656FC585858FF585858FF585858FF585858FF585858FF585858FF5656
      56FB434343C51818184B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001E1E
      1E5C2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2E2E2E874646
      46CC575757FD585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FD3D3D3DB52B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B2B7F2B2B
      2B7F2B2B2B7F1414143E00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000010101041F1F1F5F4A4A4ADB575757FE585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF565656FA454545CB1212
      1239000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000303030E1E1E
      1E5F4A4A4ADA575757FE585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FE4D4D4DE01B1B1B54000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003F3F
      3FBB575757FE585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FE2A2A2A7D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000126262674555555F8585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5454
      54F71313133A0000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E0E0E2E494949D8565656FC585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF535353F0272727760202020800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3DB8575757FE585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FD2929297C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1849535353F3585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF474747D01010103400000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A1A1A52494949D8575757FD585858FF585858FF585858FF5858
      58FF585858FF585858FF575757FE4C4C4CDF1B1B1B5200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3DB8575757FE585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FD2929297C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E0E0E2D4444
      44C6575757FE585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF565656FB393939A807070718000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000002020208272727764F4F4FE8575757FE585858FF585858FF5858
      58FF585858FF585858FF585858FF575757FE4B4B4BDD07070717000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3DB8575757FE585858FF585858FF585858FF585858FF585858FF575757FE5757
      57FE565656FC4E4E4EEA3C3C3CB5313131942C2C2C85333333983F3F3FBE5353
      53F5565656FB575757FE575757FE585858FF585858FF585858FF585858FF5858
      58FF575757FD2929297C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303030E3333339A5757
      57FD585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF565656FD2525256D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000303030D383838A5565656FA585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF383838A9030303080000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3DB8575757FE585858FF585858FF585858FF585858FF585858FF535353F44343
      43C8212121660101010600000000000000000000000000000000000000000707
      071A2929297D474747D0565656FA585858FF585858FF585858FF585858FF5858
      58FF575757FD2929297C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000015151543505050E95858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF4D4D4DE4040404110000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F0F0F33525252F1585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF4D4D4DE2171717490000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3DB8575757FE585858FF585858FF585858FF585858FF565656FA303030910C0C
      0C27000000010000000000000000000000000000000000000000000000000000
      000000000002111111373E3E3EBA565656FB585858FF585858FF585858FF5858
      58FF575757FD2929297C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000363636A1565656FB5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF575757FC2323236C0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000013D3D3DB6535353F3585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF565656FB323232940303
      030E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3DB8575757FE585858FF585858FF575757FE555555F8363636A1050505120000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000101010333E3E3EBA565656FA575757FE585858FF5858
      58FF575757FD2929297C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000303030A545454F6585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF424242BE0101010700000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001919194E535353F4575757FE5858
      58FF585858FF585858FF585858FF585858FF585858FF575757FE4B4B4BDB0F0F
      0F2E000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000031313133C4A4A
      49D9585757FF585858FF585858FF555555FA3B3B3BB20808081D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000012121239444444CA575757FC585858FF5858
      58FF575758FF3C3D3DB50B0B0B25000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001818184A555555F8585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF494949D71212123500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E0E0E2D474747D3565656FB5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF555555F91A1A
      1A4F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000012121239434343C85757
      57FD585858FF585858FF585858FF4C4C4CDF1C1C1C5700000001000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000022929297E525252EE585858FF5858
      58FF585858FF575757FD3B3B3BB0060606140000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002F2F2F90575757FD585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF525252F12121216400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000080808193A3A3AA9565656FA5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF575757FC2E2E
      2E8B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000808081D464646D2575757FD5858
      58FF585858FF585858FF575757FE404040BF0404041100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000707071A525252F3575757FE5858
      58FF585858FF585858FF575757FD3636369F0606061300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003D3D3DB5575757FE585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF565656FC2929297B00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000020202082E2E2E8A565656FC5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF575757FD4343
      43C3000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000211111136464646D0575757FE585858FF5858
      58FF585858FF585858FF545454F62B2B2B850000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003E3E3EBC535353F35858
      58FF585858FF585858FF585858FF575757FD3A3A3AAD0A0A0A21000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000001010104424240C0585757FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF575758FF2C2D2D8300000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000022B2B2B82565656FD5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF4A4A
      4ADB000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101034424242C4575757FD585858FF585858FF5858
      58FF585858FF585858FF525252F01F1F1F5F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000031313193535353EF5858
      58FF585858FF585858FF585858FF585858FF565656FC393939AB050505100000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000002020209424240C0575757FE585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF575757FE2D2D2D8701010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002828287B565656FD5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF4C4C
      4CE1000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000434343C8575757FD585858FF585858FF585858FF5858
      58FF585858FF585858FF535353F31919194D0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002B2B2B82535353F35858
      58FF585858FF585858FF585858FF585858FF585858FF575757FD2F2F2F8D0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000005434140C1585757FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF575758FF2B2C2D8400000002000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000012A2A2A81575757FE5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF4A4A
      4ADC000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000171717484B4B4BDE575757FE585858FF585858FF5858
      58FF585858FF585858FF525252F11D1D1D5B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003030308F525252F05858
      58FF585858FF585858FF585858FF585858FF575757FD474747D1080808190000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F3E3DB9575757FE585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF565757FD292A2A7D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101072D2D2D88565656FC5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF575757FE4444
      44CA000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000051B1B1B544B4B4BDF575757FE585858FF5858
      58FF585858FF585858FF535353F32828287B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003B3B3BB1535353F15858
      58FF585858FF585858FF585858FF575757FD444444C611111136000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000363636A1575757FE585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF545454F62424246E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050505123535359C565656FA5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF575757FC3636
      36A1000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000010101061818184D545454F7575757FE5858
      58FF585858FF585858FF575757FD3B3B3BB10101010400000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000010101064F4F4FEB575757FC5858
      58FF585858FF585858FF575757FE474747D21111113700000003000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001D1D1D5B555555F8585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF4C4C4CDD1515154200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000C0C0C29454545CB565656FB5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF565656FB1E1E
      1E5A000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001919194F4D4D4DE05757
      57FE585858FF585858FF585858FF484848D41616164500000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000121212166505050EB585858FF5858
      58FF585858FF575757FE484848D40909091E0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000006060614545454F6585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF424242C20303030E00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000016161645515151EF575757FD5858
      58FF585858FF585858FF585858FF585858FF585858FF575757FE4E4E4EE41010
      1033000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000010101071D1D1D5A4E4E
      4DE5585757FF585858FF585858FF555555F8353535A006060614000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C0C0C27404040C2565656FA585858FF5858
      58FF575758FF454646CD1313133C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000434343C7575757FC5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF575757FD303030910000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002F2F2F90545454F2585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF575757FD3A3A3AAD0707
      0718000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000001010107403F
      3FBD575757FE585858FF585858FF575757FE4F4F4FEA2424246E000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000050505122F2F2F90525252F0575757FE585858FF5858
      58FF575757FD2C2C2C8400000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000001919194E535353F35858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF525252F0080808190000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000808081D525252F2585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF515151EC1E1E1E5B0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3DB8575757FE585858FF585858FF585858FF585858FF555555F82424246E0606
      0613000000000000000000000000000000000000000000000000000000000000
      0000000000010808081C353535A0555555F9585858FF585858FF585858FF5858
      58FF575757FD2929297C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000070707183A3A3AAE5757
      57FD585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF575757FD2F2F2F8D000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000020202092E2E2E8E545454F6585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF3D3D3DB5040404110000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3DB8575757FE585858FF585858FF585858FF585858FF585858FF505050EA3636
      369F161616440101010400000000000000000000000000000000000000000404
      04111B1B1B553B3B3BB0545454F6585858FF585858FF585858FF585858FF5858
      58FF575757FD2929297C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000011919194D4D4D
      4DE1575757FE585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FE454545CD0D0D0D2B000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001919194D4A4A4AD9575757FE585858FF585858FF5858
      58FF585858FF585858FF585858FF575757FE565656FB1414143D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3DB8575757FE585858FF585858FF585858FF585858FF585858FF575757FE5656
      56FB4D4D4DE03A3A3AAF262626761B1B1B55171717471C1C1C592929297F4040
      40C14F4F4FE7565656FB575757FE585858FF585858FF585858FF585858FF5858
      58FF575757FD2929297C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002323
      236B555555F9585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF4D4D4DE01818184B00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000012121239444444CA565656FC585858FF585858FF585858FF5858
      58FF585858FF585858FF575757FE515151EE2424246A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3DB8575757FE585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FD2929297C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00033333339A555555FA585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5555
      55F9202020610000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000909091F3F3F3FBC565656FA585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF545454F53030308F0404041100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003D3D
      3DB8575757FE585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FD2929297C00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000070707173333339A555555F8575757FE585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF575757FE545454F52727
      2776010101040000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E0E
      0E2D393939AC565656FC585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FE575757FD3030308F070707170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003E3E
      3EBB575757FE585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FE2929297D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000001010102212121654D4D4DE2575757FE585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF585858FF585858FF575757FE444444C8171717480000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006060614212121674848
      48D5565656FB585858FF585858FF585858FF585858FF585858FF585858FF5757
      57FD4D4D4DE02424246A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002E2E
      2E8A424242BE424242BE424242BE424242BE424242BE424242BE424242C24E4E
      4EE5575757FE585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF575757FE4A4A4AD9424242BE424242BE424242BE424242BE424242BE4242
      42BE414141BD1F1F1F5D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001919194C3A3A3AA9525252F1575757FE5858
      58FF585858FF585858FF585858FF585858FF585858FF585858FF585858FF5858
      58FF585858FF585858FF575757FE4F4F4FE6333333990E0E0E2D000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000707071A1C1C1C59373737A2535353F75757
      57FD585858FF585858FF585858FF585858FF585858FF585858FF565656FC3636
      36A1171717470101010600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010101071D1D
      1D5B4C4C4CE1575757FE585858FF585858FF585858FF585858FF585858FF5757
      57FD454545C91414143D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001060606151818184B404040C15656
      56FB575757FE575757FE575757FE585858FF585858FF585858FF575757FE5757
      57FE575757FE565656F9333333981414143F0303030D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000010101034464443CC505050EB565656FB575757FE5858
      58FF585858FF575757FE575757FE575757FE555555F83F3F3FBD1D1D1D580505
      0512000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000101
      01071919194F545454F7575757FE585858FF585858FF585858FF575757FE4747
      47D3121212390000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000404
      04121919194E313131973F3F3FBB434343C1434343C3424242C03F3F3FBA2A2A
      2A82151515400202020900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000303030C1B1B1B572C2C2C883E3E3EB6414141BF4343
      43C3434343C13F3F3FBA323232971C1C1C580303030D00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001818184D4B4B4BDE575757FE585858FF575757FD474747D20808
      081D000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000050202020901010104000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000020202
      0208010101060000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000010101061B1B1B544B4B4BDE575757FD424242C5111111360000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000005171717483F3F3FBE10101034000000020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      28000000C0000000300000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3FFFFF000000000000
      FFFFFE3FFFFFFFFFE7FFFFFFFFFFF81FFFFF000000000000FFFFE003FFFFFFFC
      007FFFFFFFFFF80FFFFF000000000000FFFF8000FFFFFFFC001FFFFFFFFFF007
      FFFF000000000000FFFE00003FFFFFFE0003FFFFFFFFC003FFFF000000000000
      FFF800000FFFFFFF0003FFFFFFE0000003FF000000000000FFF000000FFFFFFF
      C000FFFFFFE0000003FF000000000000FFE0000003FFFFFFF0007FFFFFE00000
      03FF000000000000FFE0000003FFFFFFF8007FFFFFE0000003FF000000000000
      FFC0000001FFFFFFF8003FFFFFE0000003FF000000000000FF80000001FFFFFF
      FC001FFFFFE003E003FF000000000000FF80000000FFFFFFFE001FFFFFE007F0
      03FF000000000000FF80000000FFFFFFFE000FFFFFE01FFC03FF000000000000
      FF000000007FFFFFFF000FFFFF803FFE01FF000000000000FF000000007FFFFF
      FF000FFFFF803FFE00FF000000000000FF000000007FFFFFFF000FFFFF007FFF
      007F000000000000FF000000007FFFFFFF000FFFFC00FFFF803F000000000000
      FE000000003FFFFFFF000FFFFC00FFFF801F000000000000FE000000003FFFFF
      FF800FFFFC00FFFF801F000000000000FE000000003FFFFFFF000FFFFC00FFFF
      801F000000000000FF000000007FFFFFFF000FFFFC00FFFF803F000000000000
      FF000000007FFFFFFF000FFFFE007FFF003F000000000000FF000000007FFFFF
      FF000FFFFF807FFE00FF000000000000FF000000007FFFFFFF000FFFFF803FFE
      01FF000000000000FF80000000FFFFFFFF000FFFFFC03FFC01FF000000000000
      FF80000000FFFFFFFE001FFFFFE00FF003FF000000000000FF80000001FFFFFF
      FC001FFFFFE003E003FF000000000000FF80000001FFFFFFFC003FFFFFE00000
      03FF000000000000FFE0000003FFFFFFF8007FFFFFE0000003FF000000000000
      FFE0000003FFFFFFF0007FFFFFE0000003FF000000000000FFF0000007FFFFFF
      E000FFFFFFE0000003FF000000000000FFF800000FFFFFFF8003FFFFFFE00000
      03FF000000000000FFFE00003FFFFFFE0003FFFFFFFFC003FFFF000000000000
      FFFE00007FFFFFFC000FFFFFFFFFE003FFFF000000000000FFFFE003FFFFFFFC
      007FFFFFFFFFF80FFFFF000000000000FFFFFE3FFFFFFFFFC7FFFFFFFFFFF81F
      FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFF000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object TimerCheckDonat: TTimer
    Enabled = False
    Interval = 7200000
    OnTimer = TimerCheckDonatTimer
    Left = 992
    Top = 684
  end
  object TimerRestart: TTimer
    Enabled = False
    OnTimer = TimerRestartTimer
    Left = 1086
    Top = 549
  end
  object PopupMenuChat: TPopupMenu
    Left = 1086
    Top = 687
    object MenuItemChatTranslate: TMenuItem
      Caption = #1055#1077#1088#1077#1074#1077#1089#1090#1080' '#1089#1086#1086#1073#1097#1077#1085#1080#1077
      OnClick = MenuItemChatTranslateClick
    end
    object MenuItemChatFindPlayer: TMenuItem
      Caption = #1053#1072#1081#1090#1080' '#1080#1075#1088#1086#1082#1072' '#1074' '#1073#1072#1079#1077
      OnClick = MenuItemChatFindPlayerClick
    end
  end
end
