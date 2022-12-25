unit unt_sel_kharid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm, DBCtrls, Grids, DBGrids, DB;

type
  Tfrm_sel_kharid = class(TForm)
    GroupBox3: TGroupBox;
    Label2: TLabel;
    ComboBox1: TComboBox;
    suiForm1: TsuiForm;
    Button1: TButton;
    Button2: TButton;
    GroupBox5: TGroupBox;
    RadioGroup11: TRadioGroup;
    E_tarikh: TEdit;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    E_vazn: TEdit;
    E_fi: TEdit;
    E_ojrat: TEdit;
    E_keraye: TEdit;
    E_t_goni: TEdit;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    E_search: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Button3: TButton;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    L_g_kol: TLabel;
    L_ojrat_kol: TLabel;
    L_remain: TLabel;
    Label12: TLabel;
    L_keraye_kol: TLabel;
    DataSource2: TDataSource;
    DBt_cod_fo: TDBText;
    DBT_name_fo: TDBText;
    DBT_family_fo: TDBText;
    Label9: TLabel;
    DataSource3: TDataSource;
    scranande: TDBLookupComboBox;
    Label13: TLabel;
    Edit1: TEdit;
    Button5: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure E_fiKeyPress(Sender: TObject; var Key: Char);
    procedure E_ojratKeyPress(Sender: TObject; var Key: Char);
    procedure E_kerayeKeyPress(Sender: TObject; var Key: Char);
    PROCEDURE clear;
    procedure E_vaznKeyPress(Sender: TObject; var Key: Char);
    procedure E_t_goniKeyPress(Sender: TObject; var Key: Char);
    procedure E_nagdKeyPress(Sender: TObject; var Key: Char);
    function check:boolean;
    procedure check_ashar(s:string;var t:string);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioGroup11Click(Sender: TObject);
    procedure E_searchChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure kol;
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure E_kerayeExit(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure E_kerayeEnter(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sel_kharid: Tfrm_sel_kharid;

implementation

uses Taghvim, unt_DataM_forosh, unt_main, unt_DataMo_shakhs,
  unt_add_kharidha, unt__forosh, unt_sh_jadid;

{$R *.dfm}
procedure Tfrm_sel_kharid.kol;
begin
if check then
begin
 if E_keraye.Text='' then
    E_keraye.Text:='0';
  l_g_kol.caption:=FloatToStr(StrToFloat(E_vazn.Text)*StrToFloat(e_fi.Text));
  l_ojrat_kol.caption:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(e_ojrat.Text));
  L_keraye_kol.caption:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(e_keraye.Text));
  l_remain.caption:=FloatToStr(StrToFloat(L_g_kol.Caption)-StrToFloat(l_ojrat_kol.Caption)-StrToFloat(l_keraye_kol.Caption));
end;
end;

procedure Tfrm_sel_kharid.E_fiKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_sel_kharid.E_ojratKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_sel_kharid.E_kerayeKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;





procedure Tfrm_sel_kharid.E_vaznKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_sel_kharid.E_t_goniKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;



procedure Tfrm_sel_kharid.E_nagdKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;







procedure Tfrm_sel_kharid.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_sel_kharid.Button1Click(Sender: TObject);
var t,s,id_kharid,name_kh,family_kh,name_fo,family_fo,cod_kh,cod_fo,ranande,daron_ranande:string;
begin
  name_fo:=DBT_name_fo.Caption;
  family_fo:=DBT_family_fo.Caption;
  cod_fo:=DBt_cod_fo.Caption;
 if check then
 begin
  if E_keraye.Text='' then
    E_keraye.Text:='0';
  if E_t_goni.Text='' then
    E_t_goni.Text:='0';
  check_ashar(E_vazn.Text,t);
   if t='yes' then
   begin
     if MessageBox(Handle,pchar(' ›—Ê‘ Ã‰” :: '+ComboBox1.Text+' ::'+' »Â „ﬁœ«— << '+E_vazn.Text+' >> òÌ·Ê ê—„ «“ ﬁ—«— [ '+' ⁄œ«œ êÊ‰Ì = '+E_t_goni.Text+' ° '+'ﬁÌ„  (òÌ·Ê)= '+E_fi.Text+' ° '+'«Ã—  (—Ì«·)= '+E_ojrat.Text+' ° '+'ò—«ÌÂ(—Ì«·)= '+E_keraye.Text+' '+'] »Â ¬ﬁ«/Œ«‰„  << '+DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString+' '+DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString+' >> —«  «ÌÌœ „Ì‰„«ÌÌœø '),' ÊÃÂ !' ,MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING)=id_yes then
     begin
        s:=e_tarikh.text[1]+e_tarikh.text[2]+e_tarikh.text[3]+e_tarikh.text[4];

        name_kh:=DataMo_shakhs.ADOQ_kharidar.Fields[0].AsString;
        family_kh:=DataMo_shakhs.ADOQ_kharidar.Fields[1].AsString;
        cod_kh:=DataMo_shakhs.ADOQ_kharidar.Fields[3].AsString;
         if (E_keraye.Text='')or(E_keraye.Text='0') then
          ranande:=''
         else
           ranande:=scranande.Text;
           if frm_add_kharidha.E_keraye.Text='0' then
            daron_ranande:=''
           else
             daron_ranande:=frm_add_kharidha.scranande.Text;
             
        dataM_forosh.insert_forosh(daron_ranande,s,name_kh,family_kh,ComboBox1.Text,E_vazn.Text,E_fi.Text,E_ojrat.Text,E_keraye.Text,name_fo,family_fo,E_tarikh.Text,cod_fo,E_t_goni.Text,cod_kh,ranande);

        frm_add_kharidha.show_temp;
        clear;
        close;
     end;

   end
   else
   begin
     E_vazn.Text:='';
     MessageBox(Handle,' ⁄œ«œ ⁄·«∆„ ‰ﬁÿÂ «⁄‘«— œ—”  ‰„Ì »«‘œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   end;
 end;
end;
procedure Tfrm_sel_kharid.check_ashar(s:string;var t:string);
var i,count:integer;
begin
  count:=0;
  for i:=1 to StrLen(pchar(s)) do
  begin
   if s[i]='.' then
    count:=count+1;
  end;
  if count>1 then
    t:='no'
  else
    t:='yes';
end;
function Tfrm_sel_kharid.check:boolean;
var s:string;
    f:boolean;
    x,y:real;
begin
  s:='';
  f:=false;
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
    if(E_tarikh.Text='')then
   begin
   f:=true;
   s:=s+'  «—ÌŒ ';
   RadioGroup11.SetFocus;
  end;
   if(ComboBox1.Text='')then
   begin
     f:=true;
     s:=s+' ‰«„ Ã‰” ';
     ComboBox1.SetFocus;
   end;

  s:=s+' »«Ìœ Ê«—œ ‘Êœ.';
  if f then
  begin
    MessageBox(Handle,pchar(s),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    check:=false;
  end
  else
    check:=true;

end;

procedure Tfrm_sel_kharid.clear;
begin
  E_vazn.Text:='';
  E_fi.Text:='';
  E_ojrat.Text:='';
  E_keraye.Text:='';
  E_t_goni.Text:='';
  L_g_kol.Caption:='';
  L_ojrat_kol.Caption:='';
  L_remain.Caption:='';
  L_keraye_kol.Caption:='';
  E_search.Text:='';
end;

procedure Tfrm_sel_kharid.FormShow(Sender: TObject);
begin
  DataMo_shakhs.show_foroshande;
  RadioGroup11.ItemIndex:=0;
  E_tarikh.Text:=frm_main.E_tarikh.Text;
  DataMo_shakhs.show_ranande;
  scranande.Enabled:=true;
  clear;
  E_search.SetFocus;
end;




procedure Tfrm_sel_kharid.RadioGroup11Click(Sender: TObject);
begin
if RadioGroup11.ItemIndex=1 then
  Begin
    _taghvim.ShowModal;
    E_tarikh.Text:=_taghvim._str_date;
    if E_tarikh.Text='' then
      E_tarikh.Text:=frm_main.E_tarikh.Text;
  end
  else
    E_tarikh.Text:=frm_main.E_tarikh.Text;

end;

procedure Tfrm_sel_kharid.E_searchChange(Sender: TObject);
begin
  DataMo_shakhs.ADOQ__foroshande.Locate('family',E_search.Text,[loPartialKey]);
end;

procedure Tfrm_sel_kharid.ComboBox1Change(Sender: TObject);
begin
  //get_constant;
end;

procedure Tfrm_sel_kharid.Button3Click(Sender: TObject);
var t:string;
begin
  frm_sel_kharid.check_ashar(E_vazn.Text,t);
  if t='yes' then
    kol
  else
  begin
    E_vazn.Text:='';
    MessageBox(Handle,' ⁄œ«œ ⁄·«∆„ ‰ﬁÿÂ «⁄‘«— œ—”  ‰„Ì »«‘œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end;
end;

procedure Tfrm_sel_kharid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frm_add_kharidha.show_temp;
  if DataM_forosh.ADO_temp.RecordCount >0 then
  begin
    frm_add_kharidha.E_ojrat.Enabled:=false;
    frm_add_kharidha.E_keraye.Enabled:=false;
    frm_add_kharidha.scranande.Enabled:=false;
  end;
end;

procedure Tfrm_sel_kharid.E_kerayeExit(Sender: TObject);
begin
  if (E_keraye.Text='') or(E_keraye.Text='0') then
    begin
     scranande.Enabled:=false;
     Button3.SetFocus;
    end
  else
    scranande.Enabled:=true;
end;

procedure Tfrm_sel_kharid.Edit1Change(Sender: TObject);
var s:string;
begin
  if Edit1.Text='' then
    s:='0'
  else
    s:=Edit1.Text;
  DataMo_shakhs.ADOQ__foroshande.Locate('cod',s,[loPartialKey]);
end;

procedure Tfrm_sel_kharid.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_sel_kharid.E_kerayeEnter(Sender: TObject);
begin
  if (E_keraye.Text='') or(E_keraye.Text='0') then
    begin
     scranande.Enabled:=false;
    end
  else
    scranande.Enabled:=true;
end;

procedure Tfrm_sel_kharid.Button5Click(Sender: TObject);
begin
  frm_add_kharidha.show_calculator;
end;

procedure Tfrm_sel_kharid.Button4Click(Sender: TObject);
begin
  frm_foroshande_jadid.e_name.Text:='';
  frm_foroshande_jadid.E_family.Text:='';
  frm_foroshande_jadid.e_telephon_hamrah.Text:='';
  frm_foroshande_jadid.E_telephon_kar.Text:='';
  frm_foroshande_jadid.E_telephon_manzel.Text:='';
  frm_foroshande_jadid.suiForm1.Caption:=pchar('›—Ê‘‰œÂ ÃœÌœ');
  frm_foroshande_jadid.l_type.Caption:='forosh';
  frm_foroshande_jadid.L_edit.Caption:='notedit';
  frm_foroshande_jadid.e_name.Enabled:=true;
  frm_foroshande_jadid.E_family.Enabled:=true;
  frm_foroshande_jadid.ShowModal;
end;

end.
