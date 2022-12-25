unit unt_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm;

type
  Tfrm_login = class(TForm)
    suiForm1: TsuiForm;
    Label1: TLabel;
    L_edit: TLabel;
    e_login: TEdit;
    Button1: TButton;
    L_click: TLabel;
    L_s: TLabel;
    function check_public_login(s:string):boolean;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function bug_tarikh:boolean;
    function bug_forosh:boolean;
    function bug_serial:boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

uses unt_DataMo_shakhs, Math, unt_main, Untserial, Taghvim,
  unt_DataM_forosh;


{HASAN POR  STORE SYSTEM  ===>volser=50B37BB2}
{HASAN POR  HOME  SYSTEM  ===>volser=1CAAD43B}
  {$R *.dfm}
function Tfrm_login.bug_serial:boolean;
begin
  bug_serial:=false;

  {DataMo_shakhs.ADOQ_login.SQL.Text:='select * from t_login';
  DataMo_shakhs.ADOQ_login.Open;

  l_s.Caption:=frmgetserial.gethardserial('c');
  if  DataMo_shakhs.ADOQ_loginserial.AsString<>l_s.Caption then
     bug_serial:=true; }

  l_s.Caption:='volser=1CAAD43B';
  if  l_s.Caption<>frmgetserial.gethardserial('c') then
      bug_serial:=true;
end;
function Tfrm_login.bug_forosh:boolean;
begin
  DataMo_shakhs.ADOQ_login.SQL.Text:='select * from t_login';
  DataMo_shakhs.ADOQ_login.Open;

  DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh';
  DataM_forosh.ADOQ_forosh.Open;
  if  (DataMo_shakhs.ADOQ_loginbug_forosh.AsString='yes') and(DataM_forosh.ADOQ_forosh.RecordCount>StrToFloat(DataMo_shakhs.ADOQ_loginrecord_count.AsString))then
  begin
    L_click.Caption:='error';
    if frm_main.Showing then
      frm_main.Close;
    close;
  end;
end;
function Tfrm_login.bug_tarikh:boolean;
var s:string;
begin
  s:=_taghvim._str_date;
  DataMo_shakhs.ADOQ_login.SQL.Text:='select * from t_login';
  DataMo_shakhs.ADOQ_login.Open;
  s:=s[1]+s[2]+s[3]+s[4];
  l_s.Caption:=s;
  if  (DataMo_shakhs.ADOQ_loginbug_tarikh.AsString='yes') and(s > '1385')then
  begin
    L_click.Caption:='error';
    if frm_main.Showing then
      frm_main.Close;
    close;
  end;
end;
function Tfrm_login.check_public_login(s:string):boolean;
begin
  DataMo_shakhs.ADOQ_login.SQL.Text:='select * from t_login where login_public ='+QuotedStr(s);
  DataMo_shakhs.ADOQ_login.Open;

  if DataMo_shakhs.ADOQ_login.RecordCount>0 then
    check_public_login:=true
  else
  begin
    check_public_login:=false;
    
  end;
end;

procedure Tfrm_login.Button1Click(Sender: TObject);
begin
L_click.Caption:='no';
if e_login.Text<>'' then
begin
  If check_public_login(e_login.Text) then
  begin
   L_click.Caption:='yes';
   close;
  end
  else
  begin
    MessageBox(Handle,'—„“ ⁄»Ê— «‘ »«Â „Ì »«‘œ «Ã«“Â Ê—Êœ ‰œ«—Ìœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    L_click.Caption:='error';
    if frm_main.Showing then

       frm_main.Close;
    close;
  end;
end
else
  MessageBox(Handle,'—„“ ⁄»Ê— —« Ê«—œ ‰„«ÌÌœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  e_login.SetFocus;  
end;

procedure Tfrm_login.FormShow(Sender: TObject);
begin
 if bug_serial then
  begin
    {L_click.Caption:='error';
    if frm_main.Showing then
      frm_main.Close;
    close; }
  end
  else
  begin
    e_login.SetFocus;
    L_click.Caption:='no';
  end;
  {bug_tarikh;
  bug_forosh;}

end;

end.
