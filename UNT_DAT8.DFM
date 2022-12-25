object DataMod_kharid: TDataMod_kharid
  OldCreateOrder = False
  Left = 381
  Top = 329
  Height = 150
  Width = 215
  object ADOQuery_kharid: TADOQuery
    Active = True
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_kharid')
    Left = 120
    Top = 8
  end
  object ADOQuery_jam_kharid: TADOQuery
    Active = True
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'
      
        ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum' +
        '(goni) as  goni_kol,'
      'sum(vazn) as vazn_kol'
      'from t_kharid')
    Left = 48
    Top = 48
    object ADOQuery_jam_kharidgoni_kol: TFloatField
      FieldName = 'goni_kol'
    end
    object ADOQuery_jam_kharidg_kol: TFloatField
      FieldName = 'g_kol'
    end
    object ADOQuery_jam_kharidojrat_kol: TFloatField
      FieldName = 'ojrat_kol'
    end
    object ADOQuery_jam_kharidkeraye_kol: TFloatField
      FieldName = 'keraye_kol'
    end
    object ADOQuery_jam_kharidremain_kol: TFloatField
      FieldName = 'remain_kol'
    end
    object ADOQuery_jam_kharidvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
  end
end
