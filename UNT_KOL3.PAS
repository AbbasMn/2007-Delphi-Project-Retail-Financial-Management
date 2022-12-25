unit unt_koli_foroshande;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButtons, DBCtrls, StdCtrls, Grids, DBGrids, ExtCtrls,
  SUIForm, DB;

type
  Tfrm_koli_foroshande = class(TForm)
    suiForm1: TsuiForm;
    DBGrid1: TDBGrid;
    G_shakhs: TGroupBox;
    Label6: TLabel;
    Label1: TLabel;
    E_search: TEdit;
    DBGrid2: TDBGrid;
    scsal: TDBLookupComboBox;
    dxToolButton1: TdxToolButton;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    DataSource2: TDataSource;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_roz: TEdit;
    E_mah: TEdit;
    E_sal: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Label13: TLabel;
    Edit1: TEdit;
    procedure E_searchChange(Sender: TObject);
    procedure kol_(s:string);
    procedure FormShow(Sender: TObject);
    procedure scsalClick(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure go_to(s:string);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure E_rozKeyPress(Sender: TObject; var Key: Char);
    procedure E_mahKeyPress(Sender: TObject; var Key: Char);
    procedure E_salKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_koli_foroshande: Tfrm_koli_foroshande;

implementation

uses unt_DataM_forosh, unt_DataM_group_by, unt_DataMo_shakhs,
  unt_print_koli_kharidar, unt_print_koli_foroshande,
  ynt_print_search_forosh, unt_main, unt_print_joziat_foroshande;

{$R *.dfm}

procedure Tfrm_koli_foroshande.go_to(s:string);
var ta,st,st2:string;
begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
  Frm_print_joziat_foroshande.QRL_type.Caption:='›—Ê‘Â«Ì ¬ﬁ«/ Œ«‰„'+' '+DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString+' '+DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString;
  st:=' select sum(mande)as mande_kol,sum(daryaft_nagd)as nagd_kol,sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
  ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol,sum(geymat_kol-ojrat_az_kh-keraye_az_kh) as kh_mount,sum(keraye_az_kh)as keraye_kh,sum(ojrat_az_kh)as ojrat_kh'+
  ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as nakhales_kol'+
  ' from t_forosh where family='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString)+'and name='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString);

  if s='sal' then
  begin
    Frm_print_joziat_foroshande.QRL_type.Caption:=Frm_print_joziat_foroshande.QRL_type.Caption+' '+' œ— ”«·  '+scsal.Text;
     st:=st+' and sal='+QuotedStr(scsal.Text);
    st2:='select * from t_forosh where family='+
    QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString)+' and name='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString);
    st2:=st2+' and sal='+QuotedStr(scsal.Text)+' order by tarikh,sh_kh,cod';
  end
  else
  begin
    Frm_print_joziat_foroshande.QRL_type.Caption:=Frm_print_joziat_foroshande.QRL_type.Caption+'  œ—  «—ÌŒ  '+ta;
    st:=st+' and tarikh='+QuotedStr(ta);
    st2:='select * from t_forosh where family='
    +QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString)+' and name='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString);
    st2:=st2+' and tarikh='+QuotedStr(ta)+' order by sh_kh,cod';
  end;
  DataM_forosh.ADOQuery_jam_forosh.SQL.Text:=st;
  DataM_forosh.ADOQuery_jam_forosh.Open;

  DataM_forosh.ADOQ_forosh.SQL.Text:=st2;
  DataM_forosh.ADOQ_forosh.Open;
  Frm_print_joziat_foroshande.QuickRep1.Preview;
end;
procedure Tfrm_koli_foroshande.kol_(s:string);
var ta:string;
begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
 if s='sal' then
 begin
  DataM_group_by.ADOQ_koli_foroshande.SQL.Text:='select  anjir_noe,tarikh,sum(vazn) as vazn_kol,sum(geymat_kol) as g_kol,fi from t_forosh  where name='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString)+' and family='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString)+' and sal='+QuotedStr(scsal.Text)+' group by tarikh,anjir_noe,fi  order by tarikh,anjir_noe desc';
  DataM_group_by.ADOQ_sum_koli_forosh.SQL.Text:='select  sum(vazn) as vazn_kol,sum(geymat_kol) as g_kol from t_forosh where name='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString)+' and family='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString)+' and sal='+QuotedStr(scsal.Text);
  frm_print_koli_foroshande.QRL_type.Caption:='’Ê—  Õ”«» ò·Ì ›—Ê‘ ¬ﬁ« / Œ«‰„    '+DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString+'  '+DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString+'  œ— ”«·  '+scsal.Text;
 end
 else
 begin
  DataM_group_by.ADOQ_koli_foroshande.SQL.Text:='select  anjir_noe,tarikh,sum(vazn) as vazn_kol,sum(geymat_kol) as g_kol,fi from t_forosh  where name='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString)+' and family='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString)+' and tarikh='+QuotedStr(ta)+' group by tarikh,anjir_noe,fi  order by anjir_noe desc';
  DataM_group_by.ADOQ_sum_koli_forosh.SQL.Text:='select  sum(vazn) as vazn_kol,sum(geymat_kol) as g_kol from t_forosh where name='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString)+' and family='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString)+' and tarikh='+QuotedStr(ta);
  frm_print_koli_foroshande.QRL_type.Caption:='’Ê—  Õ”«» ò·Ì ›—Ê‘ ¬ﬁ« / Œ«‰„    '+DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString+'  '+DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString+' œ—  «—ÌŒ  '+ta;
 end;

  DataM_group_by.ADOQ_koli_foroshande.Open;
  DataM_group_by.ADOQ_sum_koli_forosh.Open;

end;

procedure Tfrm_koli_foroshande.E_searchChange(Sender: TObject);
begin
DataMo_shakhs.ADOQ__foroshande.Locate('family',E_search.Text,[loPartialKey]);
end;

procedure Tfrm_koli_foroshande.FormShow(Sender: TObject);
begin
    DataMo_shakhs.show_foroshande;
    DataM_forosh.show_sal;
    kol_('sal');
end;

procedure Tfrm_koli_foroshande.scsalClick(Sender: TObject);
begin
 kol_('sal');
 if CheckBox1.Checked then
        go_to('sal');
end;

procedure Tfrm_koli_foroshande.dxToolButton1Click(Sender: TObject);
begin
  frm_print_koli_foroshande.QuickRep1.Preview;
end;

procedure Tfrm_koli_foroshande.Button1Click(Sender: TObject);
begin
  if (E_roz.Text='') or (E_sal.Text='')or(E_mah.Text='') then
    MessageBox(Handle,'—Ê“ ° ”«· Ê  „«Â »«Ìœ Ê«—œ ‘Ê‰œ.',' ÊÃÂ !',mb_ok or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
    kol_('tarikh');
     if CheckBox1.Checked then
        go_to('tarikh');
  end;
end;


procedure Tfrm_koli_foroshande.Edit1Change(Sender: TObject);
var s:string;
begin
  if Edit1.Text='' then
    s:='0'
  else
    s:=Edit1.Text;
  DataMo_shakhs.ADOQ__foroshande.Locate('cod',s,[loPartialKey]);
end;

procedure Tfrm_koli_foroshande.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_koli_foroshande.E_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_koli_foroshande.E_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_koli_foroshande.E_salKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
