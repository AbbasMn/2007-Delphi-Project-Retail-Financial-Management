object DataM_group_by: TDataM_group_by
  OldCreateOrder = False
  Left = 210
  Top = 202
  Height = 501
  Width = 300
  object ADOQ_koli_kharidar: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select tarikh,sum(vazn)as vazn_kol,sum(goni) as goni_kol,'
      
        'sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as g_kol from t' +
        '_forosh  group by tarikh order by tarikh'#10
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 120
    Top = 192
    object ADOQ_koli_kharidartarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQ_koli_kharidarvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQ_koli_kharidarg_kol: TFloatField
      FieldName = 'g_kol'
    end
    object ADOQ_koli_kharidargoni_kol: TFloatField
      FieldName = 'goni_kol'
    end
  end
  object ADOQ_sum_koli_kharid: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  sum(vazn) as vazn_kol,sum(goni)as goni_kol,'
      
        'sum(geymat_kol+ojrat_kol+keraye_kol) as g_kol,round(g_kol/vazn_k' +
        'ol)as miangin '
      'from t_forosh')
    Left = 184
    Top = 8
    object ADOQ_sum_koli_kharidvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQ_sum_koli_kharidg_kol: TFloatField
      FieldName = 'g_kol'
    end
    object ADOQ_sum_koli_kharidmiangin: TFloatField
      FieldName = 'miangin'
      ReadOnly = True
    end
    object ADOQ_sum_koli_kharidgoni_kol: TFloatField
      FieldName = 'goni_kol'
    end
  end
  object ADOQ_koli_foroshande: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  anjir_noe,tarikh,sum(vazn) as vazn_kol,sum(geymat_kol) a' +
        's g_kol,fi'
      'from t_forosh '
      'group by tarikh,anjir_noe,fi')
    Left = 48
    Top = 112
  end
  object ADOQ_sum_koli_forosh: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  sum(vazn) as vazn_kol,sum(geymat_kol) as g_kol '
      'from t_forosh')
    Left = 200
    Top = 123
  end
  object ADOQ_hasan_por: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  tarikh,sum(vazn) as vazn_kol,sum(ojrat_hasanpor) as oj_k' +
        'ol'
      'from t_forosh '
      'group by tarikh')
    Left = 192
    Top = 304
  end
  object ADoq_jam_hasanpor: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(vazn)as vazn_kol,sum(ojrat_kol+ojrat_az_kh_kol)as oj_' +
        'kol from t_forosh')
    Left = 72
    Top = 280
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=anjir' +
      '.mdb;Mode=Share Deny None;Extended Properties="";Persist Securit' +
      'y Info=False;Jet OLEDB:System database="";Jet OLEDB:Registry Pat' +
      'h="";Jet OLEDB:Database Password=803702414549;Jet OLEDB:Engine T' +
      'ype=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial' +
      ' Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New D' +
      'atabase Password="";Jet OLEDB:Create System Database=False;Jet O' +
      'LEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compa' +
      'ct=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLED' +
      'B:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 8
  end
end
