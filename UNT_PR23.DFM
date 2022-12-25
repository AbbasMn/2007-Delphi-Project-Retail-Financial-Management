object frm_print_gozaresh_kharidaran: Tfrm_print_gozaresh_kharidaran
  Left = 195
  Top = 114
  Width = 696
  Height = 480
  Caption = 'frm_print_gozaresh_kharidaran'
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
    Width = 454
    Height = 454
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Datam_gozaresh.ADOQ_goz_kharidaran
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
    Zoom = 120
    object TitleBand1: TQRBand
      Left = 9
      Top = 9
      Width = 436
      Height = 181
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
        399.079861111111200000
        961.319444444444500000)
      BandType = rbPageHeader
      object QRShape18: TQRShape
        Left = 4
        Top = 48
        Width = 493
        Height = 2
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
        Left = 22
        Top = 52
        Width = 55
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.711805555555560000
          48.506944444444440000
          114.652777777777800000
          121.267361111111100000)
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
        Left = 1
        Top = 49
        Width = 8
        Height = 150
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
        Left = 493
        Top = 49
        Width = 8
        Height = 149
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
        Left = 463
        Top = 138
        Width = 30
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222230000
          1020.850694444444000000
          304.270833333333300000
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
        Left = 27
        Top = 138
        Width = 90
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222230000
          59.531250000000000000
          304.270833333333300000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1602#1610#1605#1578' '#1705#1604' '#1606#1575#1582#1575#1604#1589
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
        Left = 455
        Top = 136
        Width = 4
        Height = 44
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
        Left = 139
        Top = 136
        Width = 2
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.013888888888880000
          306.475694444444500000
          299.861111111111200000
          4.409722222222222000)
        Shape = qrsVertLine
      end
      object QRLabel10: TQRLabel
        Left = 179
        Top = 138
        Width = 24
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222230000
          394.670138888888900000
          304.270833333333300000
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
      object QRLabel8: TQRLabel
        Left = 170
        Top = 157
        Width = 42
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222230000
          374.826388888888800000
          346.163194444444500000
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
      object QRShape1: TQRShape
        Left = 5
        Top = 176
        Width = 493
        Height = 2
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
        Left = 5
        Top = 134
        Width = 493
        Height = 2
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
        Left = 7
        Top = 88
        Width = 488
        Height = 23
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
      object QRShape2: TQRShape
        Left = 238
        Top = 136
        Width = 1
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.013888888888880000
          524.756944444444500000
          299.861111111111200000
          2.204861111111111000)
        Shape = qrsVertLine
      end
      object QRLabel2: TQRLabel
        Left = 331
        Top = 139
        Width = 37
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222230000
          729.809027777777800000
          306.475694444444500000
          81.579861111111120000)
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
    end
    object QRBand1: TQRBand
      Left = 9
      Top = 190
      Width = 436
      Height = 22
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
        48.506944444444440000
        961.319444444444500000)
      BandType = rbDetail
      object QRDBText18: TQRDBText
        Left = 7
        Top = 0
        Width = 132
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          15.434027777777780000
          0.000000000000000000
          291.041666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_gozaresh.ADOQ_goz_kharidaran
        DataField = 'geymat'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 460
        Top = 1
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.482638888888900000
          1014.236111111111000000
          2.204861111111111000
          74.965277777777790000)
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
        Left = 455
        Top = -6
        Width = 4
        Height = 26
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
        Left = 139
        Top = -5
        Width = 2
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          57.326388888888900000
          306.475694444444500000
          -11.024305555555560000
          4.409722222222222000)
        Shape = qrsVertLine
      end
      object QRShape21: TQRShape
        Left = 2
        Top = -4
        Width = 6
        Height = 26
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
        Left = 497
        Top = -6
        Width = 1
        Height = 26
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
        Left = 6
        Top = 19
        Width = 491
        Height = 1
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
        Left = 143
        Top = 0
        Width = 94
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          315.295138888888900000
          0.000000000000000000
          207.256944444444400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_gozaresh.ADOQ_goz_kharidaran
        DataField = 'vazn_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape3: TQRShape
        Left = 238
        Top = -6
        Width = 1
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          57.326388888888900000
          524.756944444444500000
          -13.229166666666670000
          2.204861111111111000)
        Shape = qrsVertLine
      end
      object QRDBText5: TQRDBText
        Left = 353
        Top = 0
        Width = 100
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          778.315972222222300000
          0.000000000000000000
          220.486111111111200000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_gozaresh.ADOQ_goz_kharidaran
        DataField = 'family_kh'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText6: TQRDBText
        Left = 240
        Top = 0
        Width = 110
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          529.166666666666800000
          0.000000000000000000
          242.534722222222200000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_gozaresh.ADOQ_goz_kharidaran
        DataField = 'name_kh'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Left = 9
      Top = 212
      Width = 436
      Height = 69
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
        152.135416666666700000
        961.319444444444500000)
      BandType = rbSummary
      object QRLabel14: TQRLabel
        Left = 357
        Top = 6
        Width = 113
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222230000
          787.135416666666600000
          13.229166666666670000
          249.149305555555600000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':    '#1580#1605#1593' '#1705#1604' '#1608#1586#1606
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
      object QRDBText20: TQRDBText
        Left = 125
        Top = 7
        Width = 204
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          275.607638888888900000
          15.434027777777780000
          449.791666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_gozaresh.ADOQ_jam
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
      object QRLabel29: TQRLabel
        Left = 376
        Top = 43
        Width = 97
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222230000
          829.027777777777800000
          94.809027777777790000
          213.871527777777800000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1580#1605#1593' '#1705#1604' '#1606#1575#1582#1575#1604#1589
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
      object QRDBText12: TQRDBText
        Left = 125
        Top = 44
        Width = 204
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          275.607638888888900000
          97.013888888888880000
          449.791666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Datam_gozaresh.ADOQ_jam
        DataField = 'geymat_kol_nakhales'
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
      object QRShape4: TQRShape
        Left = 5
        Top = 64
        Width = 493
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          4.409722222222222000
          11.024305555555560000
          141.111111111111100000
          1086.996527777778000000)
        Shape = qrsHorLine
      end
      object QRShape6: TQRShape
        Left = 1
        Top = -3
        Width = 8
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          149.930555555555600000
          2.204861111111111000
          -6.614583333333332000
          17.638888888888890000)
        Shape = qrsVertLine
      end
      object QRShape8: TQRShape
        Left = 493
        Top = -3
        Width = 8
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          149.930555555555600000
          1086.996527777778000000
          -6.614583333333332000
          17.638888888888890000)
        Shape = qrsVertLine
      end
    end
  end
end
