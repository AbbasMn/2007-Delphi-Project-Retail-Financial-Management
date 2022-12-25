object FRM_PRINT_BARAYE_KHARIDAR: TFRM_PRINT_BARAYE_KHARIDAR
  Left = 178
  Top = 214
  Width = 756
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
    Tag = 1
    Left = 59
    Top = 21
    Width = 529
    Height = 529
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = DataM_forosh.ADOQ_forosh
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
      0.000000000000000000
      1000.000000000000000000
      0.000000000000000000
      1000.000000000000000000
      20.000000000000000000
      20.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Upper
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 140
    object TitleBand1: TQRBand
      Left = 11
      Top = 0
      Width = 508
      Height = 191
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
        360.967261904761900000
        960.059523809524000000)
      BandType = rbPageHeader
      object QRShape13: TQRShape
        Left = 3
        Top = 36
        Width = 10
        Height = 162
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          306.916666666666700000
          5.291666666666667000
          68.791666666666680000
          18.520833333333330000)
        Shape = qrsVertLine
      end
      object QRShape14: TQRShape
        Left = 588
        Top = 36
        Width = 10
        Height = 157
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          296.333333333333400000
          1111.250000000000000000
          68.791666666666680000
          18.520833333333330000)
        Shape = qrsVertLine
      end
      object QRLabel2: TQRLabel
        Left = 411
        Top = 140
        Width = 111
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          776.741071428571400000
          264.583333333333400000
          209.776785714285700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1575#1605' '#1608#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
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
        Left = 539
        Top = 137
        Width = 4
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          1018.645833333333000000
          259.291666666666700000
          7.937500000000000000)
        Shape = qrsVertLine
      end
      object QRLabel10: TQRLabel
        Left = 320
        Top = 140
        Width = 34
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          604.761904761904800000
          264.583333333333400000
          64.255952380952380000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1608#1586#1606' '
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
        Left = 221
        Top = 137
        Width = 4
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          418.041666666666700000
          259.291666666666700000
          7.937500000000000000)
        Shape = qrsVertLine
      end
      object QRLabel9: TQRLabel
        Left = 65
        Top = 141
        Width = 52
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          122.842261904761900000
          266.473214285714300000
          98.273809523809540000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1602#1610#1605#1578' '#1705#1604
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
        Left = 7
        Top = 188
        Width = 584
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1.889880952380953000
          13.229166666666670000
          355.297619047619000000
          1103.690476190476000000)
        Shape = qrsHorLine
      end
      object QRShape24: TQRShape
        Left = 7
        Top = 135
        Width = 584
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.669642857142857000
          13.229166666666670000
          255.133928571428500000
          1103.690476190476000000)
        Shape = qrsHorLine
      end
      object QRShape5: TQRShape
        Left = 7
        Top = 35
        Width = 584
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          13.229166666666670000
          66.145833333333340000
          1103.312500000000000000)
        Shape = qrsHorLine
      end
      object QRShape17: TQRShape
        Left = 393
        Top = 137
        Width = 1
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          743.479166666666800000
          259.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel6: TQRLabel
        Left = 239
        Top = 140
        Width = 24
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          451.681547619047700000
          264.583333333333400000
          45.357142857142850000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1601#1610' '
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
      object QRLabel5: TQRLabel
        Left = 313
        Top = 166
        Width = 49
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          591.532738095238000000
          313.720238095238100000
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
      object QRLabel7: TQRLabel
        Left = 237
        Top = 161
        Width = 28
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          447.901785714285700000
          304.270833333333400000
          52.916666666666680000)
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
      object QRShape2: TQRShape
        Left = 172
        Top = 137
        Width = 4
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          325.437500000000000000
          259.291666666666700000
          7.937500000000000000)
        Shape = qrsVertLine
      end
      object QRLabel12: TQRLabel
        Left = 502
        Top = 63
        Width = 71
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          948.720238095238300000
          119.062500000000000000
          134.181547619047600000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':    '#1582#1585#1610#1583#1575#1585
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
      object QRDBText7: TQRDBText
        Left = 393
        Top = 64
        Width = 97
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          743.479166666666800000
          121.708333333333300000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_forosh
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
      object QRDBText8: TQRDBText
        Left = 297
        Top = 64
        Width = 95
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          560.916666666666800000
          121.708333333333300000
          179.916666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_forosh
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
      object QRLabel14: TQRLabel
        Left = 316
        Top = 100
        Width = 101
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          597.202380952380900000
          188.988095238095200000
          190.877976190476200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':    '#1705#1583' '#1588#1606#1575#1587#1575#1610#1610
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
      object QRDBText10: TQRDBText
        Left = 192
        Top = 102
        Width = 95
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          362.479166666666700000
          193.145833333333300000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_forosh
        DataField = 'cod_kh'
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
      object QRShape28: TQRShape
        Left = 280
        Top = 137
        Width = 1
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          105.833333333333300000
          529.166666666666800000
          259.291666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel11: TQRLabel
        Left = 183
        Top = 142
        Width = 29
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          345.848214285714300000
          268.363095238095300000
          54.806547619047620000)
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
      object QRLabel8: TQRLabel
        Left = 182
        Top = 166
        Width = 34
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          343.958333333333400000
          313.720238095238100000
          64.255952380952380000)
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
      object QRLabel1: TQRLabel
        Left = 549
        Top = 143
        Width = 35
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.357142857142850000
          1037.544642857143000000
          270.252976190476200000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1585#1583#1610#1601
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
      object QRSysData1: TQRSysData
        Left = 19
        Top = 38
        Width = 64
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          35.907738095238090000
          71.815476190476190000
          120.952380952381000000)
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
      object QRLabel13: TQRLabel
        Left = 40
        Top = 41
        Width = 34
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          75.595238095238110000
          77.485119047619050000
          64.255952380952380000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1589#1581#1601#1607
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRL_type: TQRLabel
        Left = 13
        Top = 63
        Width = 280
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          23.812500000000000000
          119.062500000000000000
          529.166666666666800000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = ':    '#1578#1575#1585#1610#1582
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
      object QRLabel4: TQRLabel
        Left = 77
        Top = 161
        Width = 28
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          145.520833333333300000
          304.270833333333400000
          52.916666666666680000)
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
    end
    object QRBand1: TQRBand
      Left = 11
      Top = 191
      Width = 508
      Height = 27
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
        51.026785714285720000
        960.059523809524000000)
      BandType = rbDetail
      object QRDBText13: TQRDBText
        Left = 461
        Top = 1
        Width = 79
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          871.235119047619200000
          1.889880952380953000
          149.300595238095200000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_forosh
        DataField = 'family'
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
        Left = 545
        Top = 1
        Width = 43
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          1029.229166666667000000
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
      object QRShape16: TQRShape
        Left = 539
        Top = -6
        Width = 4
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1018.645833333333000000
          -10.583333333333330000
          7.937500000000000000)
        Shape = qrsVertLine
      end
      object QRShape23: TQRShape
        Left = 8
        Top = 24
        Width = 584
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          15.875000000000000000
          44.979166666666670000
          1103.312500000000000000)
        Shape = qrsHorLine
      end
      object QRShape31: TQRShape
        Left = 592
        Top = -6
        Width = 1
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1119.187500000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText1: TQRDBText
        Left = 282
        Top = 0
        Width = 110
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          532.946428571428500000
          0.000000000000000000
          207.886904761904800000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_forosh
        DataField = 'vazn'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 10
        Top = 1
        Width = 164
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          18.898809523809530000
          1.889880952380953000
          309.940476190476200000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_forosh
        DataField = 'geymat_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape3: TQRShape
        Left = 223
        Top = -6
        Width = 1
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          420.687500000000000000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape4: TQRShape
        Left = 6
        Top = -6
        Width = 4
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          10.583333333333330000
          -10.583333333333330000
          7.937500000000000000)
        Shape = qrsVertLine
      end
      object QRShape18: TQRShape
        Left = 393
        Top = -6
        Width = 1
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          743.479166666666800000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText5: TQRDBText
        Left = 395
        Top = 1
        Width = 64
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          746.502976190476300000
          1.889880952380953000
          120.952380952381000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_forosh
        DataField = 'name'
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
        Left = 224
        Top = 1
        Width = 56
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          423.333333333333400000
          1.889880952380953000
          105.833333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_forosh
        DataField = 'fi'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape22: TQRShape
        Left = 174
        Top = -6
        Width = 1
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          328.083333333333400000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape29: TQRShape
        Left = 280
        Top = -6
        Width = 1
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          529.166666666666800000
          -10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText16: TQRDBText
        Left = 176
        Top = 1
        Width = 45
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          332.619047619047700000
          1.889880952380953000
          85.044642857142860000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_forosh
        DataField = 'goni'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object QRBand2: TQRBand
      Left = 11
      Top = 218
      Width = 508
      Height = 142
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
        268.363095238095300000
        960.059523809524000000)
      BandType = rbSummary
      object QRShape6: TQRShape
        Left = 588
        Top = -1
        Width = 10
        Height = 141
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          267.229166666666700000
          1111.250000000000000000
          -2.645833333333333000
          18.520833333333330000)
        Shape = qrsVertLine
      end
      object QRShape8: TQRShape
        Left = 4
        Top = -1
        Width = 7
        Height = 141
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          267.229166666666700000
          7.937500000000000000
          -2.645833333333333000
          13.229166666666670000)
        Shape = qrsVertLine
      end
      object QRShape9: TQRShape
        Left = 536
        Top = -1
        Width = 10
        Height = 141
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          267.229166666666700000
          1013.354166666667000000
          -2.645833333333333000
          18.520833333333330000)
        Shape = qrsVertLine
      end
      object QRShape12: TQRShape
        Left = 8
        Top = 136
        Width = 584
        Height = 6
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          10.583333333333330000
          15.875000000000000000
          256.645833333333400000
          1103.312500000000000000)
        Shape = qrsHorLine
      end
      object QRLabel3: TQRLabel
        Left = 446
        Top = 77
        Width = 48
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          842.886904761904900000
          145.520833333333300000
          90.714285714285710000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1580#1605#1593' '#1705#1604
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
      object QRShape15: TQRShape
        Left = 392
        Top = -1
        Width = 3
        Height = 141
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          267.229166666666700000
          740.833333333333400000
          -2.645833333333333000
          5.291666666666667000)
        Shape = qrsVertLine
      end
      object QRShape21: TQRShape
        Left = 223
        Top = -1
        Width = 1
        Height = 141
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          267.229166666666700000
          420.687500000000000000
          -2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape25: TQRShape
        Left = 172
        Top = -1
        Width = 4
        Height = 141
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          267.229166666666700000
          325.437500000000000000
          -2.645833333333333000
          7.937500000000000000)
        Shape = qrsVertLine
      end
      object QRShape10: TQRShape
        Left = 8
        Top = 69
        Width = 584
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          15.875000000000000000
          129.645833333333300000
          1103.312500000000000000)
        Shape = qrsHorLine
      end
      object QRShape11: TQRShape
        Left = 8
        Top = 34
        Width = 584
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          15.875000000000000000
          63.500000000000000000
          1103.312500000000000000)
        Shape = qrsHorLine
      end
      object QRLabel15: TQRLabel
        Left = 453
        Top = 7
        Width = 35
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          856.116071428571400000
          13.229166666666670000
          66.145833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1575#1580#1585#1578
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
      object QRLabel16: TQRLabel
        Left = 453
        Top = 42
        Width = 34
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          856.116071428571400000
          79.375000000000000000
          64.255952380952380000)
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
      object QRShape19: TQRShape
        Left = 279
        Top = -1
        Width = 4
        Height = 141
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          267.229166666666700000
          526.520833333333400000
          -2.645833333333333000
          7.937500000000000000)
        Shape = qrsVertLine
      end
      object QRDBText14: TQRDBText
        Left = 224
        Top = 7
        Width = 55
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          423.333333333333400000
          13.229166666666670000
          103.943452380952400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_oj_for_factor_kh
        DataField = 'ojrat_az_kh'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText15: TQRDBText
        Left = 225
        Top = 42
        Width = 54
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          425.223214285714300000
          79.375000000000000000
          102.053571428571400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_ker_for_factor_kh
        DataField = 'keraye_az_kh'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 176
        Top = 77
        Width = 47
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          332.619047619047700000
          145.520833333333300000
          88.824404761904760000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_vazn_goni
        DataField = 'goni_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText4: TQRDBText
        Left = 283
        Top = 77
        Width = 110
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          534.836309523809500000
          145.520833333333300000
          207.886904761904800000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_vazn_goni
        DataField = 'vazn_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText11: TQRDBText
        Left = 282
        Top = 41
        Width = 110
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.247023809523810000
          532.946428571428500000
          77.485119047619050000
          207.886904761904800000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_vazn_bedon_keraye
        DataField = 'vazn_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText12: TQRDBText
        Left = 282
        Top = 6
        Width = 109
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.247023809523810000
          532.946428571428500000
          11.339285714285710000
          205.997023809523800000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftReadingOnly
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_vazn_bedon_ojrat
        DataField = 'vazn_kol'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText17: TQRDBText
        Left = 10
        Top = 7
        Width = 162
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          18.898809523809530000
          13.229166666666670000
          306.160714285714300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_print_kh2
        DataField = 'ojrat_kh'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText18: TQRDBText
        Left = 9
        Top = 42
        Width = 164
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          17.008928571428570000
          79.375000000000000000
          309.940476190476200000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_print_kh2
        DataField = 'keraye_kh'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText19: TQRDBText
        Left = 9
        Top = 77
        Width = 163
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          17.008928571428570000
          145.520833333333300000
          308.050595238095300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_print_kh
        DataField = 'kh_mount'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape20: TQRShape
        Left = 8
        Top = 102
        Width = 584
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          15.875000000000000000
          193.145833333333300000
          1103.312500000000000000)
        Shape = qrsHorLine
      end
      object QRLabel17: TQRLabel
        Left = 426
        Top = 111
        Width = 90
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          805.089285714285800000
          209.776785714285700000
          170.089285714285700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1605#1610#1575#1606#1711#1610#1606' '#1602#1610#1605#1578' '
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
      object QRDBText9: TQRDBText
        Left = 9
        Top = 111
        Width = 164
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          17.008928571428570000
          209.776785714285700000
          309.940476190476200000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = DataM_forosh.ADOQ_print_kh
        DataField = 'miangin'
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
  end
end
