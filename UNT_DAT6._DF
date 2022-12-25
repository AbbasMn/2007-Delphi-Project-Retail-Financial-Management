object DataM_final: TDataM_final
  OldCreateOrder = False
  Left = 8
  Top = 117
  Height = 628
  Width = 671
  object ADOQ_bank_hasan: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_bank_hasanpor')
    Left = 40
    Top = 8
    object ADOQ_bank_hasanbank_name: TWideStringField
      FieldName = 'bank_name'
      Size = 30
    end
  end
  object ADOQ_add_bank_hasan: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_bank_hasanpor')
    Left = 160
    Top = 8
  end
  object ADOQ_joziat_bedehi_khar: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_joziat_bedehi_kharAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select sh_kh, tarikh,name,family,mande from t_forosh')
    Left = 56
    Top = 64
    object ADOQ_joziat_bedehi_kharname: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object ADOQ_joziat_bedehi_kharfamily: TWideStringField
      FieldName = 'family'
      Size = 30
    end
    object ADOQ_joziat_bedehi_kharmande: TFloatField
      FieldName = 'mande'
    end
    object ADOQ_joziat_bedehi_kharsh_kh: TFloatField
      FieldName = 'sh_kh'
    end
    object ADOQ_joziat_bedehi_khartarikh: TWideStringField
      FieldName = 'tarikh'
    end
  end
  object ADOQ_sum_mande: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(mande) as mande_kol from t_forosh')
    Left = 304
    Top = 8
    object ADOQ_sum_mandemande_kol: TFloatField
      FieldName = 'mande_kol'
    end
  end
  object ADOQ_jam_bedeh_kharidar: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as jam_n' +
        'akhales_kol'
      'from t_forosh')
    Left = 416
    Top = 64
    object ADOQ_jam_bedeh_kharidarjam_nakhales_kol: TFloatField
      FieldName = 'jam_nakhales_kol'
    end
  end
  object ADOQ_temp_check: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_temp_check')
    Left = 56
    Top = 128
    object ADOQ_temp_checkbank_name: TWideStringField
      FieldName = 'bank_name'
      Size = 30
    end
    object ADOQ_temp_checkshobe: TWideStringField
      FieldName = 'shobe'
      Size = 25
    end
    object ADOQ_temp_checkjari: TWideStringField
      FieldName = 'jari'
      Size = 25
    end
    object ADOQ_temp_checksh_check: TWideStringField
      FieldName = 'sh_check'
      Size = 25
    end
    object ADOQ_temp_checktarikh_ch: TWideStringField
      FieldName = 'tarikh_ch'
    end
    object ADOQ_temp_checkmablagh_ch: TFloatField
      FieldName = 'mablagh_ch'
    end
    object ADOQ_temp_checkid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object ADOQ_index_sh_kh: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_index_sh_kharid')
    Left = 80
    Top = 200
    object ADOQ_index_sh_khid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_index_sh_khtarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQ_index_sh_khcod_sh: TWideStringField
      FieldName = 'cod_sh'
      Size = 10
    end
    object ADOQ_index_sh_khsh_kh: TWideStringField
      FieldName = 'sh_kh'
      Size = 10
    end
  end
  object ADOQ_t_checkha_sh_kharid: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_t_checkha_sh_kharidAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_checkha_sh_kharid')
    Left = 80
    Top = 264
    object ADOQ_t_checkha_sh_kharidbank_name: TWideStringField
      FieldName = 'bank_name'
      Size = 30
    end
    object ADOQ_t_checkha_sh_kharidshobe: TWideStringField
      FieldName = 'shobe'
      Size = 25
    end
    object ADOQ_t_checkha_sh_kharidjari: TWideStringField
      FieldName = 'jari'
      Size = 25
    end
    object ADOQ_t_checkha_sh_kharidsh_check: TWideStringField
      FieldName = 'sh_check'
      Size = 25
    end
    object ADOQ_t_checkha_sh_kharidtarikh_ch: TWideStringField
      FieldName = 'tarikh_ch'
    end
    object ADOQ_t_checkha_sh_kharidmablagh_ch: TFloatField
      FieldName = 'mablagh_ch'
    end
    object ADOQ_t_checkha_sh_kharidid: TWideStringField
      FieldName = 'id'
      Size = 10
    end
    object ADOQ_t_checkha_sh_kharidsh_kh: TWideStringField
      FieldName = 'sh_kh'
      Size = 10
    end
    object ADOQ_t_checkha_sh_kharidid_key: TAutoIncField
      FieldName = 'id_key'
      ReadOnly = True
    end
  end
  object ADOQ_t_naghde_sh_kharid: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_naghde_sh_kharid')
    Left = 80
    Top = 320
    object ADOQ_t_naghde_sh_kharidid: TWideStringField
      FieldName = 'id'
      Size = 10
    end
    object ADOQ_t_naghde_sh_kharidsh_kh: TWideStringField
      FieldName = 'sh_kh'
      Size = 10
    end
    object ADOQ_t_naghde_sh_kharidmablagh_nagd: TFloatField
      FieldName = 'mablagh_nagd'
    end
    object ADOQ_t_naghde_sh_kharidid_key: TAutoIncField
      FieldName = 'id_key'
      ReadOnly = True
    end
  end
  object ADOQ_jam_check_sh_kh: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(mablagh_ch) as jam_mablagh_ch from t_checkha_sh_khari' +
        'd')
    Left = 80
    Top = 368
    object ADOQ_jam_check_sh_khjam_mablagh_ch: TFloatField
      FieldName = 'jam_mablagh_ch'
    end
  end
  object ADOQ_T_bedeh_talab_sh_kharid: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_bedeh_talab_sh_kharid')
    Left = 80
    Top = 424
    object ADOQ_T_bedeh_talab_sh_kharidid: TWideStringField
      FieldName = 'id'
      Size = 10
    end
    object ADOQ_T_bedeh_talab_sh_kharidsh_kh: TWideStringField
      FieldName = 'sh_kh'
      Size = 10
    end
    object ADOQ_T_bedeh_talab_sh_kharidbedeh: TFloatField
      FieldName = 'bedeh'
    end
    object ADOQ_T_bedeh_talab_sh_kharidtalab: TFloatField
      FieldName = 'talab'
    end
    object ADOQ_T_bedeh_talab_sh_kharidid_key: TAutoIncField
      FieldName = 'id_key'
      ReadOnly = True
    end
    object ADOQ_T_bedeh_talab_sh_kharidtarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQ_T_bedeh_talab_sh_kharidcod_sh: TWideStringField
      FieldName = 'cod_sh'
      Size = 10
    end
  end
  object ADOQ_index_kol_kh: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_index_kol_kharid')
    Left = 261
    Top = 200
    object ADOQ_index_kol_khid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ADOQ_index_kol_khtarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQ_index_kol_khcod_sh: TWideStringField
      FieldName = 'cod_sh'
      Size = 10
    end
  end
  object ADOQ_t_checkha_kol_kharid: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_t_checkha_kol_kharidAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from t_checkha_kol_kharid')
    Left = 264
    Top = 264
    object ADOQ_t_checkha_kol_kharidbank_name: TWideStringField
      FieldName = 'bank_name'
      Size = 30
    end
    object ADOQ_t_checkha_kol_kharidshobe: TWideStringField
      FieldName = 'shobe'
      Size = 25
    end
    object ADOQ_t_checkha_kol_kharidjari: TWideStringField
      FieldName = 'jari'
      Size = 25
    end
    object ADOQ_t_checkha_kol_kharidsh_check: TWideStringField
      FieldName = 'sh_check'
      Size = 25
    end
    object ADOQ_t_checkha_kol_kharidtarikh_ch: TWideStringField
      FieldName = 'tarikh_ch'
    end
    object ADOQ_t_checkha_kol_kharidmablagh_ch: TFloatField
      FieldName = 'mablagh_ch'
    end
    object ADOQ_t_checkha_kol_kharidid: TWideStringField
      FieldName = 'id'
      Size = 10
    end
    object ADOQ_t_checkha_kol_kharidid_key: TAutoIncField
      FieldName = 'id_key'
      ReadOnly = True
    end
  end
  object ADOQ_t_naghde_kol_kharid: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_naghde_kol_kharid')
    Left = 264
    Top = 312
    object ADOQ_t_naghde_kol_kharidid: TWideStringField
      FieldName = 'id'
      Size = 10
    end
    object ADOQ_t_naghde_kol_kharidmablagh_nagd: TFloatField
      FieldName = 'mablagh_nagd'
    end
    object ADOQ_t_naghde_kol_kharidid_key: TAutoIncField
      FieldName = 'id_key'
      ReadOnly = True
    end
  end
  object ADOQ_jam_check_kol_kh: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select sum(mablagh_ch) as jam_mablagh_ch from t_checkha_kol_khar' +
        'id')
    Left = 264
    Top = 368
    object ADOQ_jam_check_kol_khjam_mablagh_ch: TFloatField
      FieldName = 'jam_mablagh_ch'
    end
  end
  object ADOQ_T_bedeh_talab_kol_kharid: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_bedeh_talab_kol_kharid')
    Left = 264
    Top = 424
    object ADOQ_T_bedeh_talab_kol_kharidid: TWideStringField
      FieldName = 'id'
      Size = 10
    end
    object ADOQ_T_bedeh_talab_kol_kharidbedeh: TFloatField
      FieldName = 'bedeh'
    end
    object ADOQ_T_bedeh_talab_kol_kharidtalab: TFloatField
      FieldName = 'talab'
    end
    object ADOQ_T_bedeh_talab_kol_kharidid_key: TAutoIncField
      FieldName = 'id_key'
      ReadOnly = True
    end
    object ADOQ_T_bedeh_talab_kol_kharidtarikh: TWideStringField
      FieldName = 'tarikh'
    end
    object ADOQ_T_bedeh_talab_kol_kharidcod_sh: TWideStringField
      FieldName = 'cod_sh'
      Size = 10
    end
  end
  object ADOQ_joziat_bedehi_khar_sh_kh: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_joziat_bedehi_kharAfterScroll
    Parameters = <>
    SQL.Strings = (
      'select sh_kh, tarikh,name,family,mande from t_forosh')
    Left = 240
    Top = 72
    object WideStringField1: TWideStringField
      FieldName = 'name'
      Size = 30
    end
    object WideStringField2: TWideStringField
      FieldName = 'family'
      Size = 30
    end
    object FloatField1: TFloatField
      FieldName = 'mande'
    end
    object FloatField2: TFloatField
      FieldName = 'sh_kh'
    end
    object WideStringField3: TWideStringField
      FieldName = 'tarikh'
    end
  end
  object ADOQ_sum_mande_sh_kh: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select sum(mande) as mande_kol from t_forosh')
    Left = 424
    Top = 8
    object FloatField3: TFloatField
      FieldName = 'mande_kol'
    end
  end
  object ADOQ_sum_mab_ch_on_temp: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  sum(mablagh_ch)  as jam_check from T_temp_check')
    Left = 216
    Top = 128
    object ADOQ_sum_mab_ch_on_tempjam_check: TFloatField
      FieldName = 'jam_check'
    end
  end
  object adoq_T_temp_factor_bedeh_talab: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from T_temp_factor_bedeh_talab')
    Left = 480
    Top = 176
    object adoq_T_temp_factor_bedeh_talabbadeh: TFloatField
      FieldName = 'badeh'
    end
    object adoq_T_temp_factor_bedeh_talabtalab: TFloatField
      FieldName = 'talab'
    end
    object adoq_T_temp_factor_bedeh_talabtype_kh: TWideStringField
      FieldName = 'type_kh'
      Size = 50
    end
    object adoq_T_temp_factor_bedeh_talabtarikh: TWideStringField
      FieldName = 'tarikh'
    end
  end
  object ADOQ_sum_temp_factor_bedeh_talab: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select  sum(badeh) as bedeh_kol,'
      'sum(talab) as talab_kol,sum(talab--badeh) as kol'
      'from T_temp_factor_bedeh_talab')
    Left = 480
    Top = 248
    object ADOQ_sum_temp_factor_bedeh_talabbedeh_kol: TFloatField
      FieldName = 'bedeh_kol'
    end
    object ADOQ_sum_temp_factor_bedeh_talabtalab_kol: TFloatField
      FieldName = 'talab_kol'
    end
    object ADOQ_sum_temp_factor_bedeh_talabkol: TFloatField
      FieldName = 'kol'
    end
  end
  object ADOQ_temp_bank: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  t_temp_bank')
    Left = 472
    Top = 388
    object ADOQ_temp_bankmoshakhasat_kol: TWideStringField
      FieldName = 'moshakhasat_kol'
      Size = 100
    end
    object ADOQ_temp_banktarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 15
    end
    object ADOQ_temp_banksh_fish: TFloatField
      FieldName = 'sh_fish'
    end
    object ADOQ_temp_banksharh: TWideStringField
      FieldName = 'sharh'
      Size = 61
    end
    object ADOQ_temp_bankbedehkar: TFloatField
      FieldName = 'bedehkar'
    end
    object ADOQ_temp_bankbestankar: TFloatField
      FieldName = 'bestankar'
    end
    object ADOQ_temp_bankmande: TFloatField
      FieldName = 'mande'
    end
    object ADOQ_temp_bankcod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
  end
  object ADOQ_bank2: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  t_bank')
    Left = 440
    Top = 324
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
  object ADOQ_timr_of_forosh: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  t_time_of_forosh')
    Left = 352
    Top = 540
    object ADOQ_timr_of_foroshcod_sh: TWideStringField
      FieldName = 'cod_sh'
      Size = 10
    end
    object ADOQ_timr_of_foroshsh_kh: TWideStringField
      FieldName = 'sh_kh'
      Size = 10
    end
    object ADOQ_timr_of_foroshtime: TDateTimeField
      FieldName = 'time'
    end
  end
  object ADOQ_bank3: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from  t_bank')
    Left = 568
    Top = 340
    object ADOQ_bank3moshakhasat_kol: TWideStringField
      FieldName = 'moshakhasat_kol'
      Size = 100
    end
    object ADOQ_bank3tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 15
    end
    object ADOQ_bank3sh_fish: TFloatField
      FieldName = 'sh_fish'
    end
    object ADOQ_bank3sharh: TWideStringField
      FieldName = 'sharh'
      Size = 61
    end
    object ADOQ_bank3bedehkar: TFloatField
      FieldName = 'bedehkar'
    end
    object ADOQ_bank3bestankar: TFloatField
      FieldName = 'bestankar'
    end
    object ADOQ_bank3mande: TFloatField
      FieldName = 'mande'
    end
    object ADOQ_bank3cod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
  end
  object ADOQ_bank4: TADOQuery
    Connection = DataMo_shakhs.ADOConnection1
    CursorType = ctStatic
    AfterScroll = ADOQ_bank4AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from  t_bank')
    Left = 544
    Top = 428
    object ADOQ_bank4moshakhasat_kol: TWideStringField
      FieldName = 'moshakhasat_kol'
      Size = 100
    end
    object ADOQ_bank4tarikh: TWideStringField
      FieldName = 'tarikh'
      Size = 15
    end
    object ADOQ_bank4sh_fish: TFloatField
      FieldName = 'sh_fish'
    end
    object ADOQ_bank4sharh: TWideStringField
      FieldName = 'sharh'
      Size = 61
    end
    object ADOQ_bank4bedehkar: TFloatField
      FieldName = 'bedehkar'
    end
    object ADOQ_bank4bestankar: TFloatField
      FieldName = 'bestankar'
    end
    object ADOQ_bank4mande: TFloatField
      FieldName = 'mande'
    end
    object ADOQ_bank4cod: TAutoIncField
      FieldName = 'cod'
      ReadOnly = True
    end
  end
end
