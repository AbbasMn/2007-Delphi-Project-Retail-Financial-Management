object DataM_forosh: TDataM_forosh
  OldCreateOrder = False
  Left = 206
  Top = 182
  Height = 522
  Width = 641
  object ADOQ_forosh: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_foroshAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_forosh')
    Left = 104
    Top = 8
    object ADOQ_foroshname: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object ADOQ_foroshfamily: TWideStringField
      FieldName = 'family'
      Size = 30
    end
    object ADOQ_foroshanjir_noe: TWideStringField
      FieldName = 'anjir_noe'
      Size = 10
    end
    object ADOQ_foroshvazn: TFloatField
      FieldName = 'vazn'
    end
    object ADOQ_foroshfi: TFloatField
      FieldName = 'fi'
    end
    object ADOQ_foroshojrat: TIntegerField
      FieldName = 'ojrat'
    end
    object ADOQ_foroshkeraye: TIntegerField
      FieldName = 'keraye'
    end
    object ADOQ_foroshgeymat_kol: TFloatField
      FieldName = 'geymat_kol'
    end
    object ADOQ_foroshojrat_kol: TFloatField
      FieldName = 'ojrat_kol'
    end
    object ADOQ_foroshkeraye_kol: TFloatField
      FieldName = 'keraye_kol'
    end
    object ADOQ_foroshremain: TFloatField
      FieldName = 'remain'
    end
    object ADOQ_foroshtarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQ_foroshcod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object ADOQ_foroshcod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
    object ADOQ_foroshgoni: TIntegerField
      FieldName = 'goni'
    end
    object ADOQ_foroshsh_kh: TFloatField
      FieldName = 'sh_kh'
    end
    object ADOQ_foroshdaryaft_nagd: TFloatField
      FieldName = 'daryaft_nagd'
    end
    object ADOQ_foroshbedehi: TFloatField
      FieldName = 'bedehi'
    end
    object ADOQ_foroshname_kh: TWideStringField
      FieldName = 'name_kh'
      Size = 30
    end
    object ADOQ_foroshfamily_kh: TWideStringField
      FieldName = 'family_kh'
      Size = 30
    end
    object ADOQ_foroshsal: TWideStringField
      FieldName = 'sal'
      Size = 6
    end
    object ADOQ_foroshmande: TFloatField
      FieldName = 'mande'
    end
    object ADOQ_foroshojrat_az_kh: TFloatField
      FieldName = 'ojrat_az_kh'
    end
    object ADOQ_foroshkeraye_az_kh: TFloatField
      FieldName = 'keraye_az_kh'
    end
    object ADOQ_foroshcod_kh: TIntegerField
      FieldName = 'cod_kh'
    end
    object ADOQ_foroshojrat_az_kh_kol: TFloatField
      FieldName = 'ojrat_az_kh_kol'
    end
    object ADOQ_foroshkeraye_az_kh_kol: TFloatField
      FieldName = 'keraye_az_kh_kol'
    end
    object ADOQ_foroshmount_kh: TFloatField
      FieldName = 'mount_kh'
    end
    object ADOQ_foroshojrat_hasanpor: TFloatField
      FieldName = 'ojrat_hasanpor'
    end
    object ADOQ_foroshranande: TWideStringField
      FieldName = 'ranande'
      Size = 30
    end
    object ADOQ_foroshranande_daron: TWideStringField
      FieldName = 'ranande_daron'
      Size = 30
    end
  end
  object ADOQuery_jam_forosh: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(mande)as mande_kol,'
      'sum(daryaft_nagd)as nagd_kol,'
      'sum(geymat_kol) as g_kol,sum(ojrat_az_kh_kol) as ojrat_kol'
      ', sum(keraye_az_kh_kol) as keraye_kol , '
      'sum(remain) as  remain_kol,sum(goni) as  goni_kol,'
      'sum(vazn) as vazn_kol,'
      'sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as nakhales_kol'
      ''
      'from t_forosh'
      '')
    Left = 56
    Top = 64
    object ADOQuery_jam_foroshmande_kol: TFloatField
      FieldName = 'mande_kol'
    end
    object ADOQuery_jam_foroshnagd_kol: TFloatField
      FieldName = 'nagd_kol'
    end
    object ADOQuery_jam_foroshg_kol: TFloatField
      FieldName = 'g_kol'
    end
    object ADOQuery_jam_foroshojrat_kol: TFloatField
      FieldName = 'ojrat_kol'
    end
    object ADOQuery_jam_foroshkeraye_kol: TFloatField
      FieldName = 'keraye_kol'
    end
    object ADOQuery_jam_foroshremain_kol: TFloatField
      FieldName = 'remain_kol'
    end
    object ADOQuery_jam_foroshgoni_kol: TFloatField
      FieldName = 'goni_kol'
    end
    object ADOQuery_jam_foroshvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQuery_jam_foroshnakhales_kol: TFloatField
      FieldName = 'nakhales_kol'
    end
  end
  object ADO_temp: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_temp')
    Left = 192
    object ADO_tempname: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object ADO_tempfamily: TWideStringField
      FieldName = 'family'
      Size = 30
    end
    object ADO_tempanjir_noe: TWideStringField
      FieldName = 'anjir_noe'
      Size = 10
    end
    object ADO_tempvazn: TFloatField
      FieldName = 'vazn'
    end
    object ADO_tempfi: TFloatField
      FieldName = 'fi'
    end
    object ADO_tempojrat: TIntegerField
      FieldName = 'ojrat'
    end
    object ADO_tempkeraye: TIntegerField
      FieldName = 'keraye'
    end
    object ADO_tempgeymat_kol: TFloatField
      FieldName = 'geymat_kol'
    end
    object ADO_tempojrat_kol: TFloatField
      FieldName = 'ojrat_kol'
    end
    object ADO_tempkeraye_kol: TFloatField
      FieldName = 'keraye_kol'
    end
    object ADO_tempremain: TFloatField
      FieldName = 'remain'
    end
    object ADO_temptarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADO_tempcod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object ADO_tempcod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
    object ADO_tempgoni: TIntegerField
      FieldName = 'goni'
    end
    object ADO_tempsh_kh: TFloatField
      FieldName = 'sh_kh'
    end
    object ADO_tempdaryaft_nagd: TFloatField
      FieldName = 'daryaft_nagd'
    end
    object ADO_tempbedehi: TFloatField
      FieldName = 'bedehi'
    end
    object ADO_tempname_kh: TWideStringField
      FieldName = 'name_kh'
      Size = 30
    end
    object ADO_tempfamily_kh: TWideStringField
      FieldName = 'family_kh'
      Size = 30
    end
    object ADO_tempsal: TWideStringField
      FieldName = 'sal'
      Size = 6
    end
    object ADO_tempmande: TFloatField
      FieldName = 'mande'
    end
    object ADO_tempojrat_az_kh: TFloatField
      FieldName = 'ojrat_az_kh'
    end
    object ADO_tempkeraye_az_kh: TFloatField
      FieldName = 'keraye_az_kh'
    end
    object ADO_tempcod_kh: TIntegerField
      FieldName = 'cod_kh'
    end
    object ADO_tempojrat_az_kh_kol: TFloatField
      FieldName = 'ojrat_az_kh_kol'
    end
    object ADO_tempkeraye_az_kh_kol: TFloatField
      FieldName = 'keraye_az_kh_kol'
    end
    object ADO_tempmount_kh: TFloatField
      FieldName = 'mount_kh'
    end
    object ADO_tempojrat_hasanpor: TFloatField
      FieldName = 'ojrat_hasanpor'
    end
    object ADO_tempranande: TWideStringField
      FieldName = 'ranande'
      Size = 30
    end
  end
  object ADOQ_sal: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select distinct sal from T_sal_fi')
    Left = 152
    Top = 64
    object ADOQ_salsal: TWideStringField
      FieldName = 'sal'
      Size = 6
    end
  end
  object ADOQ_jam_temp: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'sum(geymat_kol) as g_kol,sum(ojrat_az_kh_kol) as ojrat_kol'
      ', sum(keraye_az_kh_kol) as keraye_kol , '
      'sum(remain) as  remain_kol,sum(goni) as  goni_kol,'
      'sum(vazn) as vazn_kol,'
      'sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as nakhales_kol'
      ''
      'from t_temp'
      ''
      ''
      '')
    Left = 208
    Top = 120
    object ADOQ_jam_tempg_kol: TFloatField
      FieldName = 'g_kol'
    end
    object ADOQ_jam_tempojrat_kol: TFloatField
      FieldName = 'ojrat_kol'
    end
    object ADOQ_jam_tempkeraye_kol: TFloatField
      FieldName = 'keraye_kol'
    end
    object ADOQ_jam_tempremain_kol: TFloatField
      FieldName = 'remain_kol'
    end
    object ADOQ_jam_tempgoni_kol: TFloatField
      FieldName = 'goni_kol'
    end
    object ADOQ_jam_tempvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQ_jam_tempnakhales_kol: TFloatField
      FieldName = 'nakhales_kol'
    end
  end
  object ADOQ_print_kh: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(mount_kh) as kh_mount,'
      'round(sum(mount_kh)/sum(vazn),0) as miangin'
      'from t_forosh')
    Left = 56
    Top = 128
    object ADOQ_print_khkh_mount: TFloatField
      FieldName = 'kh_mount'
    end
    object ADOQ_print_khmiangin: TFloatField
      FieldName = 'miangin'
      ReadOnly = True
    end
  end
  object ADOQ_vazn_goni: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(goni) as  goni_kol,'
      'sum(vazn) as vazn_kol'
      'from t_forosh')
    Left = 384
    Top = 208
    object ADOQ_vazn_gonigoni_kol: TFloatField
      FieldName = 'goni_kol'
    end
    object ADOQ_vazn_gonivazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
  end
  object ADOQ_print_kh2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  sum(keraye_az_kh_kol)as keraye_kh,'
      'sum(ojrat_az_kh_kol)as ojrat_kh'
      ' from t_forosh')
    Left = 48
    Top = 184
    object ADOQ_print_kh2keraye_kh: TFloatField
      FieldName = 'keraye_kh'
    end
    object ADOQ_print_kh2ojrat_kh: TFloatField
      FieldName = 'ojrat_kh'
    end
  end
  object ADOQ_jame_ranande: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(vazn) as vazn_kol,sum(keraye_kol) as kol_keraye,sum(g' +
        'oni) as goni_kol '
      'from t_forosh')
    Left = 64
    Top = 264
    object ADOQ_jame_ranandevazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQ_jame_ranandekol_keraye: TFloatField
      FieldName = 'kol_keraye'
    end
    object ADOQ_jame_ranandegoni_kol: TFloatField
      FieldName = 'goni_kol'
    end
  end
  object ADOQ_hame: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_hameAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select sh_kh,tarikh,name_kh,family_kh'
      ' from t_forosh '
      ' group by sh_kh,tarikh,name_kh,family_kh')
    Left = 184
    Top = 192
    object ADOQ_hamesh_kh: TFloatField
      FieldName = 'sh_kh'
    end
    object ADOQ_hametarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQ_hamename_kh: TWideStringField
      FieldName = 'name_kh'
      Size = 30
    end
    object ADOQ_hamefamily_kh: TWideStringField
      FieldName = 'family_kh'
      Size = 30
    end
  end
  object ADOQ_update_forosh: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_forosh')
    Left = 176
    Top = 256
    object ADOQ_update_foroshname: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object ADOQ_update_foroshfamily: TWideStringField
      FieldName = 'family'
      Size = 30
    end
    object ADOQ_update_foroshanjir_noe: TWideStringField
      FieldName = 'anjir_noe'
      Size = 10
    end
    object ADOQ_update_foroshvazn: TFloatField
      FieldName = 'vazn'
    end
    object ADOQ_update_foroshfi: TFloatField
      FieldName = 'fi'
    end
    object ADOQ_update_foroshojrat: TIntegerField
      FieldName = 'ojrat'
    end
    object ADOQ_update_foroshkeraye: TIntegerField
      FieldName = 'keraye'
    end
    object ADOQ_update_foroshgeymat_kol: TFloatField
      FieldName = 'geymat_kol'
    end
    object ADOQ_update_foroshojrat_kol: TFloatField
      FieldName = 'ojrat_kol'
    end
    object ADOQ_update_foroshkeraye_kol: TFloatField
      FieldName = 'keraye_kol'
    end
    object ADOQ_update_foroshremain: TFloatField
      FieldName = 'remain'
    end
    object ADOQ_update_foroshtarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQ_update_foroshcod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object ADOQ_update_foroshcod_shakhs: TIntegerField
      FieldName = 'cod_shakhs'
    end
    object ADOQ_update_foroshgoni: TIntegerField
      FieldName = 'goni'
    end
    object ADOQ_update_foroshsh_kh: TFloatField
      FieldName = 'sh_kh'
    end
    object ADOQ_update_foroshdaryaft_nagd: TFloatField
      FieldName = 'daryaft_nagd'
    end
    object ADOQ_update_foroshbedehi: TFloatField
      FieldName = 'bedehi'
    end
    object ADOQ_update_foroshname_kh: TWideStringField
      FieldName = 'name_kh'
      Size = 30
    end
    object ADOQ_update_foroshfamily_kh: TWideStringField
      FieldName = 'family_kh'
      Size = 30
    end
    object ADOQ_update_foroshsal: TWideStringField
      FieldName = 'sal'
      Size = 6
    end
    object ADOQ_update_foroshmande: TFloatField
      FieldName = 'mande'
    end
    object ADOQ_update_foroshojrat_az_kh: TFloatField
      FieldName = 'ojrat_az_kh'
    end
    object ADOQ_update_foroshkeraye_az_kh: TFloatField
      FieldName = 'keraye_az_kh'
    end
    object ADOQ_update_foroshcod_kh: TIntegerField
      FieldName = 'cod_kh'
    end
    object ADOQ_update_foroshojrat_az_kh_kol: TFloatField
      FieldName = 'ojrat_az_kh_kol'
    end
    object ADOQ_update_foroshkeraye_az_kh_kol: TFloatField
      FieldName = 'keraye_az_kh_kol'
    end
    object ADOQ_update_foroshmount_kh: TFloatField
      FieldName = 'mount_kh'
    end
    object ADOQ_update_foroshojrat_hasanpor: TFloatField
      FieldName = 'ojrat_hasanpor'
    end
    object ADOQ_update_foroshranande: TWideStringField
      FieldName = 'ranande'
      Size = 30
    end
  end
  object ADOQ_jame_bank: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(bedehkar) as bedehkar_kol,sum(bestankar) as bestankar' +
        '_kol'
      ''
      'from t_bank')
    Left = 205
    Top = 320
    object ADOQ_jame_bankbedehkar_kol: TFloatField
      FieldName = 'bedehkar_kol'
    end
    object ADOQ_jame_bankbestankar_kol: TFloatField
      FieldName = 'bestankar_kol'
    end
  end
  object ADOQ_jame_ra_daron: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(vazn) as vazn_kol,sum(keraye_az_kh_kol) as kol_keraye' +
        ',sum(goni) as goni_kol '
      'from t_forosh')
    Left = 160
    Top = 369
    object ADOQ_jame_ra_daronvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQ_jame_ra_daronkol_keraye: TFloatField
      FieldName = 'kol_keraye'
    end
    object ADOQ_jame_ra_darongoni_kol: TFloatField
      FieldName = 'goni_kol'
    end
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
    Left = 24
    Top = 8
  end
  object ADOQuery_ran_daron: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select tarikh,sum(vazn) as vazn_kol,'
      'sum(keraye_az_kh_kol) as kol_keraye,'
      'sum(goni) as goni_kol '
      'from t_forosh'
      'group by tarikh')
    Left = 280
    Top = 16
    object ADOQuery_ran_darontarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQuery_ran_daronvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQuery_ran_daronkol_keraye: TFloatField
      FieldName = 'kol_keraye'
    end
    object ADOQuery_ran_darongoni_kol: TFloatField
      FieldName = 'goni_kol'
    end
  end
  object ADOQuery_ran_biron: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select tarikh,sum(vazn) as vazn_kol,'
      'sum(keraye_kol) as kol_keraye,'
      'sum(goni) as goni_kol '
      'from t_forosh'
      'group by tarikh')
    Left = 312
    Top = 65
    object ADOQuery_ran_birontarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQuery_ran_bironvazn_kol: TFloatField
      FieldName = 'vazn_kol'
    end
    object ADOQuery_ran_bironkol_keraye: TFloatField
      FieldName = 'kol_keraye'
    end
    object ADOQuery_ran_birongoni_kol: TFloatField
      FieldName = 'goni_kol'
    end
  end
  object ADOQ_find_eslahshavandeha: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select cod,vazn,geymat_kol,ojrat_az_kh,ojrat_kol ,'
      
        'keraye_az_kh,keraye_az_kh_kol,ranande_daron,keraye,keraye_kol,ra' +
        'nande'
      '  from t_forosh')
    Left = 232
    Top = 416
    object ADOQ_find_eslahshavandehacod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
    object ADOQ_find_eslahshavandehavazn: TFloatField
      FieldName = 'vazn'
    end
    object ADOQ_find_eslahshavandehageymat_kol: TFloatField
      FieldName = 'geymat_kol'
    end
    object ADOQ_find_eslahshavandehaojrat_az_kh: TFloatField
      FieldName = 'ojrat_az_kh'
    end
    object ADOQ_find_eslahshavandehaojrat_kol: TFloatField
      FieldName = 'ojrat_kol'
    end
    object ADOQ_find_eslahshavandehakeraye_az_kh: TFloatField
      FieldName = 'keraye_az_kh'
    end
    object ADOQ_find_eslahshavandehakeraye_az_kh_kol: TFloatField
      FieldName = 'keraye_az_kh_kol'
    end
    object ADOQ_find_eslahshavandeharanande_daron: TWideStringField
      FieldName = 'ranande_daron'
      Size = 30
    end
    object ADOQ_find_eslahshavandehakeraye: TIntegerField
      FieldName = 'keraye'
    end
    object ADOQ_find_eslahshavandehakeraye_kol: TFloatField
      FieldName = 'keraye_kol'
    end
    object ADOQ_find_eslahshavandeharanande: TWideStringField
      FieldName = 'ranande'
      Size = 30
    end
  end
  object ADOQ_jam_forosh2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(ojrat_az_kh_kol)as  o_az_kh_kol,'
      'sum(keraye_az_kh_kol)as kre_bein_kol,'
      'sum(keraye_kol) as kre_daron_kol,'
      'sum(ojrat_kol) as ojrat_kol,'
      
        'sum(ojrat_az_kh_kol+keraye_az_kh_kol+keraye_kol+ojrat_kol) as ja' +
        'm_kol'
      'from t_forosh'
      '')
    Left = 368
    Top = 144
    object ADOQ_jam_forosh2o_az_kh_kol: TFloatField
      FieldName = 'o_az_kh_kol'
    end
    object ADOQ_jam_forosh2kre_bein_kol: TFloatField
      FieldName = 'kre_bein_kol'
    end
    object ADOQ_jam_forosh2kre_daron_kol: TFloatField
      FieldName = 'kre_daron_kol'
    end
    object ADOQ_jam_forosh2ojrat_kol: TFloatField
      FieldName = 'ojrat_kol'
    end
    object ADOQ_jam_forosh2jam_kol: TFloatField
      FieldName = 'jam_kol'
    end
  end
  object ADOQ_vazn_bedon_ojrat: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'sum(vazn) as vazn_kol'
      'from t_forosh')
    Left = 384
    Top = 256
    object FloatField2: TFloatField
      FieldName = 'vazn_kol'
    end
  end
  object ADOQ_vazn_bedon_keraye: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'sum(vazn) as vazn_kol'
      'from t_forosh')
    Left = 384
    Top = 304
    object FloatField4: TFloatField
      FieldName = 'vazn_kol'
    end
  end
  object ADOQ_oj_for_factor_kh: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'ojrat_az_kh'
      'from t_forosh')
    Left = 376
    Top = 360
    object ADOQ_oj_for_factor_khojrat_az_kh: TFloatField
      FieldName = 'ojrat_az_kh'
    end
  end
  object ADOQ_ker_for_factor_kh: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      'keraye_az_kh'
      'from t_forosh')
    Left = 376
    Top = 408
    object FloatField3: TFloatField
      FieldName = 'keraye_az_kh'
    end
  end
  object ADOQ_mande_bank: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(bestankar-bedehkar) as mande_kol'
      ' from t_bank ')
    Left = 528
    Top = 280
    object ADOQ_mande_bankmande_kol: TFloatField
      FieldName = 'mande_kol'
    end
  end
  object ADOQ_bank2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_bank')
    Left = 488
    Top = 160
    object ADOQ_bank2moshakhasat_kol: TWideStringField
      FieldName = 'moshakhasat_kol'
      Size = 100
    end
    object ADOQ_bank2tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 15
    end
    object ADOQ_bank2sh_fish: TFloatField
      FieldName = 'sh_fish'
    end
    object ADOQ_bank2sharh: TWideStringField
      FieldName = 'sharh'
      Size = 61
    end
    object ADOQ_bank2bedehkar: TFloatField
      FieldName = 'bedehkar'
    end
    object ADOQ_bank2bestankar: TFloatField
      FieldName = 'bestankar'
    end
    object ADOQ_bank2mande: TFloatField
      FieldName = 'mande'
    end
    object ADOQ_bank2cod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
  end
end
