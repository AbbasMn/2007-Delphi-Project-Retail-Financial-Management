unit unt_search_ranande_daron;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, dxCore, dxButtons, Grids, DBGrids,
  SUIForm, DB;

type
  Tfrm_search_ranande_daron = class(TForm)
    suiForm1: TsuiForm;
    DBGrid1: TDBGrid;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    DBText1: TDBText;
    L_type: TLabel;
    Label8: TLabel;
    DBText6: TDBText;
    Label10: TLabel;
    DBText8: TDBText;
    dxToolButton1: TdxToolButton;
    G_shakhs: TGroupBox;
    Label6: TLabel;
    Label1: TLabel;
    E_search: TEdit;
    DBGrid2: TDBGrid;
    RadioGroup1: TRadioGroup;
    scsal: TDBLookupComboBox;
    Groupb_tarikh: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    E_roz: TEdit;
    E_mah: TEdit;
    E_sal: TEdit;
    Button1: TButton;
    DataSource3: TDataSource;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource4: TDataSource;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Button5: TButton;
    procedure FormShow(Sender: TObject);
    procedure E_searchChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure show_bare_ranande(s:string);
    procedure jame_bare_ranand(s:string);
    procedure goto_(s:string);
    procedure scsalClick(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure joziat_daron_sal;
    procedure jame_joz_daron_sal;
    procedure joziat_daron_tarikh;
    procedure jame_joz_daron_tarikh;
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
  frm_search_ranande_daron: Tfrm_search_ranande_daron;

implementation

uses unt_print_haml_bar, unt_DataMo_shakhs, unt_DataM_forosh,
  unt_print_haml_bar_tarikh, unt_print_bar_daron, unt_Datam_joziat_ranande,
  unt_print_bar_daron_jiziat, unt_add_kharidha;

{$R *.dfm}
procedure Tfrm_search_ranande_daron.jame_joz_daron_tarikh;
var ta:string;
begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
  Datam_joziat_ranande.ADOQ_jam_joz_dron.SQL.Text:='select sum(vazn) as vazn_kol,sum(keraye_az_kh_kol) as kol_keraye'+
  ',sum(goni)as goni_kol from t_forosh where ranande_daron='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and tarikh='+QuotedStr(ta);
  Datam_joziat_ranande.ADOQ_jam_joz_dron.Open;
end;
procedure Tfrm_search_ranande_daron.joziat_daron_tarikh;
var ta:string;
begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
    Datam_joziat_ranande.ADOQ_joziat_daron.SQL.Text:='select tarikh,sum(vazn)as vazn_kol,sh_kh,sum(keraye_az_kh_kol)as ker_kol,keraye_az_kh'+
  ',sum(goni) as goni_kol,family_kh,name_kh from t_forosh where ranande_daron='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and tarikh='+QuotedStr(ta)+
  ' group by family_kh,name_kh,keraye_az_kh,tarikh,sh_kh order by tarikh';

  {Datam_joziat_ranande.ADOQ_joziat_daron.SQL.Text:='select tarikh,vazn,keraye_az_kh_kol,keraye_az_kh,goni,family_kh,name_kh'+
         ' from t_forosh where ranande_daron='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and tarikh='+QuotedStr(ta)+' order by tarikh';}
  Datam_joziat_ranande.ADOQ_joziat_daron.Open;
  Frm_print_bar_daron_jiziat.QRL_type.Caption:='?????? ???? ??? ??? ???? ???? ???? ????  '+    DataMo_shakhs.ADOQ_show_ranandefamily.AsString+'  ?? ?????  '+ta;
end;
//////////////////////////////////////
procedure Tfrm_search_ranande_daron.jame_joz_daron_sal;
begin
Frm_print_bar_daron_jiziat.QRL_type.Caption:='?????? ???? ??? ??? ???? ???? ???? ????  '+DataMo_shakhs.ADOQ_show_ranandefamily.AsString+'  ?? ???  '+scsal.Text;
  Datam_joziat_ranande.ADOQ_jam_joz_dron.SQL.Text:='select sum(vazn) as vazn_kol,sum(keraye_az_kh_kol) as kol_keraye'+
  ',sum(goni)as goni_kol from t_forosh where ranande_daron='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and sal='+QuotedStr(scsal.Text);
  Datam_joziat_ranande.ADOQ_jam_joz_dron.Open;
end;
procedure Tfrm_search_ranande_daron.joziat_daron_sal;
begin
  Datam_joziat_ranande.ADOQ_joziat_daron.SQL.Text:='select tarikh,sum(vazn)as vazn_kol,sh_kh,sum(keraye_az_kh_kol) as ker_kol,keraye_az_kh'+
  ',sum(goni) as goni_kol,family_kh,name_kh from t_forosh where ranande_daron='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and sal='+QuotedStr(scsal.Text)+
  ' group by family_kh,name_kh,keraye_az_kh,tarikh,sh_kh order by tarikh';
  Datam_joziat_ranande.ADOQ_joziat_daron.Open;

end;

procedure Tfrm_search_ranande_daron.goto_(s:string);
var ta:string;
begin
  if s='sal' then
  begin
    Frm_print_bar_daron.QRL_type.Caption:='???? ??? ??? ???? ???? ???? ????  ' +    DataMo_shakhs.ADOQ_show_ranandefamily.AsString+'  ?? ???  '+scsal.Text;
    Frm_print_bar_daron.QuickRep1.Preview;
  end
  else
  begin
    ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
    Frm_print_bar_daron.QRL_type.Caption:='???? ??? ??? ???? ???? ???? ????  '+    DataMo_shakhs.ADOQ_show_ranandefamily.AsString+'  ?? ?????  '+ta;
    Frm_print_bar_daron.QuickRep1.Preview;
  end;
end;
procedure Tfrm_search_ranande_daron.jame_bare_ranand(s:string);
var ta:string;
begin
  if DataMo_shakhs.ADOQ_show_ranande.RecordCount > 0 then
  begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
  if s='sal' then
  begin
    DataM_forosh.ADOQ_jame_ra_daron.SQL.Text:='select sum(vazn) as vazn_kol,sum(keraye_az_kh_kol) as kol_keraye,sum(goni) as goni_kol'+
    ' from t_forosh where ranande_daron='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and sal='+QuotedStr(scsal.Text);
    L_type.Caption:='???? ??? ??? ???? ???? ???? ????  '+DataMo_shakhs.ADOQ_show_ranandefamily.AsString+'  ?? ???  '+scsal.Text;
  end
  else
  begin
    DataM_forosh.ADOQ_jame_ra_daron.SQL.Text:='select sum(vazn) as vazn_kol,sum(keraye_az_kh_kol) as kol_keraye,sum(goni) as goni_kol'+
    ' from t_forosh where ranande_daron='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and tarikh='+QuotedStr(ta);
    L_type.Caption:='???? ??? ??? ???? ???? ???? ????  '+DataMo_shakhs.ADOQ_show_ranandefamily.AsString+'  ?? ????? '+ta;
  end;
  DataM_forosh.ADOQ_jame_ra_daron.open;
  end;
end;
procedure Tfrm_search_ranande_daron.show_bare_ranande(s:string);
var ta:string;
begin
  if DataMo_shakhs.ADOQ_show_ranande.RecordCount > 0 then
  begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
  if s='sal' then
  begin
    DataM_forosh.ADOQuery_ran_daron.SQL.Text:='select tarikh,sum(vazn) as vazn_kol,'+
    'sum(keraye_az_kh_kol) as kol_keraye,sum(goni) as goni_kol from t_forosh where ranande_daron='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and sal='+QuotedStr(scsal.Text)+
    'group by tarikh';
   /// 'select * from t_forosh where ranande_daron='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and sal='+QuotedStr(scsal.Text);//+' group by tarikh';
  end
  else
  begin
    DataM_forosh.ADOQuery_ran_daron.SQL.Text:='select tarikh,sum(vazn) as vazn_kol,'+
    'sum(keraye_az_kh_kol) as kol_keraye,sum(goni) as goni_kol from t_forosh where ranande_daron='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and tarikh='+QuotedStr(ta)+
    'group by tarikh';

  end;

  DataM_forosh.ADOQuery_ran_daron.Open;
  end;
end;

procedure Tfrm_search_ranande_daron.FormShow(Sender: TObject);
begin
  DataM_forosh.show_sal;
  DataMo_shakhs.show_ranande;
  frm_search_ranande_daron.WindowState:=wsMaximized;
  RadioGroup1.ItemIndex:=1;
  scsal.Visible:=true;
  Label1.Visible:=true;
  Groupb_tarikh.Visible:=false;
  show_bare_ranande('sal');
  jame_bare_ranand('sal');
end;

procedure Tfrm_search_ranande_daron.E_searchChange(Sender: TObject);
begin
  DataMo_shakhs.ADOQ_show_ranande.Locate('family',E_search.Text,[loPartialKey]);
end;

procedure Tfrm_search_ranande_daron.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=1 then
   begin
     scsal.Visible:=true;
     Label1.Visible:=true;
     Groupb_tarikh.Visible:=false;
     show_bare_ranande('sal');
     jame_bare_ranand('sal');
   end
  else
   begin
    scsal.Visible:=false;
    Label1.Visible:=false;
    Groupb_tarikh.Visible:=true;
    show_bare_ranande('tarikh');
    jame_bare_ranand('tarikh');
   end;
end;

procedure Tfrm_search_ranande_daron.Button1Click(Sender: TObject);
begin
  if (E_roz.Text='') or (E_sal.Text='')or(E_mah.Text='') then
    MessageBox(Handle,'??? ? ??? ?  ??? ???? ???? ????.','???? !',mb_ok or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
    show_bare_ranande('tarikh');
    jame_bare_ranand('tarikh');
  end;
end;

procedure Tfrm_search_ranande_daron.scsalClick(Sender: TObject);
begin
  show_bare_ranande('sal');
  jame_bare_ranand('sal');
end;

procedure Tfrm_search_ranande_daron.dxToolButton1Click(Sender: TObject);
begin
if CheckBox1.Checked then
 begin
  if RadioGroup1.ItemIndex=0 then
  begin
     jame_joz_daron_tarikh;
     joziat_daron_tarikh;
     Frm_print_bar_daron_jiziat.QuickRep1.Preview;
  end
  else
  begin
     jame_joz_daron_sal;
     joziat_daron_sal;
     Frm_print_bar_daron_jiziat.QuickRep1.Preview;
  end;
 end
else
begin
  if RadioGroup1.ItemIndex=0 then
    goto_('tarikh')
  else
    goto_('sal');
end;
end;

procedure Tfrm_search_ranande_daron.Button2Click(Sender: TObject);
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



procedure Tfrm_search_ranande_daron.E_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_search_ranande_daron.E_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_search_ranande_daron.E_salKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_search_ranande_daron.Button5Click(Sender: TObject);
begin
frm_add_kharidha.show_calculator;
end;

end.
