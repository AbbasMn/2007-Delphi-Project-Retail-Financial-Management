unit unt_sh_jadid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm;

type
  Tfrm_foroshande_jadid = class(TForm)
    suiForm1: TsuiForm;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    E_telephon_manzel: TEdit;
    E_telephon_kar: TEdit;
    e_telephon_hamrah: TEdit;
    E_name: TEdit;
    E_family: TEdit;
    Button2: TButton;
    Button1: TButton;
    l_edit: TLabel;
    L_type: TLabel;
    function check:boolean;
    function check_exist_foroshande:boolean;
    function check_exist_kharidar:boolean;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure insert_kharidar;
    procedure insert_foroshande;
    procedure update_foroshande;
    procedure update_kharidar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_foroshande_jadid: Tfrm_foroshande_jadid;

implementation

uses unt_DataMo_shakhs;

{$R *.dfm}
procedure Tfrm_foroshande_jadid.update_foroshande;
begin
  DataMo_shakhs.ADOQ__foroshande.SQL.Text:='update T_foroshande set tel_hamrah='+
  QuotedStr(e_telephon_hamrah.Text)+',tel_kar='+QuotedStr(E_telephon_kar.Text)+
  ',tel_manzel='+QuotedStr(E_telephon_manzel.Text)+' where name='+QuotedStr(trim(E_name.Text))+
  ' and family='+QuotedStr(trim(E_family.Text));
  DataMo_shakhs.ADOQ__foroshande.ExecSQL;
  MessageBox(Handle,pchar(' „‘Œ’«  << '+E_name.Text+' --- '+E_family.Text+' >> –ŒÌ—Â ‘œ.'),' ÊÃÂ !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);  
  DataMo_shakhs.show_foroshande;
end;

procedure Tfrm_foroshande_jadid.update_kharidar;
begin
  DataMo_shakhs.ADOQ_kharidar.SQL.Text:='update t_kharidar set tel_hamrah='+
  QuotedStr(e_telephon_hamrah.Text)+',tel_kar='+QuotedStr(E_telephon_kar.Text)+
  ',tel_manzel='+QuotedStr(E_telephon_manzel.Text)+' where name='+QuotedStr(trim(E_name.Text))+
  ' and family='+QuotedStr(trim(E_family.Text));
  DataMo_shakhs.ADOQ_kharidar.ExecSQL;
  MessageBox(Handle,pchar(' „‘Œ’«  << '+E_name.Text+' --- '+E_family.Text+' >> –ŒÌ—Â ‘œ.'),' ÊÃÂ !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
  DataMo_shakhs.show_kharidar;
end;

procedure Tfrm_foroshande_jadid.insert_kharidar;
begin
  DataMo_shakhs.ADOQ_kharidar.SQL.Text:='insert into t_kharidar(name,family,tel_hamrah,tel_kar,tel_manzel)'+
  ' values('+QuotedStr(trim(E_name.Text))+','+QuotedStr(trim(E_family.Text))+','+QuotedStr(e_telephon_hamrah.Text)+
  ','+QuotedStr(E_telephon_kar.Text)+','+QuotedStr(E_telephon_manzel.Text)+')';
  DataMo_shakhs.ADOQ_kharidar.ExecSQL;
  MessageBox(Handle,pchar(' „‘Œ’«  << '+E_name.Text+' --- '+E_family.Text+' >> –ŒÌ—Â ‘œ.'),' ÊÃÂ !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
  frm_foroshande_jadid.e_name.Text:='';
  frm_foroshande_jadid.E_family.Text:='';
  frm_foroshande_jadid.e_telephon_hamrah.Text:='';
  frm_foroshande_jadid.E_telephon_kar.Text:='';
  frm_foroshande_jadid.E_telephon_manzel.Text:='';

end;
procedure Tfrm_foroshande_jadid.insert_foroshande;
begin
  DataMo_shakhs.ADOQ__foroshande.SQL.Text:='insert into T_foroshande(name,family,tel_hamrah,tel_kar,tel_manzel)'+
  ' values('+QuotedStr(trim(E_name.Text))+','+QuotedStr(trim(E_family.Text))+','+QuotedStr(e_telephon_hamrah.Text)+
  ','+QuotedStr(E_telephon_kar.Text)+','+QuotedStr(E_telephon_manzel.Text)+')';
  DataMo_shakhs.ADOQ__foroshande.ExecSQL;
  MessageBox(Handle,pchar(' „‘Œ’«  << '+E_name.Text+' --- '+E_family.Text+' >> –ŒÌ—Â ‘œ.'),' ÊÃÂ !',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONINFORMATION);
  frm_foroshande_jadid.e_name.Text:='';
  frm_foroshande_jadid.E_family.Text:='';
  frm_foroshande_jadid.e_telephon_hamrah.Text:='';
  frm_foroshande_jadid.E_telephon_kar.Text:='';
  frm_foroshande_jadid.E_telephon_manzel.Text:='';    
end;

function Tfrm_foroshande_jadid.check_exist_kharidar:boolean;
begin
  check_exist_kharidar:=false;
  DataMo_shakhs.ADOQ_kharidar.SQL.Text:='select * from t_kharidar where name='+QuotedStr(trim(E_name.Text))+
  ' and family='+QuotedStr(trim(E_family.Text));
  DataMo_shakhs.ADOQ_kharidar.Open;

  if DataMo_shakhs.ADOQ_kharidar.RecordCount >0 then
  begin
    check_exist_kharidar:=true;
    MessageBox(Handle,pchar(' „‘Œ’«  << '+E_name.Text+' --- '+E_family.Text+' >> ﬁ»·« Ê«—œ ‘œÂ «” .'),'Œÿ«!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
  end;
end;
function Tfrm_foroshande_jadid.check_exist_foroshande:boolean;
begin
  check_exist_foroshande:=false;
  DataMo_shakhs.ADOQ__foroshande.SQL.Text:='select * from T_foroshande where name='+QuotedStr(trim(E_name.Text))+
  ' and family='+QuotedStr(trim(E_family.Text));
  DataMo_shakhs.ADOQ__foroshande.Open;

  if DataMo_shakhs.ADOQ__foroshande.RecordCount >0 then
  begin
    check_exist_foroshande:=true;
    MessageBox(Handle,pchar(' „‘Œ’«  << '+E_name.Text+' --- '+E_family.Text+' >> ﬁ»·« Ê«—œ ‘œÂ «” .'),'Œÿ«!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
  end;
end;

function Tfrm_foroshande_jadid.check:boolean;
begin
 check:=true;
 if (E_name.Text='')or(E_family.Text='') then
 begin
  check:=false;
  MessageBox(Handle,'‰«„ Ê ‰«„ Œ«‰Ê«œêÌ »«Ìœ Ê«—œ ‘Êœ','Œÿ«!',MB_OK or MB_RIGHT or MB_RTLREADING or MB_ICONEXCLAMATION);
 end;
end;


procedure Tfrm_foroshande_jadid.Button1Click(Sender: TObject);
begin
  if check then
  begin
    if L_type.Caption='forosh' then
    begin
      if not check_exist_foroshande then
        insert_foroshande;
        DataMo_shakhs.show_foroshande;
    end;
    if L_type.Caption='kharid' then                   
    begin
      if not check_exist_kharidar then
        insert_kharidar;
        DataMo_shakhs.show_kharidar;
    end;

    if l_edit.Caption='editkharidar' then
    begin
      update_kharidar;
    end;

    if l_edit.Caption='editforoshande' then
    begin
      update_foroshande;
    end;    
  end;
end;

procedure Tfrm_foroshande_jadid.Button2Click(Sender: TObject);
begin
  Close;
end;

end.
