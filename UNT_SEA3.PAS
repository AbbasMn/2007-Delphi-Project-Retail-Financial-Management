{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit unt_search_for_ranande;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, ExtCtrls, dxCore, dxButtons, Grids,
  DBGrids, SUIForm;

type
  Tfrm_search_for_ranande = class(TForm)
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
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Button5: TButton;
    procedure E_searchChange(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure show_bare_ranande(s:string);
    procedure jame_bare_ranand(s:string);
    procedure Button1Click(Sender: TObject);
    procedure scsalClick(Sender: TObject);
    procedure goto_(s:string);
    procedure dxToolButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure joziat_boron_sal;
    procedure jame_joziat_boron_sal;
    procedure joziat_boron_tarikh;
    procedure jame_joziat_boron_tarikh;
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
  frm_search_for_ranande: Tfrm_search_for_ranande;

implementation

uses unt_DataMo_shakhs, unt_DataM_forosh, unt_print_haml_bar, unt_main,
  unt_print_haml_bar_tarikh, unt_Datam_joziat_ranande,
  unt_print_hamlbar_joziat, unt_add_kharidha;

{$R *.dfm}
procedure Tfrm_search_for_ranande.jame_joziat_boron_tarikh;
var ta:string;
begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
  Datam_joziat_ranande.ADOQ_jam_joz_boron.SQL.Text:='select sum(vazn) as vazn_kol,sum(keraye_kol) as kol_keraye,sum(goni) as goni_kol'+
  ' from t_forosh  where ranande='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and tarikh='+QuotedStr(ta);
  Datam_joziat_ranande.ADOQ_jam_joz_boron.Open;
end;
procedure Tfrm_search_for_ranande.joziat_boron_tarikh;
var ta:string;
begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
  Datam_joziat_ranande.ADOQ_joziat_boron.SQL.Text:='select tarikh,vazn,keraye_kol,keraye,goni,name,family'+
  ' from t_forosh  where ranande='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and tarikh='+QuotedStr(ta)+' order by tarikh';
  Datam_joziat_ranande.ADOQ_joziat_boron.Open;
  frm_print_hamlbar_joziat.QRL_type.Caption:='Ã“∆Ì«  ·Ì”  Õ„· »«— »Ì‰ ‘Â—Ì  Ê”ÿ ¬ﬁ«Ì  '+    DataMo_shakhs.ADOQ_show_ranandefamily.AsString+'  œ—  «—ÌŒ  '+ta;
end;
////////////////////////////////////
procedure Tfrm_search_for_ranande.jame_joziat_boron_sal;
begin
  Datam_joziat_ranande.ADOQ_jam_joz_boron.SQL.Text:='select sum(vazn) as vazn_kol,sum(keraye_kol) as kol_keraye,sum(goni) as goni_kol'+
  ' from t_forosh  where ranande='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and sal='+QuotedStr(scsal.Text);
  Datam_joziat_ranande.ADOQ_jam_joz_boron.Open;
end;
procedure Tfrm_search_for_ranande.joziat_boron_sal;
begin
  Datam_joziat_ranande.ADOQ_joziat_boron.SQL.Text:='select tarikh,vazn,keraye_kol,keraye,goni,name,family'+
  ' from t_forosh  where ranande='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and sal='+QuotedStr(scsal.Text)+' order by tarikh';
  Datam_joziat_ranande.ADOQ_joziat_boron.Open;
  frm_print_hamlbar_joziat.QRL_type.Caption:='Ã“∆Ì«  ·Ì”  Õ„· »«— »Ì‰ ‘Â—Ì  Ê”ÿ ¬ﬁ«Ì  '+    DataMo_shakhs.ADOQ_show_ranandefamily.AsString+'  œ— ”«·  '+scsal.Text;
end;
procedure Tfrm_search_for_ranande.goto_(s:string);
var ta:string;
begin
ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
  if s='sal' then
  begin
    Frm_print_haml_bar.QRL_type.Caption:='·Ì”  Õ„· »«— »Ì‰ ‘Â—Ì  Ê”ÿ ¬ﬁ«Ì  '+    DataMo_shakhs.ADOQ_show_ranandefamily.AsString+'  œ— ”«·  '+scsal.Text;
    Frm_print_haml_bar.QuickRep1.Preview;
  end
  else
  begin

    Frm_print_haml_bar_tarikh.QRL_type.Caption:='·Ì”  Õ„· »«— »Ì‰ ‘Â—Ì  Ê”ÿ ¬ﬁ«Ì  '+    DataMo_shakhs.ADOQ_show_ranandefamily.AsString+'  œ—  «—ÌŒ  '+ta;
    Frm_print_haml_bar_tarikh.QuickRep1.Preview;
  end;
end;
procedure Tfrm_search_for_ranande.jame_bare_ranand(s:string);
var ta:string;
begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
  if DataMo_shakhs.ADOQ_show_ranande.RecordCount > 0 then
  begin
  if s='sal' then
  begin
    DataM_forosh.ADOQ_jame_ranande.SQL.Text:='select sum(vazn) as vazn_kol,sum(keraye_kol) as kol_keraye,sum(goni) as goni_kol'+
    ' from t_forosh where ranande='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and sal='+QuotedStr(scsal.Text);
    L_type.Caption:='·Ì”  Õ„· »«— »Ì‰ ‘Â—Ì  Ê”ÿ ¬ﬁ«Ì '+DataMo_shakhs.ADOQ_show_ranandefamily.AsString+'  œ— ”«·  '+scsal.Text;
  end
  else
  begin
    DataM_forosh.ADOQ_jame_ranande.SQL.Text:='select sum(vazn) as vazn_kol,sum(keraye_kol) as kol_keraye,sum(goni) as goni_kol'+
    ' from t_forosh where ranande='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and tarikh='+QuotedStr(ta);
    L_type.Caption:='·Ì”  Õ„· »«— »Ì‰ ‘Â—Ì  Ê”ÿ ¬ﬁ«Ì  '+DataMo_shakhs.ADOQ_show_ranandefamily.AsString+'  œ—  «—ÌŒ '+ta;
    
  end;
  if DataMo_shakhs.ADOQ_show_ranande.RecordCount > 0 then
    DataM_forosh.ADOQ_jame_ranande.open;
  end;
end;
procedure Tfrm_search_for_ranande.show_bare_ranande(s:string);
var ta:string;
begin
  if DataMo_shakhs.ADOQ_show_ranande.RecordCount > 0 then
  begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
  if s='sal' then
  begin
    DataM_forosh.ADOQuery_ran_biron.SQL.Text:='select tarikh,sum(vazn) as vazn_kol,'+
    'sum(keraye_kol) as kol_keraye,sum(goni) as goni_kol from t_forosh where ranande='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and sal='+QuotedStr(scsal.Text)+
    ' group by tarikh';

  end
  else
  begin
    DataM_forosh.ADOQuery_ran_biron.SQL.Text:='select tarikh,sum(vazn) as vazn_kol,'+
    'sum(keraye_kol) as kol_keraye,sum(goni) as goni_kol from t_forosh where  ranande='+QuotedStr(DataMo_shakhs.ADOQ_show_ranandefamily.AsString)+' and tarikh='+QuotedStr(ta)+
    ' group by tarikh';
  end;
  if DataMo_shakhs.ADOQ_show_ranande.RecordCount > 0 then
   DataM_forosh.ADOQuery_ran_biron.Open;
  end;
end;
procedure Tfrm_search_for_ranande.E_searchChange(Sender: TObject);
begin
   DataMo_shakhs.ADOQ_show_ranande.Locate('family',E_search.Text,[loPartialKey]);
end;

procedure Tfrm_search_for_ranande.RadioGroup1Click(Sender: TObject);
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

procedure Tfrm_search_for_ranande.FormShow(Sender: TObject);
begin
  DataMo_shakhs.show_ranande;
  DataM_forosh.show_sal;
  RadioGroup1.ItemIndex:=1;
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
  frm_search_for_ranande.WindowState:=wsMaximized;

end;

procedure Tfrm_search_for_ranande.Button1Click(Sender: TObject);
begin
  if (E_roz.Text='') or (E_sal.Text='')or(E_mah.Text='') then
    MessageBox(Handle,'—Ê“ ° ”«· Ê  „«Â »«Ìœ Ê«—œ ‘Ê‰œ.',' ÊÃÂ !',mb_ok or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
    show_bare_ranande('tarikh');
    jame_bare_ranand('tarikh');
  end;

end;

procedure Tfrm_search_for_ranande.scsalClick(Sender: TObject);
begin
  show_bare_ranande('sal');
  jame_bare_ranand('sal');
end;

procedure Tfrm_search_for_ranande.dxToolButton1Click(Sender: TObject);
begin
 if CheckBox1.Checked then
 begin
  if RadioGroup1.ItemIndex=0 then
  begin
    joziat_boron_tarikh;
    jame_joziat_boron_tarikh;
    frm_print_hamlbar_joziat.QuickRep1.Preview;
  end
  else
  begin
    joziat_boron_sal;
    jame_joziat_boron_sal;
    frm_print_hamlbar_joziat.QuickRep1.Preview;
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

procedure Tfrm_search_for_ranande.Button2Click(Sender: TObject);
begin
  if frm_search_for_ranande.RadioGroup1.ItemIndex=1 then
   begin
     frm_search_for_ranande.show_bare_ranande('sal');
     frm_search_for_ranande.jame_bare_ranand('sal');
     frm_search_for_ranande.show_bare_ranande('sal');
   end
  else
   begin
    frm_search_for_ranande.show_bare_ranande('tarikh');
    frm_search_for_ranande.jame_bare_ranand('tarikh');
    frm_search_for_ranande.show_bare_ranande('tarikh');
   end;
end;

procedure Tfrm_search_for_ranande.E_rozKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_search_for_ranande.E_mahKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_search_for_ranande.E_salKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_search_for_ranande.Button5Click(Sender: TObject);
begin
frm_add_kharidha.show_calculator;
end;



end.
