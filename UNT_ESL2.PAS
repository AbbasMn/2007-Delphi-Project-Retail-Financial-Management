unit unt_eslah_haml_daron;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, SUIForm, DB;

type
  Tfrm_eslah_haml_daron = class(TForm)
    suiForm1: TsuiForm;
    L_check: TLabel;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label23: TLabel;
    Label32: TLabel;
    E_keraye: TEdit;
    scranande_boron: TDBLookupComboBox;
    RadioGroup1: TRadioGroup;
    DataSource4: TDataSource;
    Label1: TLabel;
    L_taeed_hazf: TLabel;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    function check_change:boolean;
    procedure type_;
    procedure Button2Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure E_kerayeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah_haml_daron: Tfrm_eslah_haml_daron;

implementation

uses unt_eslah_asli, unt_DataMo_shakhs;

{$R *.dfm}
procedure Tfrm_eslah_haml_daron.type_;
begin
  if RadioGroup1.ItemIndex=0 then
    GroupBox1.Visible:=true
  else
    GroupBox1.Visible:=false;
end;
function  Tfrm_eslah_haml_daron.check_change:boolean;
var ranande:string;
begin
  check_change:=true;
  if (scranande_boron.Text='') and(E_keraye.Text<>'0')then
    MessageBox(Handle,'—«‰‰œÂ œ—Ê‰  ‘Â—Ì «‰ Œ«» ‰‘œÂ «” .','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
     L_check.Caption:='edit';
     frm_eslah_asli.L_check_daron.Caption:=L_check.Caption;
     frm_eslah_asli.L_taeed_hazf_daron.Caption:='no';
  end;
end;

procedure Tfrm_eslah_haml_daron.FormShow(Sender: TObject);
begin
  RadioGroup1.ItemIndex:=0;
  L_taeed_hazf.Caption:='no';
  type_;
  E_keraye.Text:='';
  L_check.Caption:='';
  DataMo_shakhs.show_ranande;

end;
procedure Tfrm_eslah_haml_daron.Button2Click(Sender: TObject);
begin
  if E_keraye.Text='' then
    E_keraye.Text:='0';
  if (RadioGroup1.ItemIndex=1)or(E_keraye.Text='0') then
  begin
    L_taeed_hazf.Caption:='yes';
    frm_eslah_asli.L_taeed_hazf_daron.Caption:=L_taeed_hazf.Caption;
    frm_eslah_asli.L_check_daron.Caption:='hazf';
  end;
 
 if (RadioGroup1.ItemIndex=0)and(E_keraye.Text<>'0') then
 begin
   check_change;
   if L_check.Caption='edit' then
    close;
 end
 else
  close;
end;


procedure Tfrm_eslah_haml_daron.RadioGroup1Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=1 then
begin
    GroupBox1.Visible:=false;
    L_check.Caption:='hazf';
    MessageBox(Handle,'»« «Ì‰ «‰ Œ«» «ÿ·«⁄«  Õ„· »«— œ—Ê‰  ‘Â—Ì Õ–› „Ì‘Êœ',' –ò— !!!',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end
else
  begin
    GroupBox1.Visible:=true;
    L_check.Caption:='';
    frm_eslah_asli.L_check_daron.Caption:=L_check.Caption;
  end;

end;





procedure Tfrm_eslah_haml_daron.FormActivate(Sender: TObject);
begin
  L_taeed_hazf.Caption:='no';
  RadioGroup1.ItemIndex:=0;
end;

procedure Tfrm_eslah_haml_daron.E_kerayeKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
