object DataM_intarikh: TDataM_intarikh
  OldCreateOrder = False
  Left = 251
  Top = 279
  Height = 230
  Width = 221
  object ADOQ_kharidaran: TADOQuery
    Active = True
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_kharidaranAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select name_kh,family_kh,tarikh  from t_forosh')
    Left = 40
    Top = 8
    object ADOQ_kharidaranname_kh: TWideStringField
      FieldName = 'name_kh'
      Size = 30
    end
    object ADOQ_kharidaranfamily_kh: TWideStringField
      FieldName = 'family_kh'
      Size = 30
    end
    object ADOQ_kharidarantarikh: TWideStringField
      FieldName = 'tarikh'
    end
  end
  object ADOQ_foroshandeha: TADOQuery
    Active = True
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_foroshandehaAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select name,family,tarikh  from t_forosh')
    Left = 40
    Top = 64
    object ADOQ_foroshandehaname: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object ADOQ_foroshandehafamily: TWideStringField
      FieldName = 'family'
      Size = 30
    end
    object ADOQ_foroshandehatarikh: TWideStringField
      FieldName = 'tarikh'
    end
  end
  object ADOQ_joz_forosh: TADOQuery
    Active = True
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select name_kh,family_kh,tarikh,sh_kh from t_forosh')
    Left = 152
    Top = 8
    object WideStringField1: TWideStringField
      FieldName = 'name_kh'
      Size = 30
    end
    object WideStringField2: TWideStringField
      FieldName = 'family_kh'
      Size = 30
    end
    object WideStringField3: TWideStringField
      FieldName = 'tarikh'
    end
    object FloatField1: TFloatField
      FieldName = 'sh_kh'
    end
  end
  object ADOQ_joz_kharid: TADOQuery
    Active = True
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select name,family,tarikh,sh_kh  from t_forosh')
    Left = 136
    Top = 72
    object WideStringField4: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object WideStringField5: TWideStringField
      FieldName = 'family'
      Size = 30
    end
    object WideStringField6: TWideStringField
      FieldName = 'tarikh'
    end
    object FloatField2: TFloatField
      FieldName = 'sh_kh'
    end
  end
end
