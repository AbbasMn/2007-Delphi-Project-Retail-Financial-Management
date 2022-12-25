object DataMo_shakhs: TDataMo_shakhs
  OldCreateOrder = False
  Left = 367
  Top = 177
  Height = 497
  Width = 571
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=hasanpor;Data Source=abasmn'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'SQLOLEDB.1'
    Left = 472
    Top = 16
  end
  object ADOQ__foroshande: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ__foroshandeAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from T_foroshande')
    Left = 120
    Top = 56
    object ADOQ__foroshandename: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object ADOQ__foroshandefamily: TWideStringField
      FieldName = 'family'
      Size = 30
    end
    object ADOQ__foroshandetel_hamrah: TWideStringField
      FieldName = 'tel_hamrah'
      Size = 15
    end
    object ADOQ__foroshandecod: TBCDField
      FieldName = 'cod'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object ADOQ__foroshandetel_kar: TWideStringField
      FieldName = 'tel_kar'
      Size = 15
    end
    object ADOQ__foroshandetel_manzel: TWideStringField
      FieldName = 'tel_manzel'
      Size = 15
    end
  end
  object ADOQ_kharidar: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_kharidarAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_kharidar')
    Left = 112
    Top = 8
    object ADOQ_kharidarname: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object ADOQ_kharidarfamily: TWideStringField
      FieldName = 'family'
      Size = 30
    end
    object ADOQ_kharidartel_hamrah: TWideStringField
      FieldName = 'tel_hamrah'
      Size = 15
    end
    object ADOQ_kharidarcod: TBCDField
      FieldName = 'cod'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object ADOQ_kharidartel_kar: TWideStringField
      FieldName = 'tel_kar'
      Size = 15
    end
    object ADOQ_kharidartel_manzel: TWideStringField
      FieldName = 'tel_manzel'
      Size = 15
    end
    object ADOQ_kharidarsh_kh: TIntegerField
      FieldName = 'sh_kh'
    end
  end
  object ADOQ_sal_fi: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_sal_fi')
    Left = 24
    Top = 72
  end
  object ADOQ_login: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_login')
    Left = 16
    Top = 136
    object ADOQ_loginlogin_public: TWideStringField
      FieldName = 'login_public'
      Size = 50
    end
    object ADOQ_loginlogin_user: TWideStringField
      FieldName = 'login_user'
      Size = 50
    end
    object ADOQ_loginback: TWideStringField
      FieldName = 'back'
      Size = 255
    end
    object ADOQ_loginpic: TWideStringField
      FieldName = 'pic'
      Size = 255
    end
    object ADOQ_loginbug_tarikh: TWideStringField
      FieldName = 'bug_tarikh'
      Size = 10
    end
    object ADOQ_loginbug_forosh: TWideStringField
      FieldName = 'bug_forosh'
    end
    object ADOQ_loginserial: TWideStringField
      FieldName = 'serial'
      Size = 50
    end
    object ADOQ_loginrecord_count: TWideStringField
      FieldName = 'record_count'
    end
    object ADOQ_loginlogin_koli: TWideStringField
      FieldName = 'login_koli'
      Size = 50
    end
  end
  object ADOQ_insert_foroshande: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ__foroshandeAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from T_foroshande')
    Left = 104
    Top = 120
    object ADOQ_insert_foroshandename: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object ADOQ_insert_foroshandefamily: TWideStringField
      FieldName = 'family'
      Size = 30
    end
    object ADOQ_insert_foroshandetel_hamrah: TWideStringField
      FieldName = 'tel_hamrah'
      Size = 15
    end
    object ADOQ_insert_foroshandecod: TBCDField
      FieldName = 'cod'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object ADOQ_insert_foroshandetel_kar: TWideStringField
      FieldName = 'tel_kar'
      Size = 15
    end
    object ADOQ_insert_foroshandetel_manzel: TWideStringField
      FieldName = 'tel_manzel'
      Size = 15
    end
  end
  object ADOQ_insert_kharidar: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_kharidarAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_kharidar')
    Left = 112
    Top = 176
    object ADOQ_insert_kharidarname: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object ADOQ_insert_kharidarfamily: TWideStringField
      FieldName = 'family'
      Size = 30
    end
    object ADOQ_insert_kharidartel_hamrah: TWideStringField
      FieldName = 'tel_hamrah'
      Size = 15
    end
    object ADOQ_insert_kharidarcod: TBCDField
      FieldName = 'cod'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object ADOQ_insert_kharidartel_kar: TWideStringField
      FieldName = 'tel_kar'
      Size = 15
    end
    object ADOQ_insert_kharidartel_manzel: TWideStringField
      FieldName = 'tel_manzel'
      Size = 15
    end
    object ADOQ_insert_kharidarsh_kh: TIntegerField
      FieldName = 'sh_kh'
    end
  end
  object ADOQ_ranande: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  t_ranande')
    Left = 32
    Top = 216
    object ADOQ_ranandefamily: TWideStringField
      FieldName = 'family'
      Size = 50
    end
    object ADOQ_ranandecod: TBCDField
      FieldName = 'cod'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
  end
  object ADOQ_edit_kharidar: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_kharidar')
    Left = 40
    Top = 272
  end
  object ADOQ_edit_foroshande: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_foroshande')
    Left = 136
    Top = 240
  end
  object ADOQ_show_ranande: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_show_ranandeAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from  t_ranande')
    Left = 136
    Top = 328
    object ADOQ_show_ranandefamily: TWideStringField
      FieldName = 'family'
      Size = 50
    end
    object ADOQ_show_ranandecod: TBCDField
      FieldName = 'cod'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
  end
  object ADOQ_foroshande_eslah: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_foroshande_eslahAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from T_foroshande')
    Left = 224
    Top = 16
    object ADOQ_foroshande_eslahname: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object ADOQ_foroshande_eslahfamily: TWideStringField
      FieldName = 'family'
      Size = 30
    end
    object ADOQ_foroshande_eslahtel_hamrah: TWideStringField
      FieldName = 'tel_hamrah'
      Size = 15
    end
    object ADOQ_foroshande_eslahcod: TBCDField
      FieldName = 'cod'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
    object ADOQ_foroshande_eslahtel_kar: TWideStringField
      FieldName = 'tel_kar'
      Size = 15
    end
    object ADOQ_foroshande_eslahtel_manzel: TWideStringField
      FieldName = 'tel_manzel'
      Size = 15
    end
  end
  object ADOQ_insert_ranande: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  t_ranande')
    Left = 216
    Top = 192
    object ADOQ_insert_ranandefamily: TWideStringField
      FieldName = 'family'
      Size = 50
    end
    object ADOQ_insert_ranandecod: TBCDField
      FieldName = 'cod'
      ReadOnly = True
      Precision = 10
      Size = 0
    end
  end
  object ADOQ_mosh_bank: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  T_bank_moshakhasat')
    Left = 440
    Top = 64
  end
  object ADOq_show_sh_hesab: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOq_show_sh_hesabAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select moshakhasat_kol  from  T_bank_moshakhasat order by'
      ''
      'moshakhasat_kol')
    Left = 432
    Top = 136
    object ADOq_show_sh_hesabmoshakhasat_kol: TWideStringField
      FieldName = 'moshakhasat_kol'
      Size = 100
    end
  end
  object ADOQ_show_sh_hesab2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_show_sh_hesab2AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select moshakhasat_kol  from  T_bank_moshakhasat order by'
      ''
      'moshakhasat_kol')
    Left = 424
    Top = 216
    object ADOQ_show_sh_hesab2moshakhasat_kol: TWideStringField
      FieldName = 'moshakhasat_kol'
      Size = 100
    end
  end
  object ADOQ_bank_bamk: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  t_bank')
    Left = 384
    Top = 332
  end
end
