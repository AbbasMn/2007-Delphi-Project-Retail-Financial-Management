unit unt_DataMo_shakhs;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataMo_shakhs = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQ__foroshande: TADOQuery;
    ADOQ_kharidar: TADOQuery;
    ADOQ_sal_fi: TADOQuery;
    ADOQ_login: TADOQuery;
    ADOQ_insert_foroshande: TADOQuery;
    ADOQ_insert_kharidar: TADOQuery;
    ADOQ_ranande: TADOQuery;
    ADOQ_loginlogin_public: TWideStringField;
    ADOQ_loginlogin_user: TWideStringField;
    ADOQ_loginback: TWideStringField;
    ADOQ_loginpic: TWideStringField;
    ADOQ_loginbug_tarikh: TWideStringField;
    ADOQ_loginbug_forosh: TWideStringField;
    ADOQ_loginserial: TWideStringField;
    ADOQ_loginrecord_count: TWideStringField;
    ADOQ_edit_kharidar: TADOQuery;
    ADOQ_edit_foroshande: TADOQuery;
    ADOQ_show_ranande: TADOQuery;
    ADOQ_loginlogin_koli: TWideStringField;
    ADOQ_foroshande_eslah: TADOQuery;
    ADOQ_insert_ranande: TADOQuery;
    ADOQ_mosh_bank: TADOQuery;
    ADOq_show_sh_hesab: TADOQuery;
    ADOq_show_sh_hesabmoshakhasat_kol: TWideStringField;
    ADOQ_show_sh_hesab2: TADOQuery;
    ADOQ_show_sh_hesab2moshakhasat_kol: TWideStringField;
    ADOQ_bank_bamk: TADOQuery;
    ADOQ_foroshande_eslahname: TWideStringField;
    ADOQ_foroshande_eslahfamily: TWideStringField;
    ADOQ_foroshande_eslahtel_hamrah: TWideStringField;
    ADOQ_foroshande_eslahcod: TBCDField;
    ADOQ_foroshande_eslahtel_kar: TWideStringField;
    ADOQ_foroshande_eslahtel_manzel: TWideStringField;
    ADOQ_kharidarname: TWideStringField;
    ADOQ_kharidarfamily: TWideStringField;
    ADOQ_kharidartel_hamrah: TWideStringField;
    ADOQ_kharidarcod: TBCDField;
    ADOQ_kharidartel_kar: TWideStringField;
    ADOQ_kharidartel_manzel: TWideStringField;
    ADOQ_kharidarsh_kh: TIntegerField;
    ADOQ__foroshandename: TWideStringField;
    ADOQ__foroshandefamily: TWideStringField;
    ADOQ__foroshandetel_hamrah: TWideStringField;
    ADOQ__foroshandecod: TBCDField;
    ADOQ__foroshandetel_kar: TWideStringField;
    ADOQ__foroshandetel_manzel: TWideStringField;
    ADOQ_insert_foroshandename: TWideStringField;
    ADOQ_insert_foroshandefamily: TWideStringField;
    ADOQ_insert_foroshandetel_hamrah: TWideStringField;
    ADOQ_insert_foroshandecod: TBCDField;
    ADOQ_insert_foroshandetel_kar: TWideStringField;
    ADOQ_insert_foroshandetel_manzel: TWideStringField;
    ADOQ_insert_kharidarname: TWideStringField;
    ADOQ_insert_kharidarfamily: TWideStringField;
    ADOQ_insert_kharidartel_hamrah: TWideStringField;
    ADOQ_insert_kharidarcod: TBCDField;
    ADOQ_insert_kharidartel_kar: TWideStringField;
    ADOQ_insert_kharidartel_manzel: TWideStringField;
    ADOQ_insert_kharidarsh_kh: TIntegerField;
    ADOQ_ranandefamily: TWideStringField;
    ADOQ_ranandecod: TBCDField;
    ADOQ_insert_ranandefamily: TWideStringField;
    ADOQ_insert_ranandecod: TBCDField;
    ADOQ_show_ranandefamily: TWideStringField;
    ADOQ_show_ranandecod: TBCDField;
  procedure show_foroshande;
  procedure show_kharidar;
  procedure insert_foroshande(name,family,tel_hamrah,tel_kar,tel_manzel:string);
  procedure insert_kharidar(name,family,tel_hamrah,tel_kar,tel_manzel:string);
  procedure ADOQ__foroshandeAfterScroll(DataSet: TDataSet);
  procedure ADOQ_kharidarAfterScroll(DataSet: TDataSet);
  procedure show_ranande;
  procedure ADOQ_show_ranandeAfterScroll(DataSet: TDataSet);
  procedure ADOQ_foroshande_eslahAfterScroll(DataSet: TDataSet);
  procedure show_sh_hesab;
    procedure ADOq_show_sh_hesabAfterScroll(DataSet: TDataSet);
    procedure ADOQ_show_sh_hesab2AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataMo_shakhs: TDataMo_shakhs;                 

implementation

uses unt_search, unt_print_search, unt_search_forosh, unt__forosh,
  ynt_print_search_forosh, unt_koli_kharidar, unt_koli_foroshande,
  unt_add_kharidha, unt_DataM_forosh, unt_pardakht_be_foroshande,
  unt_search_for_ranande, unt_eslah_forosh, unt_eslah_asli,
  unt_search_ranande_daron, unt_search_bank, unt_frm_eslah_bank,
  unt_joziat_pardakht_Be_foroshande, unt_DataM_final,
  unt_nahve_pardakht_kharidar;

{$R *.dfm}
procedure TDataMo_shakhs.show_sh_hesab;
begin
  DataMo_shakhs.ADOq_show_sh_hesab.SQL.Text:= 'select moshakhasat_kol  from  T_bank_moshakhasat order by moshakhasat_kol';
  DataMo_shakhs.ADOq_show_sh_hesab.Open;

  DataMo_shakhs.ADOq_show_sh_hesab2.SQL.Text:= 'select moshakhasat_kol  from  T_bank_moshakhasat order by moshakhasat_kol';
  DataMo_shakhs.ADOq_show_sh_hesab2.Open;

end;

procedure TDataMo_shakhs.show_ranande;
begin
    DataMo_shakhs.ADOQ_show_ranande.SQL.Text:='select * from t_ranande order by family';
    DataMo_shakhs.ADOQ_show_ranande.Open;
end;

procedure TDataMo_shakhs.ADOQ_kharidarAfterScroll(DataSet: TDataSet);
begin
  if (frm_eslah_forosh<>nil)and(frm_eslah_forosh.showing) then
  begin

    frm_eslah_forosh.show_kharidha;
    frm_eslah_forosh.jozeiat_kharidha;

    DataM_final.ADOQ_timr_of_forosh.SQL.Text:='select * from t_time_of_forosh where cod_sh='+
    QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString);
    DataM_final.ADOQ_timr_of_forosh.Open;

    frm_eslah_forosh.L_time.Caption:=DataM_final.ADOQ_timr_of_foroshtime_.AsString;
    frm_nahve_pardakht_kharidar.L_nakhales_kol.Caption:=frm_eslah_forosh.DBText5.Caption;

  end;
if (Frm_joziat_pardakht_Be_foroshande<>nil)and(Frm_joziat_pardakht_Be_foroshande.showing) then
begin
 Frm_joziat_pardakht_Be_foroshande.show_joz_sal;
end;

if (frm_pardakht_be_foroshande<>nil)and(frm_pardakht_be_foroshande.showing) then
begin
  frm_pardakht_be_foroshande.type_;
end;

if (frm_search_forosh<>nil)and(frm_search_forosh.showing) then
begin
  frm_search_forosh.search_shakhs;
  frm_search_forosh.jame_shakhs;
end;


if (Frm_forosh<>nil)and(Frm_forosh.showing) then
begin
    Frm_forosh.L_moshakhasat.Caption:=ADOQ_kharidar.Fields[0].AsString+'   ' +ADOQ_kharidar.Fields[1].AsString;
    if not (frm_add_kharidha.L_name_kh.Caption=ADOQ_kharidarname.AsString) then
    begin
      frm_add_kharidha.show_temp;
      if DataM_forosh.ADO_temp.RecordCount > 0 then
        frm_add_kharidha.tagir_kharidar_with_temp;
    end;
end;

if (frm_koli_kharidar<>nil)and(frm_koli_kharidar.showing) then
begin
  frm_koli_kharidar.kol_('sal');
end;

 
if (frm_eslah_asli<>nil)and(frm_eslah_asli.showing) then
begin
  frm_eslah_asli.show_kharidha;
  frm_eslah_asli.jozeiat_kharidha;
end;


end;
procedure TDataMo_shakhs.show_foroshande;
begin
  DataMo_shakhs.ADOQ__foroshande.SQL.Text:='select * from T_foroshande order by family,name';
  DataMo_shakhs.ADOQ__foroshande.Open;
end;
procedure TDataMo_shakhs.show_kharidar;
begin
  DataMo_shakhs.ADOQ_kharidar.SQL.Text:='select * from T_kharidar order by family,name';
  DataMo_shakhs.ADOQ_kharidar.Open;
end;
procedure TDataMo_shakhs.insert_foroshande(name,family,tel_hamrah,tel_kar,tel_manzel:string);
begin
  ADOQ_insert_foroshande.SQL.Text:='insert into T_foroshande(name,family,tel_hamrah,tel_kar,tel_manzel)values('+QuotedStr(name)+','+QuotedStr(family)+','+QuotedStr(tel_hamrah)+','+QuotedStr(tel_kar)+','+QuotedStr(tel_manzel)+')';
  ADOQ_insert_foroshande.ExecSQL;
  show_foroshande;

end;
procedure TDataMo_shakhs.insert_kharidar(name,family,tel_hamrah,tel_kar,tel_manzel:string);
begin
  ADOQ_insert_kharidar.SQL.Text:='insert into T_kharidar(name,family,tel_hamrah,tel_kar,tel_manzel)values('+QuotedStr(name)+','+QuotedStr(family)+','+QuotedStr(tel_hamrah)+','+QuotedStr(tel_kar)+','+QuotedStr(tel_manzel)+')';
  ADOQ_insert_kharidar.ExecSQL;
  show_kharidar;

end;

procedure TDataMo_shakhs.ADOQ__foroshandeAfterScroll(DataSet: TDataSet);
begin

  if (frm_search<>nil)and(frm_search.showing) then
  begin
    if frm_search.RadioGroup1.ItemIndex=0 then
    begin
      frm_search.search_shakhs;
      frm_search.jame_shakhs;
      frm_search.L_type.Caption:='ÈÑ ÇÓÇÓ ÎÑíÏåÇ ÇÒ ÂÞÇí  '+DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString+' '+DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString;
      frm_print_search.QRL_type.Caption:='ÎÑíÏåÇí ÂÞÇí '+DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString+'  '+DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString+' '+'˜Ï ÔäÇÓÇíí '+DataMo_shakhs.ADOQ__foroshande.Fields[3].AsString;
    end;
  end;
 if (frm_koli_foroshande<>nil)and(frm_koli_foroshande.showing) then
 begin
    frm_koli_foroshande.kol_('sal');
 end;

 if (frm_pardakht_be_foroshande<>nil)and(frm_pardakht_be_foroshande.showing) then
  begin
    frm_pardakht_be_foroshande.hame;
  end;

 
end;





procedure TDataMo_shakhs.ADOQ_show_ranandeAfterScroll(DataSet: TDataSet);
begin



if (frm_search_for_ranande<> nil)and(frm_search_for_ranande.showing) then
begin
  if frm_search_for_ranande.RadioGroup1.ItemIndex=1 then
   begin
     frm_search_for_ranande.show_bare_ranande('sal');
     frm_search_for_ranande.jame_bare_ranand('sal');
   end
  else
   begin
    frm_search_for_ranande.show_bare_ranande('tarikh');
    frm_search_for_ranande.jame_bare_ranand('tarikh');
   end;
end;


if(frm_search_ranande_daron<> nil)and(frm_search_ranande_daron.showing) then
begin
  if frm_search_ranande_daron.RadioGroup1.ItemIndex=1 then
   begin
     frm_search_ranande_daron.show_bare_ranande('sal');
     frm_search_ranande_daron.jame_bare_ranand('sal');
   end
  else
   begin
    frm_search_ranande_daron.show_bare_ranande('tarikh');
    frm_search_ranande_daron.jame_bare_ranand('tarikh');

   end;
end;
end;

procedure TDataMo_shakhs.ADOQ_foroshande_eslahAfterScroll(
  DataSet: TDataSet);
begin
if (frm_eslah_asli<>nil)and(frm_eslah_asli.showing) then
  begin
    frm_eslah_asli.Label40.Caption:=DataMo_shakhs.ADOQ_foroshande_eslahname.AsString+' '+DataMo_shakhs.ADOQ_foroshande_eslahfamily.AsString;
  end;
end;



procedure TDataMo_shakhs.ADOq_show_sh_hesabAfterScroll(DataSet: TDataSet);
begin

  
  if (Frm_search_bank<>nil)and(Frm_search_bank.showing) then
  begin
   Frm_search_bank.type_;
   sleep(500);
   Frm_search_bank.type_;
  end;

end;

procedure TDataMo_shakhs.ADOQ_show_sh_hesab2AfterScroll(DataSet: TDataSet);
begin
if (frm_eslah_bank<>nil)and(frm_eslah_bank.showing) then
  begin
      frm_eslah_bank.type_;
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

  if frm_eslah_bank.DBT_code.Caption<>'' then
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
