unit unt_eslah;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, SUIForm, DB;

type
  Tfrm_eslah = class(TForm)
    suiForm1: TsuiForm;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label8: TLabel;
    DBText6: TDBText;
    DBText5: TDBText;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    Label17: TLabel;
    DBText17: TDBText;
    DBText16: TDBText;
    DBText8: TDBText;
    Label16: TLabel;
    Label18: TLabel;
    E_vazn: TEdit;
    E_t_goni: TEdit;
    E_fi: TEdit;
    E_ojrat: TEdit;
    E_keraye: TEdit;
    GroupBox1: TGroupBox;
    scranande: TDBLookupComboBox;
    Label24: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label7: TLabel;
    L_g_kol: TLabel;
    Label9: TLabel;
    L_ojrat_kol: TLabel;
    Label25: TLabel;
    L_keraye_kol: TLabel;
    Label26: TLabel;
    L_remain: TLabel;
    Button3: TButton;
    DBT_cod: TDBText;
    L_cod: TLabel;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    DBText4: TDBText;
    Label1: TLabel;
    Label27: TLabel;
    ComboBox1: TComboBox;
    Label29: TLabel;
    E_roz: TEdit;
    Label30: TLabel;
    E_mah: TEdit;
    Label31: TLabel;
    E_sal: TEdit;
    procedure E_vaznKeyPress(Sender: TObject; var Key: Char);
    procedure E_ojratKeyPress(Sender: TObject; var Key: Char);
    procedure E_t_goniKeyPress(Sender: TObject; var Key: Char);
    procedure E_kerayeKeyPress(Sender: TObject; var Key: Char);
    procedure E_fiKeyPress(Sender: TObject; var Key: Char);
    procedure E_kerayeExit(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    function check:boolean;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure update_temp;
    procedure update_forosh;
    procedure E_rozKeyPress(Sender: TObject; var Key: Char);
    procedure E_mahKeyPress(Sender: TObject; var Key: Char);
    procedure E_salKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah: Tfrm_eslah;

implementation

uses unt_DataM_forosh, unt_DataMo_shakhs, unt_add_kharidha;

{$R *.dfm}
procedure Tfrm_eslah.update_forosh;
begin
  {sa}
end;
procedure Tfrm_eslah.update_temp;
var g_kol,ojrat_kol,keraye_kol,remain,bedehi:real;
    ojrat_az_kh_kol,keraye_az_kh_kol,ojrat_az_kh,keraye_az_kh,mount_kh,ojrat_hasanpor,ranande:string;
begin

  if  E_keraye.Text='0' then
    ranande:=''
  else
    ranande:=scranande.Text;
    
  g_kol:=StrToFloat(e_vazn.Text)*StrToFloat(e_fi.Text);
  ojrat_kol:=StrToFloat(e_vazn.Text)*StrToFloat(e_ojrat.Text);
  keraye_kol:=StrToFloat(e_vazn.Text)*StrToFloat(e_keraye.Text);
  remain:=g_kol-(ojrat_kol+keraye_kol);
  bedehi:=remain;


    
  ojrat_az_kh:=DataM_forosh.ADO_tempojrat_az_kh.AsString;
  keraye_az_kh:=DataM_forosh.ADO_tempkeraye_az_kh.AsString;

  keraye_az_kh_kol:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(keraye_az_kh));
  ojrat_az_kh_kol:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(ojrat_az_kh));

  ojrat_hasanpor:=FloatToStr(StrToFloat(ojrat_az_kh_kol)+StrToFloat(keraye_az_kh_kol)+ojrat_kol+keraye_kol);

  mount_kh:=FloatToStr(g_kol+StrToFloat(keraye_az_kh_kol)+StrToFloat(ojrat_az_kh_kol));
   DataM_forosh.ADO_temp.SQL.Text:='update t_temp set vazn='+E_vazn.Text+',fi='+E_fi.Text+
   ',ojrat='+E_ojrat.Text+',keraye='+E_keraye.Text+
   ',goni='+E_t_goni.Text+',geymat_kol='+FloatToStr(g_kol)+',ranande='+QuotedStr(ranande)+
   ',ojrat_kol='+FloatToStr(ojrat_kol)+',keraye_kol='+FloatToStr(keraye_kol)+
   ',remain='+FloatToStr(remain)+',bedehi='+FloatToStr(bedehi)+',mande='+FloatToStr(bedehi)+
   ',ojrat_az_kh_kol='+ojrat_az_kh_kol+
   ',keraye_az_kh_kol='+keraye_az_kh_kol+',mount_kh='+mount_kh+',ojrat_hasanpor='+ojrat_hasanpor+
   ',tarikh='+QuotedStr(trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text))+',anjir_noe='+QuotedStr(ComboBox1.Text)+' where cod='+L_cod.Caption;
   DataM_forosh.ADO_temp.ExecSQL;
   frm_add_kharidha.show_temp;
end;
function Tfrm_eslah.check:boolean;
var s:string;
    f:boolean;
    x,y:real;
begin
  s:='';
  f:=false;
  if (E_roz.Text='')or(E_mah.Text='')or(E_sal.Text='') then
  begin
     f:=true;
     s:=s+'  «—ÌŒ( »Â ’Ê—  ò«„· ) ';
  end;
  if ComboBox1.Text='' then
  begin
     f:=true;
     s:=s+' ‰«„ Ã‰” ';
  end;
  if E_keraye.Text='' then
    E_keraye.Text:='0';
  if (E_keraye.Text<>'0')and (scranande.Text='') then
    begin
     f:=true;
     s:=s+' —«‰‰œÂ ';
     scranande.SetFocus;
    end;
  if(E_ojrat.Text='')then
   begin
   f:=true;
   s:=s+' «Ã—  ';
   E_ojrat.SetFocus;
  end;

   if(E_fi.Text='')then
   begin
   f:=true;
   s:=s+' ›Ì ';
   E_fi.SetFocus;
  end;
  if (E_vazn.Text='')then
  begin
   f:=true;
   s:=s+' Ê“‰ ';
   E_vazn.SetFocus;
  end;
  //if(E_tarikh.Text='')then
   //begin
   //f:=true;
   //s:=s+'  «—ÌŒ ';
   //RadioGroup11.SetFocus;
  //end;
   //if(ComboBox1.Text='')then
   //begin
    // f:=true;
    // s:=s+' ‰Ê⁄ «‰ÃÌ— ';
    // ComboBox1.SetFocus;
   //end;
  s:=s+' »«Ìœ Ê«—œ ‘Êœ.';
  if f then
  begin
    MessageBox(Handle,pchar(s),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    check:=false;
  end
  else
    check:=true;

end;

procedure Tfrm_eslah.E_vaznKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah.E_ojratKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah.E_t_goniKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah.E_kerayeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah.E_fiKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah.E_kerayeExit(Sender: TObject);
begin
 { if (E_keraye.Text='') or(E_keraye.Text='0') then
    begin
     scranande.Enabled:=false;
     Button3.SetFocus;
    end
  else
    scranande.Enabled:=true;  }
end;

procedure Tfrm_eslah.Button3Click(Sender: TObject);
begin
if check then
begin
  l_g_kol.caption:=FloatToStr(StrToFloat(E_vazn.Text)*StrToFloat(e_fi.Text));
  l_ojrat_kol.caption:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(e_ojrat.Text));
  L_keraye_kol.caption:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(e_keraye.Text));
  l_remain.caption:=FloatToStr(StrToFloat(L_g_kol.Caption)-StrToFloat(l_ojrat_kol.Caption)-StrToFloat(l_keraye_kol.Caption));
end;
end;

procedure Tfrm_eslah.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_eslah.Button1Click(Sender: TObject);
begin
  DataMo_shakhs.show_ranande;
  if check then
  begin
      update_temp;
      E_roz.Text:='';
      E_sal.Text:='';
      E_mah.Text:='';
      close;
  end;
end;



procedure Tfrm_eslah.E_rozKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah.E_mahKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah.E_salKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah.FormShow(Sender: TObject);
begin
  DataMo_shakhs.show_ranande;
end;

end.
