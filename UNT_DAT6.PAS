unit unt_DataM_final;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataM_final = class(TDataModule)
    ADOQ_bank_hasan: TADOQuery;
    ADOQ_bank_hasanbank_name: TWideStringField;
    ADOQ_add_bank_hasan: TADOQuery;
    ADOQ_joziat_bedehi_khar: TADOQuery;
    ADOQ_joziat_bedehi_kharname: TWideStringField;
    ADOQ_joziat_bedehi_kharfamily: TWideStringField;
    ADOQ_joziat_bedehi_kharmande: TFloatField;
    ADOQ_joziat_bedehi_kharsh_kh: TFloatField;
    ADOQ_joziat_bedehi_khartarikh: TWideStringField;
    ADOQ_sum_mande: TADOQuery;
    ADOQ_sum_mandemande_kol: TFloatField;
    ADOQ_jam_bedeh_kharidar: TADOQuery;
    ADOQ_jam_bedeh_kharidarjam_nakhales_kol: TFloatField;
    ADOQ_temp_check: TADOQuery;
    ADOQ_temp_checkbank_name: TWideStringField;
    ADOQ_temp_checkshobe: TWideStringField;
    ADOQ_temp_checkjari: TWideStringField;
    ADOQ_temp_checksh_check: TWideStringField;
    ADOQ_temp_checktarikh_ch: TWideStringField;
    ADOQ_temp_checkmablagh_ch: TFloatField;
    ADOQ_temp_checkid: TAutoIncField;
    ADOQ_index_sh_kh: TADOQuery;
    ADOQ_index_sh_khid: TAutoIncField;
    ADOQ_index_sh_khtarikh: TWideStringField;
    ADOQ_index_sh_khcod_sh: TWideStringField;
    ADOQ_index_sh_khsh_kh: TWideStringField;
    ADOQ_t_checkha_sh_kharid: TADOQuery;
    ADOQ_t_checkha_sh_kharidbank_name: TWideStringField;
    ADOQ_t_checkha_sh_kharidshobe: TWideStringField;
    ADOQ_t_checkha_sh_kharidjari: TWideStringField;
    ADOQ_t_checkha_sh_kharidsh_check: TWideStringField;
    ADOQ_t_checkha_sh_kharidtarikh_ch: TWideStringField;
    ADOQ_t_checkha_sh_kharidmablagh_ch: TFloatField;
    ADOQ_t_checkha_sh_kharidid: TWideStringField;
    ADOQ_t_checkha_sh_kharidsh_kh: TWideStringField;
    ADOQ_t_naghde_sh_kharid: TADOQuery;
    ADOQ_t_naghde_sh_kharidid: TWideStringField;
    ADOQ_t_naghde_sh_kharidsh_kh: TWideStringField;
    ADOQ_t_naghde_sh_kharidmablagh_nagd: TFloatField;
    ADOQ_t_naghde_sh_kharidid_key: TAutoIncField;
    ADOQ_jam_check_sh_kh: TADOQuery;
    ADOQ_jam_check_sh_khjam_mablagh_ch: TFloatField;
    ADOQ_T_bedeh_talab_sh_kharid: TADOQuery;
    ADOQ_T_bedeh_talab_sh_kharidid: TWideStringField;
    ADOQ_T_bedeh_talab_sh_kharidsh_kh: TWideStringField;
    ADOQ_T_bedeh_talab_sh_kharidbedeh: TFloatField;
    ADOQ_T_bedeh_talab_sh_kharidtalab: TFloatField;
    ADOQ_T_bedeh_talab_sh_kharidid_key: TAutoIncField;
    ADOQ_index_kol_kh: TADOQuery;
    ADOQ_index_kol_khid: TAutoIncField;
    ADOQ_index_kol_khtarikh: TWideStringField;
    ADOQ_index_kol_khcod_sh: TWideStringField;
    ADOQ_t_checkha_kol_kharid: TADOQuery;
    ADOQ_t_checkha_kol_kharidbank_name: TWideStringField;
    ADOQ_t_checkha_kol_kharidshobe: TWideStringField;
    ADOQ_t_checkha_kol_kharidjari: TWideStringField;
    ADOQ_t_checkha_kol_kharidsh_check: TWideStringField;
    ADOQ_t_checkha_kol_kharidtarikh_ch: TWideStringField;
    ADOQ_t_checkha_kol_kharidmablagh_ch: TFloatField;
    ADOQ_t_checkha_kol_kharidid: TWideStringField;
    ADOQ_t_checkha_kol_kharidid_key: TAutoIncField;
    ADOQ_t_naghde_kol_kharid: TADOQuery;
    ADOQ_t_naghde_kol_kharidid: TWideStringField;
    ADOQ_t_naghde_kol_kharidmablagh_nagd: TFloatField;
    ADOQ_t_naghde_kol_kharidid_key: TAutoIncField;
    ADOQ_jam_check_kol_kh: TADOQuery;
    ADOQ_T_bedeh_talab_kol_kharid: TADOQuery;
    ADOQ_T_bedeh_talab_kol_kharidid: TWideStringField;
    ADOQ_T_bedeh_talab_kol_kharidbedeh: TFloatField;
    ADOQ_T_bedeh_talab_kol_kharidtalab: TFloatField;
    ADOQ_T_bedeh_talab_kol_kharidid_key: TAutoIncField;
    ADOQ_jam_check_kol_khjam_mablagh_ch: TFloatField;
    ADOQ_joziat_bedehi_khar_sh_kh: TADOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    WideStringField3: TWideStringField;
    ADOQ_sum_mande_sh_kh: TADOQuery;
    FloatField3: TFloatField;
    ADOQ_sum_mab_ch_on_temp: TADOQuery;
    ADOQ_sum_mab_ch_on_tempjam_check: TFloatField;
    ADOQ_t_checkha_sh_kharidid_key: TAutoIncField;
    ADOQ_T_bedeh_talab_kol_kharidtarikh: TWideStringField;
    ADOQ_T_bedeh_talab_sh_kharidtarikh: TWideStringField;
    adoq_T_temp_factor_bedeh_talab: TADOQuery;
    adoq_T_temp_factor_bedeh_talabbadeh: TFloatField;
    adoq_T_temp_factor_bedeh_talabtalab: TFloatField;
    adoq_T_temp_factor_bedeh_talabtype_kh: TWideStringField;
    adoq_T_temp_factor_bedeh_talabtarikh: TWideStringField;
    ADOQ_T_bedeh_talab_kol_kharidcod_sh: TWideStringField;
    ADOQ_T_bedeh_talab_sh_kharidcod_sh: TWideStringField;
    ADOQ_sum_temp_factor_bedeh_talab: TADOQuery;
    ADOQ_sum_temp_factor_bedeh_talabbedeh_kol: TFloatField;
    ADOQ_sum_temp_factor_bedeh_talabtalab_kol: TFloatField;
    ADOQ_sum_temp_factor_bedeh_talabkol: TFloatField;
    ADOQ_temp_bank: TADOQuery;
    ADOQ_bank2: TADOQuery;
    ADOQ_bank2moshakhasat_kol: TWideStringField;
    ADOQ_bank2tarikh: TWideStringField;
    ADOQ_bank2sh_fish: TFloatField;
    ADOQ_bank2sharh: TWideStringField;
    ADOQ_bank2bedehkar: TFloatField;
    ADOQ_bank2bestankar: TFloatField;
    ADOQ_bank2mande: TFloatField;
    ADOQ_bank2cod: TAutoIncField;
    ADOQ_temp_bankmoshakhasat_kol: TWideStringField;
    ADOQ_temp_banktarikh: TWideStringField;
    ADOQ_temp_banksh_fish: TFloatField;
    ADOQ_temp_banksharh: TWideStringField;
    ADOQ_temp_bankbedehkar: TFloatField;
    ADOQ_temp_bankbestankar: TFloatField;
    ADOQ_temp_bankmande: TFloatField;
    ADOQ_temp_bankcod: TAutoIncField;
    ADOQ_timr_of_forosh: TADOQuery;
    ADOQ_timr_of_foroshcod_sh: TWideStringField;
    ADOQ_timr_of_foroshsh_kh: TWideStringField;
    ADOQ_timr_of_foroshtime: TDateTimeField;
    ADOQ_bank3: TADOQuery;
    ADOQ_bank3moshakhasat_kol: TWideStringField;
    ADOQ_bank3tarikh: TWideStringField;
    ADOQ_bank3sh_fish: TFloatField;
    ADOQ_bank3sharh: TWideStringField;
    ADOQ_bank3bedehkar: TFloatField;
    ADOQ_bank3bestankar: TFloatField;
    ADOQ_bank3mande: TFloatField;
    ADOQ_bank3cod: TAutoIncField;
    ADOQ_bank4: TADOQuery;
    ADOQ_bank4moshakhasat_kol: TWideStringField;
    ADOQ_bank4tarikh: TWideStringField;
    ADOQ_bank4sh_fish: TFloatField;
    ADOQ_bank4sharh: TWideStringField;
    ADOQ_bank4bedehkar: TFloatField;
    ADOQ_bank4bestankar: TFloatField;
    ADOQ_bank4mande: TFloatField;
    ADOQ_bank4cod: TAutoIncField;
    procedure show_bank_hasan;
    procedure ADOQ_joziat_bedehi_kharAfterScroll(DataSet: TDataSet);
    procedure ADOQ_t_checkha_sh_kharidAfterScroll(DataSet: TDataSet);
    procedure ADOQ_t_checkha_kol_kharidAfterScroll(DataSet: TDataSet);
    procedure ADOQ_bank4AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataM_final: TDataM_final;

implementation

uses unt_DataMo_shakhs, unt_joziat_pardakht_Be_foroshande,
  unt_eslah_nahve_pardakht, unt_frm_eslah_bank;

{$R *.dfm}

procedure TDataM_final.show_bank_hasan;
begin
  DataM_final.ADOQ_bank_hasan.SQL.Text:='select * from T_bank_hasanpor order by bank_name';
  DataM_final.ADOQ_bank_hasan.Open;
end;

procedure TDataM_final.ADOQ_joziat_bedehi_kharAfterScroll(
  DataSet: TDataSet);
begin
  if (Frm_joziat_pardakht_Be_foroshande<>nil)and(Frm_joziat_pardakht_Be_foroshande.Showing)then
  begin
    Frm_joziat_pardakht_Be_foroshande.L_sh_kh.Caption:=ADOQ_joziat_bedehi_kharsh_kh.AsString;
    Frm_joziat_pardakht_Be_foroshande.L_tarikh.Caption:=ADOQ_joziat_bedehi_khartarikh.AsString;
  end;
end;

procedure TDataM_final.ADOQ_t_checkha_sh_kharidAfterScroll(
  DataSet: TDataSet);
begin
  if ((frm_eslah_nahve_pardakht<>nil)and(frm_eslah_nahve_pardakht.Showing)) and (frm_eslah_nahve_pardakht.l_type_kh.Caption='sh_kh') then
  begin
     frm_eslah_nahve_pardakht.E_shobe.Text:=ADOQ_t_checkha_sh_kharidshobe.AsString;
     frm_eslah_nahve_pardakht.E_jari.Text:=ADOQ_t_checkha_sh_kharidjari.AsString;
     frm_eslah_nahve_pardakht.E_sh_check.Text:=ADOQ_t_checkha_sh_kharidsh_check.AsString;
     frm_eslah_nahve_pardakht.E_mablagh_check.Text:=ADOQ_t_checkha_sh_kharidmablagh_ch.AsString;
     frm_eslah_nahve_pardakht.E_tarikh.Text:=ADOQ_t_checkha_sh_kharidtarikh_ch.AsString;
     frm_eslah_nahve_pardakht.l_id_key.Caption:=ADOQ_t_checkha_sh_kharidid_key.AsString;
  end;
end;

procedure TDataM_final.ADOQ_t_checkha_kol_kharidAfterScroll(
  DataSet: TDataSet);
begin
  if ((frm_eslah_nahve_pardakht<>nil)and(frm_eslah_nahve_pardakht.Showing)) and (frm_eslah_nahve_pardakht.l_type_kh.Caption='kol_kh') then
  begin
     frm_eslah_nahve_pardakht.E_shobe.Text:=ADOQ_t_checkha_kol_kharidshobe.AsString;
     frm_eslah_nahve_pardakht.E_jari.Text:=ADOQ_t_checkha_kol_kharidjari.AsString;
     frm_eslah_nahve_pardakht.E_sh_check.Text:=ADOQ_t_checkha_kol_kharidsh_check.AsString;
     frm_eslah_nahve_pardakht.E_mablagh_check.Text:=ADOQ_t_checkha_kol_kharidmablagh_ch.AsString;
     frm_eslah_nahve_pardakht.E_tarikh.Text:=ADOQ_t_checkha_kol_kharidtarikh_ch.AsString;
     frm_eslah_nahve_pardakht.l_id_key.Caption:=ADOQ_t_checkha_kol_kharidid_key.AsString;
  end;
end;


procedure TDataM_final.ADOQ_bank4AfterScroll(DataSet: TDataSet);
begin
if (frm_eslah_bank<>nil)and(frm_eslah_bank.Showing) then
begin
  if frm_eslah_bank.CheckBox1.Checked then
  begin
    frm_eslah_bank.Label1.Visible:=true;
    frm_eslah_bank.scsal.Visible:=true;
  end
  else
  begin
    frm_eslah_bank.Label1.Visible:=false;
    frm_eslah_bank.scsal.Visible:=false;
  end;

  frm_eslah_bank.E_roz.Text:=ADOQ_bank4tarikh.AsString[9]+ADOQ_bank4tarikh.AsString[10];
  frm_eslah_bank.E_mah.Text:=ADOQ_bank4tarikh.AsString[6]+ADOQ_bank4tarikh.AsString[7];
  frm_eslah_bank.E_sal.Text:=ADOQ_bank4tarikh.AsString[1]+ADOQ_bank4tarikh.AsString[2]+ADOQ_bank4tarikh.AsString[3]+ADOQ_bank4tarikh.AsString[4];
  frm_eslah_bank.L_cod.Caption:=ADOQ_bank4cod.AsString;
  frm_eslah_bank.e_sh_fish.Text:=frm_eslah_bank.DBT_fish.Caption;
  frm_eslah_bank.e_bedehkar.Text:=frm_eslah_bank.DBT_bede.Caption;
  frm_eslah_bank.E_bestankar.Text:=frm_eslah_bank.DBT_bestan.Caption;
  frm_eslah_bank.Memo1.Text:=frm_eslah_bank.dbt_sharh.Caption;
  frm_eslah_bank.L_tarikh.Caption:=ADOQ_bank4tarikh.AsString;

  if frm_eslah_bank.DBT_fish.Caption<>''  then
    begin
    frm_eslah_bank.e_sh_fish.Visible:=true;
    frm_eslah_bank.e_bedehkar.Visible:=true;
    frm_eslah_bank.E_bestankar.Visible:=true;
    frm_eslah_bank.Memo1.Visible:=true;
    frm_eslah_bank.E_roz.Visible:=true;
    frm_eslah_bank.E_mah.Visible:=true;
    frm_eslah_bank.E_sal.Visible:=true;
    frm_eslah_bank.Button1.Visible:=true;  
  end
  else
  begin
    frm_eslah_bank.e_sh_fish.Visible:=false;
    frm_eslah_bank.e_bedehkar.Visible:=false;
    frm_eslah_bank.E_bestankar.Visible:=false;
    frm_eslah_bank.Memo1.Visible:=false;
    frm_eslah_bank.E_roz.Visible:=false;
    frm_eslah_bank.E_mah.Visible:=false;
    frm_eslah_bank.E_sal.Visible:=false;
    frm_eslah_bank.Button1.Visible:=false;
  end;
  end;
end;

end.
