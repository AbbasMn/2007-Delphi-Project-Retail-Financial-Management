unit unt_add_ranande;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm;

type
  Tfrm_add_ranande = class(TForm)
    suiForm1: TsuiForm;
    Label1: TLabel;
    Label2: TLabel;
    l_type: TLabel;
    L_edit: TLabel;
    e_name: TEdit;
    E_family: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    function check:boolean;
    procedure insert_ranande;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_add_ranande: Tfrm_add_ranande;

implementation

uses unt_DataMo_shakhs, unt__eslah_f;

{$R *.dfm}
procedure Tfrm_add_ranande.insert_ranande;
begin
  DataMo_shakhs.ADOQ_insert_ranande.SQL.Text:='insert into t_ranande(family)values('+QuotedStr(E_family.Text+' - '+e_name.Text)+')';
  DataMo_shakhs.ADOQ_insert_ranande.ExecSQL;
  MessageBox(Handle,pchar('„‘Œ’«  ¬ﬁ«Ì << '+e_name.Text+' --- '+E_family.Text+' >> –ŒÌ—Â ‘œ.'),' ÊÃÂ !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
  e_name.Text:='';
  E_family.Text:='';
end;
function Tfrm_add_ranande.check:boolean;
begin
  check:=true;
  if (e_name.Text='') or (E_family.Text='') then
  begin
    check:=false;
    MessageBox(Handle,'‰«„ Ê ‰«„ Œ«‰Ê«œêÌ »«Ìœ Ê«—œ ‘Ê‰œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end
  else
  begin
    DataMo_shakhs.ADOQ_ranande.SQL.Text:='select * from t_ranande where family='+QuotedStr(E_family.Text+' - '+e_name.Text);
    DataMo_shakhs.ADOQ_ranande.Open;

    if DataMo_shakhs.ADOQ_ranande.RecordCount >0 then
    begin
     check:=false;
     MessageBox(Handle,pchar('„‘Œ’«  ¬ﬁ«Ì << '+E_family.Text+' - '+e_name.Text+' >> ﬁ»·¬Ê«—œ ‘œÂ «” .'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end;
  end;
end;
procedure Tfrm_add_ranande.Button2Click(Sender: TObject);
begin
 close;
end;

procedure Tfrm_add_ranande.Button1Click(Sender: TObject);
begin
 if check then
  insert_ranande;
end;

procedure Tfrm_add_ranande.FormShow(Sender: TObject);
begin
  e_name.Text:='';
  E_family.Text:='';
end;

end.
