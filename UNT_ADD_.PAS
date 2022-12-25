unit unt_add_sal_noe_fi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm, DBCtrls, DB;

type
  TFrm_add_sal_noe_fi = class(TForm)
    suiForm1: TsuiForm;
    Label2: TLabel;
    Label3: TLabel;
    e_fi: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    scsal: TDBLookupComboBox;
    ComboBox1: TComboBox;
    DataSource1: TDataSource;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure e_fiKeyPress(Sender: TObject; var Key: Char);
    function check:boolean;
    procedure insert_sal_fi;
    function existe:boolean;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_add_sal_noe_fi: TFrm_add_sal_noe_fi;

implementation

uses unt_DataM_forosh, unt_DataMo_shakhs;

{$R *.dfm}
function TFrm_add_sal_noe_fi.existe:boolean;
begin
  DataMo_shakhs.ADOQ_sal_fi.SQL.Text:='select * from T_sal_fi where sal='+QuotedStr(scsal.Text)+' and noe='+QuotedStr(ComboBox1.Text);
  DataMo_shakhs.ADOQ_sal_fi.Open;

  if DataMo_shakhs.ADOQ_sal_fi.RecordCount >0 then
  begin
    existe:=true;
    MessageBox(Handle,pchar('›Ì «‰ÃÌ— <<'+ComboBox1.Text +' >> »—«Ì ”«·  << '+scsal.Text +' >>  Ê«—œ ‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end
  else
   existe:=false;
end;
procedure TFrm_add_sal_noe_fi.insert_sal_fi;
begin
  DataMo_shakhs.ADOQ_sal_fi.SQL.Text:='insert into T_sal_fi(sal,noe,fi)values('+QuotedStr(scsal.Text)+','+QuotedStr(ComboBox1.Text)+','+e_fi.Text+')';
  DataMo_shakhs.ADOQ_sal_fi.ExecSQL;
end;
function TFrm_add_sal_noe_fi.check:boolean;
begin
  if (scsal.Text='') or (e_fi.Text='')or(ComboBox1.Text='')then
  begin
     check:=false;
     MessageBox(Handle,'”«· ° ‰Ê⁄ «‰ÃÌ— Ê ›Ì »«Ìœ Ê«—œ ‘Ê‰œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end
   else
      check:=true;
end;

procedure TFrm_add_sal_noe_fi.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TFrm_add_sal_noe_fi.FormShow(Sender: TObject);
begin
  DataM_forosh.show_sal;
  e_fi.Text:='';
end;

procedure TFrm_add_sal_noe_fi.e_fiKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_add_sal_noe_fi.Button1Click(Sender: TObject);
begin
 if check then
  if not existe then
  begin
   insert_sal_fi;
   MessageBox(Handle,'”«· Ê „ﬁ«œÌ— –ŒÌ—Â ‘œ.',' ÊÃÂ!',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
   e_fi.Text:='';

  end;
end;

end.
