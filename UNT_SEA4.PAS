unit unt_search_forosh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, SUIForm, DB,
  dxCore, dxButtons;

type
  TFrm_search_forosh = class(TForm)
    suiForm1: TsuiForm;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    L_type: TLabel;
    Label8: TLabel;
    DBText6: TDBText;
    Label10: TLabel;
    DBText8: TDBText;
    DataSource2: TDataSource;
    DataSource1: TDataSource;
    DataSource4: TDataSource;
    dxToolButton1: TdxToolButton;
    G_shakhs: TGroupBox;
    Label6: TLabel;
    E_search: TEdit;
    DBGrid2: TDBGrid;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    scsal: TDBLookupComboBox;
    DataSource3: TDataSource;
    Groupb_tarikh: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    E_roz: TEdit;
    E_mah: TEdit;
    E_sal: TEdit;
    Button1: TButton;
    Label12: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    DBText4: TDBText;
    DataSource5: TDataSource;
    Button2: TButton;
    Button5: TButton;
    procedure FormShow(Sender: TObject);
    procedure E_searchChange(Sender: TObject);
    procedure E_searchKeyPress(Sender: TObject; var Key: Char);
    procedure search_shakhs;
    procedure jame_shakhs;
    procedure Button2Click(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure scsalClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure E_rozKeyPress(Sender: TObject; var Key: Char);
    procedure E_mahKeyPress(Sender: TObject; var Key: Char);
    procedure E_salKeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_search_forosh: Tfrm_search_forosh;

implementation

uses unt_kharid, unt_DataMod_kharid, unt_main, unt_DataMo_shakhs, Taghvim,
  unt_print_search, unt_DataM_forosh, ynt_print_search_forosh,
  unt_add_kharidha;

{$R *.dfm}


procedure Tfrm_search_forosh.jame_shakhs;
var st,ta:string;
begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
  frm_search_forosh.L_type.Caption:=' Œ—ÌœÂ«Ì ¬ﬁ«/ Œ«‰„'+' '+DataMo_shakhs.ADOQ_kharidar.Fields[0].AsString+' '+DataMo_shakhs.ADOQ_kharidar.Fields[1].AsString;
  frm_print_search_forosh.QRL_type.Caption:='»— «”«” Œ—ÌœÂ«Ì «ﬁ« / Œ«‰„ '+' '+DataMo_shakhs.ADOQ_kharidar.Fields[0].AsString+' '+DataMo_shakhs.ADOQ_kharidar.Fields[1].AsString+' '+ '  òœ ‘‰«”«ÌÌ '+' '+DataMo_shakhs.ADOQ_kharidar.Fields[3].AsString;
  st:='select sum(mande)as mande_kol'+
  ',sum(daryaft_nagd)as nagd_kol,sum(geymat_kol) as g_kol'+
  ',sum(ojrat_kol) as ojrat_kol'+
  ', sum(keraye_kol) as keraye_kol'+
  ', sum(remain) as  remain_kol,sum(goni) as goni_kol'+
  ',sum(vazn) as vazn_kol,sum(geymat_kol-ojrat_az_kh-keraye_az_kh) as kh_mount'+
  ',sum(keraye_az_kh)as keraye_kh,sum(ojrat_az_kh)as ojrat_kh'+
  ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol)as nakhales_kol'+
  ' from t_forosh where family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidar.Fields[1].AsString)+'and name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidar.Fields[0].AsString);

   DataM_forosh.ADOQ_print_kh2.SQL.Text:='select  sum(keraye_az_kh_kol)as keraye_kh,sum(ojrat_az_kh_kol)as ojrat_kh from t_forosh'+
   ' where family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidar.Fields[1].AsString)+'and name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidar.Fields[0].AsString);

  if RadioGroup1.ItemIndex=1 then
  begin
    DataM_forosh.ADOQ_print_kh2.SQL.Text:=DataM_forosh.ADOQ_print_kh2.SQL.Text+' and sal='+QuotedStr(scsal.Text);
    st:=st+' and sal='+QuotedStr(scsal.Text);
    frm_search_forosh.L_type.Caption:=frm_search_forosh.L_type.Caption+'  œ— ”«· '+scsal.Text;
    frm_print_search_forosh.QRL_type.Caption:=frm_print_search_forosh.QRL_type.Caption+'  œ— ”«· '+scsal.Text;
  end
  else
  begin
   DataM_forosh.ADOQ_print_kh2.SQL.Text:=DataM_forosh.ADOQ_print_kh2.SQL.Text+' and tarikh='+QuotedStr(ta);
   st:=st+' and tarikh='+QuotedStr(ta);
   frm_search_forosh.L_type.Caption:=frm_search_forosh.L_type.Caption+'  œ—  «—ÌŒ '+ta;
   frm_print_search_forosh.QRL_type.Caption:=frm_print_search_forosh.QRL_type.Caption+'  œ—  «—ÌŒ '+ta;
  end;
  DataM_forosh.ADOQuery_jam_forosh.SQL.Text:=st;
  DataM_forosh.ADOQuery_jam_forosh.Open;
  DataM_forosh.ADOQ_print_kh2.Open;
end;

procedure Tfrm_search_forosh.search_shakhs;
var s,ta:string;
begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
  s:='select * from t_forosh where family_kh='
  +QuotedStr(DataMo_shakhs.ADOQ_kharidar.Fields[1].AsString)+'and name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidar.Fields[0].AsString);
  if RadioGroup1.ItemIndex=1 then
    s:=s+' and sal='+QuotedStr(scsal.Text)+' order by tarikh,sh_kh,cod'
  else
    s:=s+'and tarikh='+QuotedStr(ta)+' order by tarikh,sh_kh,cod';
  DataM_forosh.ADOQ_forosh.SQL.Text:=s;
  DataM_forosh.ADOQ_forosh.Open;
end;


procedure Tfrm_search_forosh.FormShow(Sender: TObject);
begin
  DataM_forosh.show_sal;
  RadioGroup1.ItemIndex:=0;
  if RadioGroup1.ItemIndex=1 then
   begin
     scsal.Visible:=true;
     Label1.Visible:=true;
     Groupb_tarikh.Visible:=false;
   end
  else
   begin
    scsal.Visible:=false;
    Label1.Visible:=false;
    Groupb_tarikh.Visible:=true;
   end;
  frm_search_forosh.WindowState:=wsMaximized;
  search_shakhs;
  jame_shakhs;
  DataMo_shakhs.show_kharidar;
end;

procedure Tfrm_search_forosh.E_searchChange(Sender: TObject);
begin
    DataMo_shakhs.ADOQ_kharidar.Locate('family',E_search.Text,[loPartialKey]);
    search_shakhs;
end;

procedure Tfrm_search_forosh.E_searchKeyPress(Sender: TObject; var Key: Char);
begin
  DataMod_kharid.ADOQuery_kharid.SQL.Text:='select * from t_forosh where cod <0';
  DataMod_kharid.ADOQuery_kharid.Open;
end;

procedure Tfrm_search_forosh.Button2Click(Sender: TObject);
begin
  search_shakhs;
  jame_shakhs;
end;



procedure Tfrm_search_forosh.dxToolButton1Click(Sender: TObject);
begin
    frm_print_search_forosh.QuickRep1.Preview;
end;

procedure TFrm_search_forosh.RadioGroup1Click(Sender: TObject);
begin
   if RadioGroup1.ItemIndex=1 then
   begin
     scsal.Visible:=true;
     Label1.Visible:=true;
     Groupb_tarikh.Visible:=false;
   end
  else
   begin
    scsal.Visible:=false;
    Label1.Visible:=false;
    Groupb_tarikh.Visible:=true;
   end;
  search_shakhs;
  jame_shakhs;
end;

procedure TFrm_search_forosh.scsalClick(Sender: TObject);
begin
if RadioGroup1.ItemIndex=1 then
begin
   search_shakhs;
   jame_shakhs;
end;
end;



procedure TFrm_search_forosh.Edit1Change(Sender: TObject);
var s:string;
begin
  if Edit1.Text='' then
    s:='0'
  else
    s:=Edit1.Text;
   DataMo_shakhs.ADOQ_kharidar.Locate('cod',s,[loPartialKey]);
end;

procedure TFrm_search_forosh.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_search_forosh.Button1Click(Sender: TObject);
begin
 if (E_roz.Text='') or (E_sal.Text='')or(E_mah.Text='') then
    MessageBox(Handle,'—Ê“ ° ”«· Ê  „«Â »«Ìœ Ê«—œ ‘Ê‰œ.',' ÊÃÂ !',mb_ok or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
    search_shakhs;
    jame_shakhs;
  end;
end;

procedure TFrm_search_forosh.E_rozKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_search_forosh.E_mahKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_search_forosh.E_salKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_search_forosh.Button5Click(Sender: TObject);
begin
frm_add_kharidha.show_calculator;
end;

end.
