unit unt_bank_jadid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm, DB, DBCtrls;

type
  Tfrm_bank_jadid = class(TForm)
    suiForm1: TsuiForm;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    E_shobe: TEdit;
    e_sh_hesab: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    scsal: TDBLookupComboBox;
    DataSource1: TDataSource;
    procedure Button2Click(Sender: TObject);
    function check_exist:boolean;
    function check:boolean;
    procedure insert_bank;
    procedure Button1Click(Sender: TObject);
    procedure e_sh_hesabKeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_bank_jadid: Tfrm_bank_jadid;

implementation

uses unt_DataMo_shakhs, Unt_add_bank, unt_DataM_final, unt_bank_hasanpor;

{$R *.dfm}
procedure Tfrm_bank_jadid.insert_bank;
var s:string;
begin
  s:= trim(scsal.Text)+' '+trim(E_shobe.Text)+' '+trim(e_sh_hesab.Text);

  DataMo_shakhs.ADOQ_mosh_bank.SQL.Text:='insert into T_bank_moshakhasat(bank_name,bank_shobe,hessab_shomare,moshakhasat_kol)'+
  ' values('+QuotedStr(scsal.Text)+','+QuotedStr(E_shobe.Text)+','+QuotedStr(e_sh_hesab.Text)+','+QuotedStr(s)+')';
  DataMo_shakhs.ADOQ_mosh_bank.ExecSQL;
  MessageBox(Handle,'‘„«—Â Õ”«» ÃœÌœ Ê«—œ ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;

function Tfrm_bank_jadid.check_exist:boolean;
begin
 DataMo_shakhs.ADOQ_mosh_bank.SQL.Text:='select * from T_bank_moshakhasat where bank_name='+QuotedStr(scsal.Text)+
 '  and bank_shobe='+QuotedStr(E_shobe.Text)+' and  hessab_shomare='+QuotedStr(e_sh_hesab.Text);
 DataMo_shakhs.ADOQ_mosh_bank.Open;

 if DataMo_shakhs.ADOQ_mosh_bank.RecordCount >0 then
   check_exist:=true
 else
   check_exist:=false;
end;

function Tfrm_bank_jadid.check:boolean;
begin
 if (E_shobe.Text='') or (e_sh_hesab.Text='')or(scsal.Text='')then
  check:=false
 else
  check:=true;
end;


procedure Tfrm_bank_jadid.Button2Click(Sender: TObject);
begin
 close;
end;

procedure Tfrm_bank_jadid.Button1Click(Sender: TObject);
begin
 if check  then
 begin
  if not check_exist then
  begin
    insert_bank ;
    E_shobe.Text:='';
    e_sh_hesab.Text:=''
  end
  else
    MessageBox(Handle,'‘„«—Â Õ”«» »« „‘Œ’«  Ê«—œ ‘œÂ „ÊÃÊœ „Ì»«‘œ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
 end
 else
    MessageBox(Handle,'›Ì·œÂ«Ì ” «—Â œ«— »«Ìœ Ê«—œ ‘Ê‰œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;

procedure Tfrm_bank_jadid.e_sh_hesabKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_bank_jadid.Button3Click(Sender: TObject);
begin
  frm_bank_hasanpor.ShowModal;
end;

procedure Tfrm_bank_jadid.FormShow(Sender: TObject);
begin
  DataM_final.show_bank_hasan;
end;

end.
