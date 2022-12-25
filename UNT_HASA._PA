unit unt_hasanpor_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm;

type
  TFrm_hasanpor_login = class(TForm)
    suiForm1: TsuiForm;
    Label1: TLabel;
    L_edit: TLabel;
    L_click: TLabel;
    e_login: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    function check_hasanpor_login(s:string):boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_hasanpor_login: TFrm_hasanpor_login;

implementation

uses unt_DataMo_shakhs, unt_main, unt_hasanpor;

{$R *.dfm}
function TFrm_hasanpor_login.check_hasanpor_login(s:string):boolean;
begin
  DataMo_shakhs.ADOQ_login.SQL.Text:='select * from t_login where login_user ='+QuotedStr(s);
  DataMo_shakhs.ADOQ_login.Open;

  if DataMo_shakhs.ADOQ_login.RecordCount>0 then
    check_hasanpor_login:=true
  else
  begin
    check_hasanpor_login:=false;
    
  end;
end;

procedure TFrm_hasanpor_login.Button1Click(Sender: TObject);
begin
if e_login.Text<>'' then
begin
  If check_hasanpor_login(e_login.Text) then
  begin
   L_click.Caption:='yes';
   close;
  end
  else
  begin
    MessageBox(Handle,'—„“ ⁄»Ê— «‘ »«Â „Ì »«‘œ «Ã«“Â Ê—Êœ ‰œ«—Ìœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    L_click.Caption:='error';
    close;
  end;
end
else
  MessageBox(Handle,'—„“ ⁄»Ê— —« Ê«—œ ‰„«ÌÌœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  e_login.SetFocus;
end;

procedure TFrm_hasanpor_login.FormShow(Sender: TObject);
begin
  e_login.Text:='';
  e_login.SetFocus;
  L_click.Caption:='no';
end;

procedure TFrm_hasanpor_login.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if  L_click.Caption='yes' then
    Frm_hasanpor.ShowModal;
end;

end.
