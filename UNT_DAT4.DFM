object Datam_gozaresh: TDatam_gozaresh
  OldCreateOrder = False
  Left = 261
  Top = 183
  Height = 241
  Width = 240
  object ADOQ_goz_jens: TADOQuery
    Active = True
    Connection = DataM_forosh.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(vazn) as _vazn_kol,anjir_noe  '
      'from t_forosh'
      'group by anjir_noe'
      'order by anjir_noe')
    Left = 32
    Top = 8
    object ADOQ_goz_jens_vazn_kol: TFloatField
      FieldName = '_vazn_kol'
    end
    object ADOQ_goz_jensanjir_noe: TWideStringField
      FieldName = 'anjir_noe'
    end
  end
  object ADOQ_goz_kharidaran: TADOQuery
    Active = True
    Connection = DataM_forosh.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select name_kh,family_kh,sum(vazn) as vazn_kol,'
      ''
      'sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as geymat'
      ''
      'from t_forosh'
      'group by family_kh,name_kh'
      'order by  family_kh,name_kh'
      '')
    Left = 120
    Top = 32
    object ADOQ_goz_kharidaranname_kh: TWideStringField
      FieldName = 'name_kh'
      Size = 30
    end
    object ADOQ_goz_kharidaranfamily_kh: TWideStringField
      FieldName = 'family_kh'
      Size = 30
    end
    object ADOQ_goz_kharidaranvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQ_goz_kharidarangeymat: TFloatField
      FieldName = 'geymat'
    end
  end
  object ADOQ_ranande_daron: TADOQuery
    Active = True
    Connection = DataM_forosh.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select ranande_daron,sum(vazn) as vazn_kol,'
      'sum(keraye_az_kh_kol) as keraye'
      ''
      'from t_forosh'
      'group by ranande_daron'
      'order by  ranande_daron'
      '')
    Left = 32
    Top = 104
    object ADOQ_ranande_daronranande_daron: TWideStringField
      FieldName = 'ranande_daron'
      Size = 30
    end
    object ADOQ_ranande_daronvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQ_ranande_daronkeraye: TFloatField
      FieldName = 'keraye'
    end
  end
  object ADOQ_ranande_bein: TADOQuery
    Active = True
    Connection = DataM_forosh.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select ranande,sum(vazn) as vazn_kol,'
      'sum(keraye_kol) as keraye'
      ''
      'from t_forosh'
      'group by ranande'
      'order by  ranande'
      '')
    Left = 16
    Top = 152
    object ADOQ_ranande_beinranande: TWideStringField
      FieldName = 'ranande'
      Size = 30
    end
    object ADOQ_ranande_beinvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQ_ranande_beinkeraye: TFloatField
      FieldName = 'keraye'
    end
  end
  object ADOQ_jam: TADOQuery
    Active = True
    Connection = DataM_forosh.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(vazn) as vazn_kol,'
      'sum(keraye_kol) as keraye_biron'
      ',sum(keraye_az_kh_kol) as keraye_daron'
      ''
      ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol)'
      ' as geymat_kol_nakhales'
      ''
      ',sum(geymat_kol-ojrat_kol-keraye_kol)  as pardakht_be_foroshande'
      ''
      ',sum(ojrat_kol+ojrat_az_kh_kol) as ojrat_kol'
      ''
      'from t_forosh')
    Left = 152
    Top = 112
    object ADOQ_jamvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQ_jamkeraye_biron: TFloatField
      FieldName = 'keraye_biron'
    end
    object ADOQ_jamkeraye_daron: TFloatField
      FieldName = 'keraye_daron'
    end
    object ADOQ_jamgeymat_kol_nakhales: TFloatField
      FieldName = 'geymat_kol_nakhales'
    end
    object ADOQ_jampardakht_be_foroshande: TFloatField
      FieldName = 'pardakht_be_foroshande'
    end
    object ADOQ_jamojrat_kol: TFloatField
      FieldName = 'ojrat_kol'
    end
  end
end
