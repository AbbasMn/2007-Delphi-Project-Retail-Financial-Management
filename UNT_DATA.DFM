object Datam_joziat_ranande: TDatam_joziat_ranande
  OldCreateOrder = False
  Left = 376
  Top = 231
  Height = 226
  Width = 238
  object ADOQ_joziat_daron: TADOQuery
    Active = True
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select tarikh,sum(vazn) as vazn_kol,sh_kh,'
      'sum(keraye_az_kh_kol) as ker_kol,keraye_az_kh,'
      'sum(goni) as goni_kol,family_kh,name_kh'
      'from t_forosh'
      'group by family_kh,name_kh,keraye_az_kh,tarikh,sh_kh'
      'order by tarikh')
    Left = 32
    Top = 8
    object ADOQ_joziat_darontarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQ_joziat_daronvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQ_joziat_daronsh_kh: TFloatField
      FieldName = 'sh_kh'
    end
    object ADOQ_joziat_daronker_kol: TFloatField
      FieldName = 'ker_kol'
    end
    object ADOQ_joziat_daronkeraye_az_kh: TFloatField
      FieldName = 'keraye_az_kh'
    end
    object ADOQ_joziat_darongoni_kol: TFloatField
      FieldName = 'goni_kol'
    end
    object ADOQ_joziat_daronfamily_kh: TWideStringField
      FieldName = 'family_kh'
      Size = 30
    end
    object ADOQ_joziat_daronname_kh: TWideStringField
      FieldName = 'name_kh'
      Size = 30
    end
  end
  object ADOQ_joziat_boron: TADOQuery
    Active = True
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select tarikh,vazn,'
      'keraye_kol,keraye,'
      'goni,name,family'
      'from t_forosh'
      'order by tarikh')
    Left = 40
    Top = 96
    object ADOQ_joziat_borontarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQ_joziat_boronvazn: TFloatField
      FieldName = 'vazn'
    end
    object ADOQ_joziat_boronkeraye_kol: TFloatField
      FieldName = 'keraye_kol'
    end
    object ADOQ_joziat_boronkeraye: TIntegerField
      FieldName = 'keraye'
    end
    object ADOQ_joziat_borongoni: TIntegerField
      FieldName = 'goni'
    end
    object ADOQ_joziat_boronname: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object ADOQ_joziat_boronfamily: TWideStringField
      FieldName = 'family'
      Size = 30
    end
  end
  object ADOQ_jam_joz_dron: TADOQuery
    Active = True
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(vazn) as vazn_kol,sum(keraye_az_kh_kol) as kol_keraye' +
        ',sum(goni) as goni_kol '
      'from t_forosh')
    Left = 144
    Top = 16
    object ADOQ_jam_joz_dronvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQ_jam_joz_dronkol_keraye: TFloatField
      FieldName = 'kol_keraye'
    end
    object ADOQ_jam_joz_drongoni_kol: TFloatField
      FieldName = 'goni_kol'
    end
  end
  object ADOQ_jam_joz_boron: TADOQuery
    Active = True
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(vazn) as vazn_kol,sum(keraye_kol) as kol_keraye,sum(g' +
        'oni) as goni_kol '
      'from t_forosh')
    Left = 144
    Top = 120
    object ADOQ_jam_joz_boronvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQ_jam_joz_boronkol_keraye: TFloatField
      FieldName = 'kol_keraye'
    end
    object ADOQ_jam_joz_borongoni_kol: TFloatField
      FieldName = 'goni_kol'
    end
  end
end
