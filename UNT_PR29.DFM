object Frm_print_bar_daron_jiziat: TFrm_print_bar_daron_jiziat
  Left = 197
  Top = 99
  Width = 696
  Height = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 32
    Top = -8
    Width = 605
    Height = 605
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Datam_joziat_ranande.ADOQ_joziat_daron
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = DSheet
    Page.Values = (
      100.000000000000000000
      1000.000000000000000000
      20.000000000000000000
      1000.000000000000000000
      20.000000000000000000
      20.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Lower
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 160
    object TitleBand1: TQRBand
      Left = 12
      Top = 12
      Width = 581
      Height = 241
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        398.528645833333300000
        960.768229166666600000)
      BandType = rbPageHeader
      object QRShape18: TQRShape
        Left = 5
        Top = 64
        Width = 658
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          7.937500000000000000
          105.833333333333300000
          1087.437500000000000000)
        Shape = qrsHorLine
      end
      object QRSysData1: TQRSysData
        Left = 30
        Top = 70
        Width = 74
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          51.263020833333340000
          49.609375000000000000
          115.755208333333300000
          122.369791666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsUnderline]
        ParentFont = False
        Transparent = False
        FontSize = 10
      end
      object QRShape13: TQRShape
        Left = 2
        Top = 66
        Width = 11
        Height = 200
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          330.729166666666700000
          2.645833333333333000
          108.479166666666700000
          18.520833333333330000)
        Shape = qrsVertLine
      end
      object QRShape14: TQRShape
        Left = 658
        Top = 66
        Width = 11
        Height = 198
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          328.083333333333400000
          1087.437500000000000000
          108.479166666666700000
          18.520833333333330000)
        Shape = qrsVertLine
      end
      object QRLabel1: TQRLabel
        Left = 617
        Top = 184
        Width = 40
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.648437500000000000
          1020.299479166667000000
          304.270833333333400000
          66.145833333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1585#1583#1610#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 33
        Top = 184
        Width = 62
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          54.570312499999990000
          304.270833333333400000
          102.526041666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1705#1585#1575#1610#1607' '#1705#1604
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape7: TQRShape
        Left = 606
        Top = 181
        Width = 5
        Height = 59
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333340000
          1002.770833333333000000
          298.979166666666700000
          7.937500000000000000)
        Shape = qrsVertLine
      end
      object QRShape5: TQRShape
        Left = 119
        Top = 181
        Width = 4
        Height = 59
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.013888888888880000
          196.232638888888900000
          299.861111111111200000
          6.614583333333332000)
        Shape = qrsVertLine
      end
      object QRLabel10: TQRLabel
        Left = 279
        Top = 184
        Width = 32
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          461.367187499999900000
          304.270833333333400000
          52.916666666666660000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1608#1586#1606
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape27: TQRShape
        Left = 251
        Top = 181
        Width = 5
        Height = 59
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.013888888888880000
          414.513888888888900000
          299.861111111111200000
          8.819444444444444000)
        Shape = qrsVertLine
      end
      object QRLabel8: TQRLabel
        Left = 266
        Top = 209
        Width = 56
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          439.869791666666800000
          345.611979166666700000
          92.604166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1705#1610#1604#1608#1711#1585#1605
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 48
        Top = 209
        Width = 32
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          79.375000000000000000
          345.611979166666700000
          52.916666666666660000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1585#1610#1575#1604
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 134
        Top = 210
        Width = 38
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          221.588541666666700000
          347.265625000000000000
          62.838541666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1711#1608#1606#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 135
        Top = 185
        Width = 34
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          223.242187500000000000
          305.924479166666700000
          56.223958333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1593#1583#1575#1583
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 6
        Top = 235
        Width = 658
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          10.583333333333330000
          388.937500000000000000
          1087.437500000000000000)
        Shape = qrsHorLine
      end
      object QRShape24: TQRShape
        Left = 6
        Top = 179
        Width = 658
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          10.583333333333330000
          296.333333333333400000
          1087.437500000000000000)
        Shape = qrsHorLine
      end
      object QRL_type: TQRLabel
        Left = 10
        Top = 117
        Width = 651
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          15.875000000000000000
          193.145833333333300000
          1076.854166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'QRL_type'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape4: TQRShape
        Left = 523
        Top = 181
        Width = 5
        Height = 59
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.013888888888880000
          864.305555555555600000
          299.861111111111200000
          8.819444444444444000)
        Shape = qrsVertLine
      end
      object QRLabel4: TQRLabel
        Left = 550
        Top = 185
        Width = 40
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          909.505208333333400000
          305.924479166666700000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape2: TQRShape
        Left = 335
        Top = 181
        Width = 1
        Height = 59
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.013888888888880000
          553.420138888888900000
          299.861111111111200000
          2.204861111111111000)
        Shape = qrsVertLine
      end
      object QRLabel2: TQRLabel
        Left = 394
        Top = 185
        Width = 50
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          651.536458333333500000
          305.924479166666700000
          82.682291666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1582#1585#1610#1583#1575#1585
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape8: TQRShape
        Left = 184
        Top = 181
        Width = 1
        Height = 59
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.013888888888880000
          304.270833333333300000
          299.861111111111200000
          2.204861111111111000)
        Shape = qrsVertLine
      end
      object QRLabel3: TQRLabel
        Left = 199
        Top = 184
        Width = 38
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.994791666666670000
          329.075520833333400000
          304.270833333333400000
          62.838541666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1705#1585#1575#1610#1607
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand1: TQRBand
      Left = 12
      Top = 253
      Width = 581
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        49.609375000000000000
        960.768229166666600000)
      BandType = rbDetail
      object QRDBText18: TQRDBText
        Left = 10
        Top = 0
        Width = 110
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          16.536458333333330000
          0.000000000000000000
          181.901041666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_joziat_ranande.ADOQ_joziat_daron
        DataField = 'ker_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRExpr2: TQRExpr
        Left = 613
        Top = 2
        Width = 50
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1013.354166666667000000
          2.645833333333333000
          82.020833333333340000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        FontSize = 8
      end
      object QRShape12: TQRShape
        Left = 606
        Top = -8
        Width = 5
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1002.770833333333000000
          -13.229166666666670000
          7.937500000000000000)
        Shape = qrsVertLine
      end
      object QRShape16: TQRShape
        Left = 119
        Top = -7
        Width = 3
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          57.326388888888900000
          196.232638888888900000
          -11.024305555555560000
          4.409722222222222000)
        Shape = qrsVertLine
      end
      object QRShape21: TQRShape
        Left = 3
        Top = -5
        Width = 8
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          5.291666666666667000
          -7.937500000000000000
          13.229166666666670000)
        Shape = qrsVertLine
      end
      object QRShape22: TQRShape
        Left = 662
        Top = -8
        Width = 2
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1095.375000000000000000
          -13.229166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape23: TQRShape
        Left = 8
        Top = 26
        Width = 654
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          13.229166666666670000
          42.333333333333340000
          1082.145833333333000000)
        Shape = qrsHorLine
      end
      object QRDBText1: TQRDBText
        Left = 254
        Top = 0
        Width = 81
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          420.026041666666800000
          0.000000000000000000
          133.945312500000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_joziat_ranande.ADOQ_joziat_daron
        DataField = 'vazn_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape26: TQRShape
        Left = 253
        Top = -7
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          57.326388888888900000
          418.923611111111200000
          -11.024305555555560000
          2.204861111111111000)
        Shape = qrsVertLine
      end
      object QRDBText8: TQRDBText
        Left = 123
        Top = 0
        Width = 61
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          38.033854166666670000
          203.398437500000000000
          0.000000000000000000
          100.872395833333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_joziat_ranande.ADOQ_joziat_daron
        DataField = 'goni_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape6: TQRShape
        Left = 525
        Top = -8
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          57.326388888888900000
          868.715277777777900000
          -13.229166666666670000
          2.204861111111111000)
        Shape = qrsVertLine
      end
      object QRDBText4: TQRDBText
        Left = 529
        Top = 0
        Width = 76
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888900000
          875.329861111111300000
          0.000000000000000000
          125.677083333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_joziat_ranande.ADOQ_joziat_daron
        DataField = 'tarikh'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape3: TQRShape
        Left = 335
        Top = -8
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          57.326388888888900000
          553.420138888888900000
          -13.229166666666670000
          2.204861111111111000)
        Shape = qrsVertLine
      end
      object QRShape9: TQRShape
        Left = 184
        Top = -7
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          57.326388888888900000
          304.270833333333300000
          -11.024305555555560000
          2.204861111111111000)
        Shape = qrsVertLine
      end
      object QRDBText3: TQRDBText
        Left = 186
        Top = 0
        Width = 65
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          38.033854166666670000
          307.578125000000000000
          0.000000000000000000
          107.486979166666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_joziat_ranande.ADOQ_joziat_daron
        DataField = 'keraye_az_kh'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText5: TQRDBText
        Left = 422
        Top = 0
        Width = 101
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          697.838541666666600000
          0.000000000000000000
          167.018229166666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_joziat_ranande.ADOQ_joziat_daron
        DataField = 'family_kh'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText6: TQRDBText
        Left = 339
        Top = 0
        Width = 80
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          560.585937500000000000
          0.000000000000000000
          132.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_joziat_ranande.ADOQ_joziat_daron
        DataField = 'name_kh'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    object QRBand2: TQRBand
      Left = 12
      Top = 283
      Width = 581
      Height = 162
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        267.890625000000000000
        960.768229166666600000)
      BandType = rbSummary
      object QRLabel14: TQRLabel
        Left = 509
        Top = 69
        Width = 120
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          841.375000000000000000
          113.770833333333300000
          198.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':   '#1580#1605#1593' '#1705#1604' '#1608#1586#1606
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 512
        Top = 16
        Width = 118
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          846.666666666666600000
          26.458333333333330000
          195.791666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':  '#1580#1605#1593' '#1705#1604' '#1711#1608#1606#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 510
        Top = 118
        Width = 122
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          844.020833333333500000
          195.791666666666700000
          201.083333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ': '#1580#1605#1593' '#1705#1604'  '#1705#1585#1575#1610#1607
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 166
        Top = 18
        Width = 272
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          275.166666666666700000
          29.104166666666670000
          449.791666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_joziat_ranande.ADOQ_jam_joz_dron
        DataField = 'goni_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText12: TQRDBText
        Left = 166
        Top = 120
        Width = 272
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          275.166666666666700000
          198.437500000000000000
          449.791666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_joziat_ranande.ADOQ_jam_joz_dron
        DataField = 'kol_keraye'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText20: TQRDBText
        Left = 166
        Top = 70
        Width = 272
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          275.166666666666700000
          116.416666666666700000
          449.791666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_joziat_ranande.ADOQ_jam_joz_dron
        DataField = 'vazn_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape34: TQRShape
        Left = 5
        Top = 157
        Width = 658
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          7.937500000000000000
          259.291666666666700000
          1087.437500000000000000)
        Shape = qrsHorLine
      end
      object QRShape35: TQRShape
        Left = 6
        Top = -2
        Width = 2
        Height = 157
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          259.291666666666700000
          10.583333333333330000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape36: TQRShape
        Left = 662
        Top = -3
        Width = 2
        Height = 162
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          267.229166666666700000
          1095.375000000000000000
          -5.291666666666667000
          2.645833333333333000)
        Shape = qrsVertLine
      end
    end
  end
end
