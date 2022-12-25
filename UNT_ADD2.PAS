unit unt_add_sal_fi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm;

type
  Tfrm_add_sal_fi = class(TForm)
    suiForm1: TsuiForm;
    Label1: TLabel;
    l_type: TLabel;
    L_edit: TLabel;
    e_sal: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure e_salKeyPress(Sender: TObject; var Key: Char);
    procedure E_kerayeKeyPress(Sender: TObject; var Key: Char);
    procedure e_ojratKeyPress(Sender: TObject; var Key: Char);
    procedure e_fiKeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    function check:boolean;
    procedure Button1Click(Sender: TObject);
    procedure insert_sal_fi;
    procedure FormShow(Sender: TObject);
    function existe:boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_add_sal_fi: Tfrm_add_sal_fi;

implementation

uses unt_DataMo_shakhs;

{$R *.dfm}
function Tfrm_add_sal_fi.existe:boolean;
begin
  DataMo_shakhs.ADOQ_sal_fi.SQL.Text:='select * from T_sal_fi where sal='+QuotedStr(e_sal.Text);
  DataMo_shakhs.ADOQ_sal_fi.open;
  if DataMo_shakhs.ADOQ_sal_fi.RecordCount >0 then
  begin
    existe:=true;
    MessageBox(Handle,pchar('”«· << '+e_sal.text+' >> Ê«—œ ‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end
  else
    existe:=false;
end;

procedure Tfrm_add_sal_fi.insert_sal_fi;
begin
  DataMo_shakhs.ADOQ_sal_fi.SQL.Text:='insert into T_sal_fi(sal)values('+QuotedStr(e_sal.Text)+')';
  DataMo_shakhs.ADOQ_sal_fi.ExecSQL;
end;
function Tfrm_add_sal_fi.check:boolean;
begin
  if (e_sal.Text='') then
  begin
     check:=false;
     MessageBox(Handle,'”«· ÃœÌœ »«Ìœ Ê«—œ ‘Êœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end
   else
      check:=true;
end;

procedure Tfrm_add_sal_fi.e_salKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_sal_fi.E_kerayeKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_sal_fi.e_ojratKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_sal_fi.e_fiKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_sal_fi.Button2Click(Sender: TObject);
begin
   close;
end;

procedure Tfrm_add_sal_fi.Button1Click(Sender: TObject);
begin
 if check then
  if not existe then
  begin
   insert_sal_fi;
   MessageBox(Handle,'”«· ÃœÌœ –ŒÌ—Â ‘œ.',' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
   e_sal.Text:='';
  end;
end;

procedure Tfrm_add_sal_fi.FormShow(Sender: TObject);
begin
  e_sal.Text:='';
end;

end.
