unit unt_add_kharidha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, SUIForm, DB,shellapi;

type
  Tfrm_add_kharidha = class(TForm)
    suiForm1: TsuiForm;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label8: TLabel;
    DBText6: TDBText;
    Label10: TLabel;
    DBText8: TDBText;
    GroupBox1: TGroupBox;
    L_name: TLabel;
    Button3: TButton;
    Button2: TButton;
    Button1: TButton;
    Label7: TLabel;
    E_ojrat: TEdit;
    Label1: TLabel;
    E_keraye: TEdit;
    Label6: TLabel;
    DataSource2: TDataSource;
    DBText5: TDBText;
    L_name_kh: TLabel;
    L_family_kh: TLabel;
    Button4: TButton;
    Label9: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    DataSource3: TDataSource;
    scranande: TDBLookupComboBox;
    Button5: TButton;
    procedure Button3Click(Sender: TObject);
    procedure show_temp;
    procedure delete;
    procedure delete_all;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure E_ojratKeyPress(Sender: TObject; var Key: Char);
    procedure E_kerayeKeyPress(Sender: TObject; var Key: Char);
    procedure tagir_kharidar_with_temp;
    procedure Button4Click(Sender: TObject);
    procedure E_kerayeExit(Sender: TObject);
    procedure scranandeEnter(Sender: TObject);
    procedure show_calculator;
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_add_kharidha: Tfrm_add_kharidha;

implementation

uses unt_sel_kharid, unt_DataM_forosh, unt_DataMo_shakhs, unt__forosh,
  unt_eslah;

{$R *.dfm}
procedure Tfrm_add_kharidha.show_calculator;
begin
  ShellExecute(Handle,'open','calc.exe','','',SW_SHOWMAXIMIZED);
end;
procedure Tfrm_add_kharidha.tagir_kharidar_with_temp;
begin
  frm_add_kharidha.delete_all;
  MessageBox(Handle,'»Â œ·Ì·  €ÌÌ— „‘Œ’«  Œ—Ìœ«— ò·ÌÂ „⁄«„·«  Ê«—œ ‘œÂ »—«Ì Œ—Ìœ«— ﬁ»·Ì Õ–› ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;
procedure Tfrm_add_kharidha.delete_all;
begin
 show_temp;
 DataM_forosh.ADO_temp.First;
 while not (DataM_forosh.ADO_temp.Eof) do
 begin
  DataM_forosh.ADO_temp.Delete;
  DataM_forosh.ADO_temp.First;
 end;
 E_ojrat.Text:='';
 E_keraye.Text:='';
 frm_add_kharidha.E_ojrat.Enabled:=true;
 frm_add_kharidha.E_keraye.Enabled:=true;
 frm_add_kharidha.scranande.Enabled:=true;
end;
procedure Tfrm_add_kharidha.delete;
begin
 if DataM_forosh.ADO_temp.RecordCount>0 then
 begin
  DataM_forosh.ADO_temp.SQL.Text:='delete from t_temp where cod='+DBText5.Caption;
  DataM_forosh.ADO_temp.ExecSQL;
      show_temp;
    if DataM_forosh.ADO_temp.RecordCount<=0 then
      begin
        frm_add_kharidha.E_ojrat.Enabled:=true;
        frm_add_kharidha.E_keraye.Enabled:=true;
        E_ojrat.Text:='';
        E_keraye.Text:='';
      end;
 end
 else
 begin
      MessageBox(Handle,'—òÊ—œÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ.',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;
end;
procedure Tfrm_add_kharidha.show_temp;
begin
  DataM_forosh.ADO_temp.SQL.Text:='select * from t_temp';
  DataM_forosh.ADO_temp.Open;
  DataM_forosh.ADOQ_jam_temp.SQL.Text:='select sum(geymat_kol) as g_kol,sum(ojrat_az_kh_kol) as ojrat_kol,sum(keraye_az_kh_kol) as keraye_kol'+
  ', sum(goni) as  goni_kol, sum(remain) as  remain_kol'+
  ',sum(vazn) as vazn_kol ,sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as nakhales_kol from t_temp';
  DataM_forosh.ADOq_jam_temp.Open;

end;

procedure Tfrm_add_kharidha.Button3Click(Sender: TObject);
begin
if frm_add_kharidha.E_ojrat.Text='' then
  MessageBox(Handle,pchar('„»·€ «Ã—  »—«Ì œ—Ì«›  «“ Œ—Ìœ«— Ê«—œ ‰‘œÂ «” .'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
  begin
    if E_keraye.Text='' then
      E_keraye.Text:='0';
    if (E_keraye.Text<>'0')and (scranande.Text='') then
      MessageBox(Handle,pchar('—«‰‰œÂ »—«Ì Õ„· œ—Ê‰ ‘Â—Ì »«Ìœ Ê«—œ ‘Êœ.'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
    else
      frm_sel_kharid.ShowModal;
  end;
end;

procedure Tfrm_add_kharidha.Button1Click(Sender: TObject);
begin
  delete;
  show_temp;
end;

procedure Tfrm_add_kharidha.Button2Click(Sender: TObject);
begin
  show_temp;
  if DataM_forosh.ADO_temp.RecordCount>0 then
    delete_all
 else
 begin
  MessageBox(Handle,'—òÊ—œÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ.',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end;
end;

procedure Tfrm_add_kharidha.FormShow(Sender: TObject);
begin
  DataMo_shakhs.show_ranande;
  scranande.Enabled:=true;
  frm_add_kharidha.WindowState:=wsMaximized;
end;

procedure Tfrm_add_kharidha.E_ojratKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_kharidha.E_kerayeKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_kharidha.Button4Click(Sender: TObject);
var s:string;
begin
 if DataM_forosh.ADO_temp.RecordCount>0 then
 begin
  frm_eslah.E_vazn.Text:=frm_eslah.DBText6.Caption;
  frm_eslah.E_t_goni.Text:=frm_eslah.DBText9.Caption;
  frm_eslah.E_fi.Text:=frm_eslah.DBText10.Caption;
  frm_eslah.E_ojrat.Text:=frm_eslah.DBText11.Caption;
  frm_eslah.E_keraye.Text:=frm_eslah.DBText12.Caption;
  frm_eslah.L_cod.Caption:=frm_eslah.DBT_cod.Caption;
  s:=frm_eslah.DBText1.Caption;
    frm_eslah.E_roz.Text:=s[9]+s[10];
    frm_eslah.E_mah.Text:=s[6]+s[7];
    frm_eslah.E_sal.Text:=s[1]+s[2]+s[3]+s[4];

  frm_eslah.L_g_kol.Caption:='';
  frm_eslah.L_ojrat_kol.Caption:='';
  frm_eslah.L_keraye_kol.Caption:='';
  frm_eslah.L_remain.Caption:='';
  //DataMo_shakhs.show_ranande;
  frm_eslah.ShowModal;
 end
  else
     MessageBox(Handle,'—òÊ—œÌ »—«Ì ÊÌ—«Ì‘ ÊÃÊœ ‰œ«—œ.',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;

procedure Tfrm_add_kharidha.E_kerayeExit(Sender: TObject);
begin
  if (E_keraye.Text='') or(E_keraye.Text='0') then
    begin
     scranande.Enabled:=false;
    end
  else
    scranande.Enabled:=true;
end;

procedure Tfrm_add_kharidha.scranandeEnter(Sender: TObject);
begin
  if (E_keraye.Text='') or(E_keraye.Text='0') then
    begin
     scranande.Enabled:=false;
    end
  else
    scranande.Enabled:=true;
end;

procedure Tfrm_add_kharidha.Button5Click(Sender: TObject);
begin
  frm_add_kharidha.show_calculator;
end;

end.
