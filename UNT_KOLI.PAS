unit unt_koli_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm;

type
  Tfrm_koli_login = class(TForm)
    suiForm1: TsuiForm;
    Label1: TLabel;
    L_edit: TLabel;
    L_click: TLabel;
    e_login: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    function check_hasanpor_koli_login(s:string):boolean;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_koli_login: Tfrm_koli_login;

implementation

uses unt_DataMo_shakhs, unt_gozaresh;

{$R *.dfm}
function Tfrm_koli_login.check_hasanpor_koli_login(s:string):boolean;
begin
  DataMo_shakhs.ADOQ_login.SQL.Text:='select * from t_login where login_koli ='+QuotedStr(s);
  DataMo_shakhs.ADOQ_login.Open;

  if DataMo_shakhs.ADOQ_login.RecordCount>0 then
    check_hasanpor_koli_login:=true
  else
  begin
    check_hasanpor_koli_login:=false;
    
  end;
end;

procedure Tfrm_koli_login.Button1Click(Sender: TObject);
begin
if e_login.Text<>'' then
begin
  If check_hasanpor_koli_login(e_login.Text) then
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
begin
  MessageBox(Handle,'—„“ ⁄»Ê— —« Ê«—œ ‰„«ÌÌœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  e_login.SetFocus;
end;
end;

procedure Tfrm_koli_login.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if  L_click.Caption='yes' then
    frm_gozaresh.ShowModal;
end;

procedure Tfrm_koli_login.FormShow(Sender: TObject);
begin
  e_login.Text:='';
end;

end.
