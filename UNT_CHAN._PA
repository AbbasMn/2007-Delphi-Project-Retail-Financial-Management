unit unt_chang_public_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm;

type
  Tfrm_chang_public_login = class(TForm)
    suiForm1: TsuiForm;
    Label1: TLabel;
    l_type: TLabel;
    L_edit: TLabel;
    e_login_new: TEdit;
    Button1: TButton;
    Label2: TLabel;
    E_login_past: TEdit;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure update_login;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_chang_public_login: Tfrm_chang_public_login;

implementation

uses unt_login, unt_DataMo_shakhs;

{$R *.dfm}
procedure Tfrm_chang_public_login.update_login;
begin
 DataMo_shakhs.ADOQ_login.SQL.Text:='update t_login set login_public='+QuotedStr(e_login_new.Text);
 DataMo_shakhs.ADOQ_login.ExecSQL;
 MessageBox(Handle,'—„“ ⁄»Ê— ÃœÌœ Ã«Ìê“Ì‰ ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
 e_login_new.Text:='';
 E_login_past.Text:='';
 close;
end;

procedure Tfrm_chang_public_login.Button1Click(Sender: TObject);
begin
if e_login_new.Text<>'' then
begin
  if frm_login.check_public_login(E_login_past.Text) then
  begin
    update_login;
  end
  else
    MessageBox(Handle,'—„“ ⁄»Ê— ›⁄·Ì «‘ »«Â „Ì »«‘œ «Ã«“Â  €ÌÌ— ¬‰ —« ‰œ«—Ìœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end
else
   MessageBox(Handle,'—„“ ⁄»Ê— ÃœÌœ —« Ê«—œ ‰„«ÌÌœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;

procedure Tfrm_chang_public_login.FormShow(Sender: TObject);
begin
  e_login_new.Text:='';
  E_login_past.Text:='';
end;

end.
