unit unt_search;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, ExtCtrls, SUIForm, DBCtrls, XPMan,
  dxCore, dxButtons;

type
  Tfrm_search = class(TForm)
    suiForm1: TsuiForm;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DataSource2: TDataSource;
    L_type: TLabel;
    RadioGroup1: TRadioGroup;
    G_shakhs: TGroupBox;
    G_anjir: TGroupBox;
    G_tarikh: TGroupBox;
    Label6: TLabel;
    E_search: TEdit;
    DBGrid2: TDBGrid;
    DataSource3: TDataSource;
    RadioGroup11: TRadioGroup;
    E_tarikh: TEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    dxToolButton1: TdxToolButton;
    Label7: TLabel;
    DBText5: TDBText;
    Label8: TLabel;
    DBText6: TDBText;
    Label9: TLabel;
    DBText7: TDBText;
    Label10: TLabel;
    DBText8: TDBText;
    procedure FormShow(Sender: TObject);
    procedure type_;
    procedure RadioGroup1Click(Sender: TObject);
    procedure E_searchChange(Sender: TObject);
    procedure E_searchKeyPress(Sender: TObject; var Key: Char);
    procedure search_shakhs;
    procedure jame_shakhs;
    procedure search_tarikh;
    procedure jame_tarikh;
    procedure search_all;
    procedure jame_all;
    procedure search_anjir;
    procedure jame_anjir;
    procedure Button2Click(Sender: TObject);
    procedure RadioGroup11Click(Sender: TObject);
    procedure E_tarikhChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_search: Tfrm_search;

implementation

uses unt_kharid, unt_DataMod_kharid, unt_main, unt_DataMo_shakhs, Taghvim,
  unt_print_search;

{$R *.dfm}
procedure Tfrm_search.jame_all;
begin
   L_type.Caption:='»— «”«” ò· Œ—ÌœÂ«';
   DataMod_kharid.ADOQuery_jam_kharid.SQL.Text:=' select sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
  ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol'+
  ' from t_kharid';
   DataMod_kharid.ADOQuery_jam_kharid.Open;
end;
procedure Tfrm_search.jame_tarikh;
begin
   L_type.Caption:='»—«”«” Œ—ÌœÂ«œ— «—ÌŒ '+E_tarikh.Text;
   DataMod_kharid.ADOQuery_jam_kharid.SQL.Text:=' select sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
  ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol'+
  ' from t_kharid where tarikh='+QuotedStr(E_tarikh.Text);
  DataMod_kharid.ADOQuery_jam_kharid.Open;
end;
procedure Tfrm_search.jame_anjir;
begin
  L_type.Caption:='»— «”«” «‰ÃÌ— «“ ‰Ê⁄ '+ComboBox1.Text;
  DataMod_kharid.ADOQuery_jam_kharid.SQL.Text:=' select sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
  ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol'+
  ' from t_kharid where anjir_noe='+QuotedStr(ComboBox1.Text);
 DataMod_kharid.ADOQuery_jam_kharid.Open;
end;
procedure Tfrm_search.jame_shakhs;
begin
  L_type.Caption:='»— «”«” Œ—ÌœÂ« «“ ¬ﬁ«Ì  '+DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString+' '+DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString;
   DataMod_kharid.ADOQuery_jam_kharid.SQL.Text:=' select sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
  ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol'+
  ' from t_kharid where family='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString)+'and name='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString);
 DataMod_kharid.ADOQuery_jam_kharid.Open;
end;
procedure Tfrm_search.search_anjir;
begin
  DataMod_kharid.ADOQuery_kharid.SQL.Text:='select * from T_kharid where anjir_noe='+QuotedStr(ComboBox1.Text)+' order by tarikh,family,name';
  DataMod_kharid.ADOQuery_kharid.Open;
end;
procedure Tfrm_search.search_all;
begin
  DataMod_kharid.ADOQuery_kharid.SQL.Text:='select * from T_kharid order by tarikh,family,name';
  DataMod_kharid.ADOQuery_kharid.Open;
end;
procedure Tfrm_search.search_tarikh;
begin
  DataMod_kharid.ADOQuery_kharid.SQL.Text:='select * from T_kharid where tarikh='+QuotedStr(E_tarikh.Text)+' order by family,name';
  DataMod_kharid.ADOQuery_kharid.Open;
end;
procedure Tfrm_search.search_shakhs;
begin
  DataMod_kharid.ADOQuery_kharid.SQL.Text:='select * from T_kharid where family='
  +QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString)+'and name='+QuotedStr(DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString)+' order by tarikh';
  DataMod_kharid.ADOQuery_kharid.Open;
end;
procedure Tfrm_search.type_;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    frm_print_search.QRL_type.Caption:='Œ—ÌœÂ«Ì ¬ﬁ«Ì '+DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString+'  '+DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString+' '+'òœ ‘‰«”«ÌÌ '+DataMo_shakhs.ADOQ__foroshande.Fields[3].AsString;
    G_shakhs.Visible:=true;
    G_anjir.Visible:=false;
    G_tarikh.Visible:=false;
    search_shakhs;
    jame_shakhs;
  end;
  if RadioGroup1.ItemIndex=2 then
  begin
    frm_print_search.QRL_type.Caption:='Œ—ÌœÂ«Ì «“ ‰Ê⁄ «‰ÃÌ— '+ComboBox1.Text;
    G_shakhs.Visible:=false;
    G_anjir.Visible:=true;
    G_tarikh.Visible:=false;
    search_anjir;
    jame_anjir;
  end;
  if RadioGroup1.ItemIndex=1 then
  begin
    G_shakhs.Visible:=false;
    G_anjir.Visible:=false;
    G_tarikh.Visible:=true;
    if RadioGroup11.ItemIndex=0 then
      E_tarikh.Text:=frm_main.E_tarikh.Text
    else
      begin
        _taghvim.ShowModal;
         E_tarikh.Text:=_taghvim._str_date;
      end;
    search_tarikh;
    jame_tarikh;
    frm_print_search.QRL_type.Caption:='Œ—ÌœÂ«Ì «‰Ã«„ ‘œÂ œ—  «—ÌŒ '+E_tarikh.Text;
  end;
  if RadioGroup1.ItemIndex=3 then
  begin
    frm_print_search.QRL_type.Caption:=' Â„Â Œ—ÌœÂ«Ì «‰Ã«„ ‘œÂ ';
    G_shakhs.Visible:=false;
    G_anjir.Visible:=false;
    G_tarikh.Visible:=false;
    search_all;
    jame_all;
  end;
end;

procedure Tfrm_search.FormShow(Sender: TObject);
begin
  frm_search.WindowState:=wsMaximized;
  DataMod_kharid.show_kharid_all;
  DataMod_kharid.show_kol_all;
  RadioGroup1.ItemIndex:=3;
  DataMo_shakhs.show_foroshande;
  type_;
  frm_print_search.QRLtarikh.Caption:=frm_main.E_tarikh.Text;
end;

procedure Tfrm_search.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

procedure Tfrm_search.E_searchChange(Sender: TObject);
begin
    DataMo_shakhs.ADOQ__foroshande.Locate('family',E_search.Text,[loPartialKey]);
    search_shakhs;
end;

procedure Tfrm_search.E_searchKeyPress(Sender: TObject; var Key: Char);
begin
  DataMod_kharid.ADOQuery_kharid.SQL.Text:='select * from T_kharid where cod <0';
  DataMod_kharid.ADOQuery_kharid.Open;
end;

procedure Tfrm_search.Button2Click(Sender: TObject);
begin
  search_shakhs;
  jame_shakhs;
end;

procedure Tfrm_search.RadioGroup11Click(Sender: TObject);
begin
   if RadioGroup11.ItemIndex=0 then
      E_tarikh.Text:=frm_main.E_tarikh.Text
    else
      begin
        _taghvim.ShowModal;
         E_tarikh.Text:=_taghvim._str_date;
      end;
end;

procedure Tfrm_search.E_tarikhChange(Sender: TObject);
begin
  search_tarikh;
  jame_tarikh;
end;

procedure Tfrm_search.ComboBox1Change(Sender: TObject);
begin
  search_anjir;
  jame_anjir;
end;

procedure Tfrm_search.dxToolButton1Click(Sender: TObject);
begin
    frm_print_search.QuickRep1.Preview;
end;

end.
