unit unt_gozaresh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, StdCtrls, dxCore, dxButtons, Grids, DBGrids,
  SUIForm, SUIButton, DB;

type
  Tfrm_gozaresh = class(TForm)
    suiForm1: TsuiForm;
    GroupBox_tarikh: TGroupBox;
    RadioGroup1: TRadioGroup;
    G_hame: TGroupBox;
    DBGrid4: TDBGrid;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label8: TLabel;
    Label17: TLabel;
    DBText17: TDBText;
    DBText16: TDBText;
    DBText8: TDBText;
    Label16: TLabel;
    Label18: TLabel;
    Button2: TButton;
    GroupBox6: TGroupBox;
    g_sal: TGroupBox;
    Label12: TLabel;
    scsal: TDBLookupComboBox;
    g_mah: TGroupBox;
    Label15: TLabel;
    Label19: TLabel;
    suiButton1: TsuiButton;
    scsal2: TDBLookupComboBox;
    scmah: TComboBox;
    g_roz: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    btn: TsuiButton;
    scsalall: TDBLookupComboBox;
    scmahall: TComboBox;
    scrooz: TComboBox;
    DataSource1: TDataSource;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    GroupBox3: TGroupBox;
    DBGrid3: TDBGrid;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    RadioGroup2: TRadioGroup;
    Button1: TButton;
    Button3: TButton;
    Button5: TButton;
    G_do_tarikh: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    E_roz_ebteda: TEdit;
    Label9: TLabel;
    E_mah_ebteda: TEdit;
    Label11: TLabel;
    E_sal_ebteda: TEdit;
    E_roz_enteha: TEdit;
    Label6: TLabel;
    E_mah_enteha: TEdit;
    Label7: TLabel;
    E_sal_enteha: TEdit;
    btaeedall: TsuiButton;
    procedure show_search_type_;
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure search_between_two_date;
    procedure search_sal;
    procedure search_roz;
    procedure search_mah;
    procedure scsalClick(Sender: TObject);
    procedure suiButton1Click(Sender: TObject);
    procedure btnClick(Sender: TObject);
    function getmonth(month:string):string;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btaeedallClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_gozaresh: Tfrm_gozaresh;

implementation

uses unt_Datam_gozaresh, unt_print_gozaresh,
  unt_print_gozaresh_ranande_biron, unt_print_gozaresh_ranande_daron,
  unt_print_gozaresh_jam, unt_add_kharidha, unt_DataM_forosh;

{$R *.dfm}
procedure Tfrm_gozaresh.search_between_two_date;
var begin_,end_:string;
begin
  begin_:=E_sal_ebteda.Text+'/'+E_mah_ebteda.Text+'/'+E_roz_ebteda.Text;
  end_:=E_sal_enteha.Text+'/'+E_mah_enteha.Text+'/'+E_roz_enteha.Text;

  frm_print_gozaresh_kharidaran.QRL_type.Caption:=' ê“«—‘ êÌ—Ì «“  '+begin_+'  « '+end_;
  frm_print_gozaresh_ranande_biron.QRL_type.Caption:=' ê“«—‘ êÌ—Ì «“  '+begin_+'  « '+end_;
  frm_print_gozaresh_ranande_daron.QRL_type.Caption:=' ê“«—‘ êÌ—Ì «“  '+begin_+'  « '+end_;
  frm_print_gozaresh_jam.QRL_type.Caption:=' ê“«—‘ êÌ—Ì «“  '+begin_+'  « '+end_;

  Datam_gozaresh.ADOQ_goz_jens.SQL.Text:='select sum(vazn) as _vazn_kol,anjir_noe from t_forosh where tarikh between'+
  QuotedStr(begin_)+' and '+QuotedStr(end_)+' group by anjir_noe order by anjir_noe';
  Datam_gozaresh.ADOQ_goz_jens.Open;


  Datam_gozaresh.ADOQ_goz_kharidaran.SQL.Text:='select name_kh,family_kh,sum(vazn) as vazn_kol'+
  ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as geymat from t_forosh where  tarikh between '+
  QuotedStr(begin_)+' and '+QuotedStr(end_)+' group by family_kh,name_kh order by  family_kh,name_kh';
  Datam_gozaresh.ADOQ_goz_kharidaran.Open;

  Datam_gozaresh.ADOQ_ranande_daron.SQL.Text:='select ranande_daron,sum(vazn) as vazn_kol'+
  ',sum(keraye_az_kh_kol) as keraye from t_forosh where tarikh between '+
  QuotedStr(begin_)+' and '+QuotedStr(end_)+' and ranande_daron<>'+QuotedStr('')+'  group by ranande_daron order by  ranande_daron';
  Datam_gozaresh.ADOQ_ranande_daron.Open;

  Datam_gozaresh.ADOQ_ranande_bein.SQL.Text:='select ranande,sum(vazn) as vazn_kol'+
  ',sum(keraye_kol) as keraye from t_forosh where tarikh between '+
  QuotedStr(begin_)+' and '+QuotedStr(end_)+' and ranande<>'+QuotedStr('')+' group by ranande order by  ranande';
  Datam_gozaresh.ADOQ_ranande_bein.Open;

  Datam_gozaresh.ADOQ_jam.SQL.Text:='select sum(vazn) as vazn_kol,sum(keraye_kol) as keraye_biron'+
  ',sum(keraye_az_kh_kol) as keraye_daron,sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as geymat_kol_nakhales'+
  ',sum(geymat_kol-ojrat_kol-keraye_kol) as pardakht_be_foroshande,sum(ojrat_kol+ojrat_az_kh_kol)  as ojrat_kol from t_forosh where tarikh between '+
  QuotedStr(begin_)+' and '+QuotedStr(end_);
  Datam_gozaresh.ADOQ_jam.open;
end;
function Tfrm_gozaresh.getmonth(month:string):string;
begin
  if month='›—Ê—œÌ‰' then
    getmonth:='01'
  else
  if month='«—œÌ»Â‘ ' then
    getmonth:='02'
  else
  if month='Œ—œ«œ' then                                               
    getmonth:='03'
  else
  if month=' Ì—' then
    getmonth:='04'
  else
  if month='„—œ«œ' then
    getmonth:='05'
  else
  if month='‘Â—ÌÊ—' then
    getmonth:='06'
  else
  if month='„Â—' then
    getmonth:='07'
  else
  if month='¬»«‰' then
    getmonth:='08'
  else
  if month='¬–—' then
    getmonth:='09'
  else
  if month='»Â„‰' then
    getmonth:='11'
  else
  if month='«”›‰œ' then
    getmonth:='12'
  else
    getmonth:='10' //// „«Â  Ì—

end;
procedure Tfrm_gozaresh.search_roz;
begin
  frm_print_gozaresh_kharidaran.QRL_type.Caption:=' ê“«—‘ êÌ—Ì »— «”«”  «—ÌŒ    '+scrooz.Text+'  '+scmahall.Text+'  '+scsalall.Text;
  frm_print_gozaresh_ranande_biron.QRL_type.Caption:=' ê“«—‘ êÌ—Ì »— «”«”  «—ÌŒ    '+scrooz.Text+'  '+scmahall.Text+'  '+scsalall.Text;
  frm_print_gozaresh_ranande_daron.QRL_type.Caption:=' ê“«—‘ êÌ—Ì »— «”«”  «—ÌŒ    '+scrooz.Text+'  '+scmahall.Text+'  '+scsalall.Text;
  frm_print_gozaresh_jam.QRL_type.Caption:=' ê“«—‘ êÌ—Ì »— «”«”  «—ÌŒ    '+scrooz.Text+'  '+scmahall.Text+'  '+scsalall.Text;

  Datam_gozaresh.ADOQ_goz_jens.SQL.Text:='select sum(vazn) as _vazn_kol,anjir_noe from t_forosh where tarikh='+
  QuotedStr(scsalall.Text+'/'+getmonth(scmahall.Text)+'/'+scrooz.Text)+' group by anjir_noe order by anjir_noe';
  Datam_gozaresh.ADOQ_goz_jens.Open;


  Datam_gozaresh.ADOQ_goz_kharidaran.SQL.Text:='select name_kh,family_kh,sum(vazn) as vazn_kol'+
  ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as geymat from t_forosh where tarikh='+
  QuotedStr(scsalall.Text+'/'+getmonth(scmahall.Text)+'/'+scrooz.Text)+'group by family_kh,name_kh order by  family_kh,name_kh';
  Datam_gozaresh.ADOQ_goz_kharidaran.Open;

  Datam_gozaresh.ADOQ_ranande_daron.SQL.Text:='select ranande_daron,sum(vazn) as vazn_kol'+
  ',sum(keraye_az_kh_kol) as keraye from t_forosh where tarikh='+
  QuotedStr(scsalall.Text+'/'+getmonth(scmahall.Text)+'/'+scrooz.Text)+' and ranande_daron<>'+QuotedStr('')+'  group by ranande_daron order by  ranande_daron';
  Datam_gozaresh.ADOQ_ranande_daron.Open;

  Datam_gozaresh.ADOQ_ranande_bein.SQL.Text:='select ranande,sum(vazn) as vazn_kol'+
  ',sum(keraye_kol) as keraye from t_forosh where tarikh='+
  QuotedStr(scsalall.Text+'/'+getmonth(scmahall.Text)+'/'+scrooz.Text)+' and ranande<>'+QuotedStr('')+' group by ranande order by  ranande';
  Datam_gozaresh.ADOQ_ranande_bein.Open;

  Datam_gozaresh.ADOQ_jam.SQL.Text:='select sum(vazn) as vazn_kol,sum(keraye_kol) as keraye_biron'+
  ',sum(keraye_az_kh_kol) as keraye_daron,sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as geymat_kol_nakhales'+
  ',sum(geymat_kol-ojrat_kol-keraye_kol)   as pardakht_be_foroshande,sum(ojrat_kol+ojrat_az_kh_kol)  as ojrat_kol from t_forosh where tarikh='+
  QuotedStr(scsalall.Text+'/'+getmonth(scmahall.Text)+'/'+scrooz.Text);
  Datam_gozaresh.ADOQ_jam.open;
end;

procedure Tfrm_gozaresh.search_mah;
begin
  frm_print_gozaresh_kharidaran.QRL_type.Caption:=' ê“«—‘ êÌ—Ì »— «”«” ”«·   '+scsal2.Text+'  „«Â  '+scmah.Text;
  frm_print_gozaresh_ranande_biron.QRL_type.Caption:=' ê“«—‘ êÌ—Ì »— «”«” ”«·   '+scsal2.Text+'  „«Â  '+scmah.Text;
  frm_print_gozaresh_ranande_daron.QRL_type.Caption:=' ê“«—‘ êÌ—Ì »— «”«” ”«·   '+scsal2.Text+'  „«Â  '+scmah.Text;
  frm_print_gozaresh_jam.QRL_type.Caption:=' ê“«—‘ êÌ—Ì »— «”«” ”«·   '+scsal2.Text+'  „«Â  '+scmah.Text;

  Datam_gozaresh.ADOQ_goz_jens.SQL.Text:='select sum(vazn) as _vazn_kol,anjir_noe from t_forosh where sal='+
  QuotedStr(scsal2.Text)+'  and mah='+QuotedStr(getmonth(scmah.Text))+' group by anjir_noe order by anjir_noe';
  Datam_gozaresh.ADOQ_goz_jens.Open;

    Datam_gozaresh.ADOQ_goz_kharidaran.SQL.Text:='select name_kh,family_kh,sum(vazn) as vazn_kol'+
  ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as geymat from t_forosh where sal='+
  QuotedStr(scsal2.Text)+'  and mah='+QuotedStr(getmonth(scmah.Text))+' group by family_kh,name_kh order by  family_kh,name_kh';
  Datam_gozaresh.ADOQ_goz_kharidaran.Open;

  Datam_gozaresh.ADOQ_ranande_daron.SQL.Text:='select ranande_daron,sum(vazn) as vazn_kol'+
  ',sum(keraye_az_kh_kol) as keraye from t_forosh where sal='+
  QuotedStr(scsal2.Text)+'  and mah='+QuotedStr(getmonth(scmah.Text))+' and ranande_daron<>'+QuotedStr('')+' group by ranande_daron order by  ranande_daron';
  Datam_gozaresh.ADOQ_ranande_daron.Open;

  Datam_gozaresh.ADOQ_ranande_bein.SQL.Text:='select ranande,sum(vazn) as vazn_kol'+
  ',sum(keraye_kol) as keraye from t_forosh where sal='+
  QuotedStr(scsal2.Text)+'  and mah='+QuotedStr(getmonth(scmah.Text))+' group by ranande order by  ranande';
  Datam_gozaresh.ADOQ_ranande_bein.Open;

  Datam_gozaresh.ADOQ_jam.SQL.Text:='select sum(vazn) as vazn_kol,sum(keraye_kol) as keraye_biron'+
  ',sum(keraye_az_kh_kol) as keraye_daron,sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as geymat_kol_nakhales'+
  ',sum(geymat_kol-ojrat_kol-keraye_kol)  as pardakht_be_foroshande,sum(ojrat_kol+ojrat_az_kh_kol)  as ojrat_kol from t_forosh where sal='+
  QuotedStr(scsal2.Text)+'  and mah='+QuotedStr(getmonth(scmah.Text));
  Datam_gozaresh.ADOQ_jam.open;
end;

procedure Tfrm_gozaresh.search_sal;
begin
  frm_print_gozaresh_kharidaran.QRL_type.Caption:='ê“«—‘ êÌ—Ì »— «”«” ”«·   '+scsal.Text;
  frm_print_gozaresh_ranande_daron.QRL_type.Caption:='ê“«—‘ êÌ—Ì »— «”«” ”«·   '+scsal.Text;
  frm_print_gozaresh_ranande_biron.QRL_type.Caption:='ê“«—‘ êÌ—Ì »— «”«” ”«·   '+scsal.Text;
  frm_print_gozaresh_jam.QRL_type.Caption:='ê“«—‘ êÌ—Ì »— «”«” ”«·   '+scsal.Text;

  Datam_gozaresh.ADOQ_goz_jens.SQL.Text:='select sum(vazn) as _vazn_kol,anjir_noe from t_forosh where sal='+
  QuotedStr(scsal.Text)+' group by anjir_noe order by anjir_noe';
  Datam_gozaresh.ADOQ_goz_jens.Open;

  Datam_gozaresh.ADOQ_goz_kharidaran.SQL.Text:='select name_kh,family_kh,sum(vazn) as vazn_kol'+
  ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as geymat from t_forosh where sal='+
  QuotedStr(scsal.Text)+' group by family_kh,name_kh order by  family_kh,name_kh';
  Datam_gozaresh.ADOQ_goz_kharidaran.Open;

  Datam_gozaresh.ADOQ_ranande_daron.SQL.Text:='select ranande_daron,sum(vazn) as vazn_kol'+
  ',sum(keraye_az_kh_kol) as keraye from t_forosh where  sal='+
  QuotedStr(scsal.Text)+' and ranande_daron<>'+QuotedStr('')+' group by ranande_daron order by  ranande_daron';
  Datam_gozaresh.ADOQ_ranande_daron.Open;

  Datam_gozaresh.ADOQ_ranande_bein.SQL.Text:='select ranande,sum(vazn) as vazn_kol'+
  ',sum(keraye_kol) as keraye from t_forosh where  sal='+
  QuotedStr(scsal.Text)+' and ranande<>'+QuotedStr('')+' group by ranande order by  ranande';
  Datam_gozaresh.ADOQ_ranande_bein.Open;

  Datam_gozaresh.ADOQ_jam.SQL.Text:='select sum(vazn) as vazn_kol,sum(keraye_kol) as keraye_biron'+
  ',sum(keraye_az_kh_kol) as keraye_daron,sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as geymat_kol_nakhales'+
  ',sum(geymat_kol-ojrat_kol-keraye_kol)   as pardakht_be_foroshande,sum(ojrat_kol+ojrat_az_kh_kol)  as ojrat_kol from t_forosh where  sal='+
  QuotedStr(scsal.Text);
  Datam_gozaresh.ADOQ_jam.open;


end;
procedure Tfrm_gozaresh.show_search_type_;
begin
   if RadioGroup1.ItemIndex=0 then
   begin
    g_roz.Visible:=true;
    g_sal.Visible:=false;
    g_mah.Visible:=false;
    G_do_tarikh.Visible:=false;    
    search_roz;
   end;
   if RadioGroup1.ItemIndex=1 then
   begin
    g_roz.Visible:=false;
    g_sal.Visible:=false;
    g_mah.Visible:=true;
    G_do_tarikh.Visible:=false;
    search_mah;
   end;
   if RadioGroup1.ItemIndex=2 then
   begin
    g_roz.Visible:=false;
    g_sal.Visible:=true;
    g_mah.Visible:=false;
    G_do_tarikh.Visible:=false;
    search_sal;
   end;
   if RadioGroup1.ItemIndex=3 then
   begin
    g_roz.Visible:=false;
    g_sal.Visible:=false;
    g_mah.Visible:=false;
    G_do_tarikh.Visible:=true;
    search_between_two_date;
   end;
end;

procedure Tfrm_gozaresh.RadioGroup1Click(Sender: TObject);
begin
  show_search_type_;
end;

procedure Tfrm_gozaresh.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
  show_search_type_;
   DataM_forosh.show_sal;

end;

procedure Tfrm_gozaresh.scsalClick(Sender: TObject);
begin
  search_sal;
end;

procedure Tfrm_gozaresh.suiButton1Click(Sender: TObject);
begin
  search_mah;
end;

procedure Tfrm_gozaresh.btnClick(Sender: TObject);
begin
  search_roz;
end;

procedure Tfrm_gozaresh.Button1Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex=2 then
    frm_print_gozaresh_kharidaran.QuickRep1.Preview;
  if RadioGroup2.ItemIndex=1 then
    frm_print_gozaresh_ranande_daron.QuickRep1.Preview;
  if RadioGroup2.ItemIndex=0 then
    frm_print_gozaresh_ranande_biron.QuickRep1.Preview;

end;

procedure Tfrm_gozaresh.Button3Click(Sender: TObject);
begin
  frm_print_gozaresh_jam.QuickRep1.Preview;
end;

procedure Tfrm_gozaresh.Button5Click(Sender: TObject);
begin
frm_add_kharidha.show_calculator;
end;

procedure Tfrm_gozaresh.btaeedallClick(Sender: TObject);
begin
  search_between_two_date;
end;

end.
