unit Unt_add_bank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm, DB, Grids, DBGrids;

type
  Tfrm_add_bank = class(TForm)
    suiForm1: TsuiForm;
    Label4: TLabel;
    L_bed: TLabel;
    l_type: TLabel;
    L_edit: TLabel;
    L_bes: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    e_sh_fish: TEdit;
    e_bedehkar: TEdit;
    E_bestankar: TEdit;
    GroupBox5: TGroupBox;
    RadioGroup11: TRadioGroup;
    E_tarikh: TEdit;
    Memo1: TMemo;
    DBGrid3: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    Ed: TEdit;
    RadioGroup1: TRadioGroup;
    procedure Button2Click(Sender: TObject);
    function check:boolean;
    procedure insert(ss:string);
    procedure RadioGroup11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure e_jariKeyPress(Sender: TObject; var Key: Char);
    procedure e_sh_fishKeyPress(Sender: TObject; var Key: Char);
    procedure e_bedehkarKeyPress(Sender: TObject; var Key: Char);
    procedure E_bestankarKeyPress(Sender: TObject; var Key: Char);
    procedure EdChange(Sender: TObject);
    procedure type_;
    procedure RadioGroup1Click(Sender: TObject);
    procedure find_place_for_jadid;
    procedure az_temp_bank_be_bank;
    function check_exists:boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_add_bank: Tfrm_add_bank;

implementation

uses unt_DataM_forosh, Taghvim, unt_main, Math, unt_DataMo_shakhs,
  unt_DataM_final;

{$R *.dfm}
function Tfrm_add_bank.check_exists:boolean;
begin
  check_exists:=false;
  DataM_final.ADOQ_bank2.SQL.Text:='select * from t_bank where moshakhasat_kol='+
  QuotedStr(DataMo_shakhs.ADOq_show_sh_hesabmoshakhasat_kol.AsString)+' and sh_fish='+e_sh_fish.Text;
  DataM_final.ADOQ_bank2.Open;

  if DataM_final.ADOQ_bank2.RecordCount>0 then
    check_exists:=true;
end;

procedure Tfrm_add_bank.az_temp_bank_be_bank;
var mande_bank:real;
begin
          DataM_forosh.ADOQ_mande_bank.SQL.Text:='select sum(bestankar-bedehkar) as mande_kol from t_bank where moshakhasat_kol='+QuotedStr(DataMo_shakhs.ADOq_show_sh_hesabmoshakhasat_kol.AsString);
          DataM_forosh.ADOQ_mande_bank.Open;
          mande_bank:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;

  DataM_final.ADOQ_temp_bank.SQL.Text:='select * from t_temp_bank  order by tarikh,cod';
  DataM_final.ADOQ_temp_bank.Open;

  if DataM_final.ADOQ_temp_bank.RecordCount >0 then
  begin
    DataM_final.ADOQ_temp_bank.First;
    while not(DataM_final.ADOQ_temp_bank.Eof)do
    begin

    DataM_final.ADOQ_bank2.SQL.Text:='insert into t_bank(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh)values('+
    QuotedStr(DataM_final.ADOQ_temp_bankmoshakhasat_kol.AsString)+
    ','+QuotedStr(DataM_final.ADOQ_temp_banksh_fish.AsString)+','+
    QuotedStr(DataM_final.ADOQ_temp_banksharh.AsString)+
    ','+DataM_final.ADOQ_temp_bankbedehkar.AsString+','+DataM_final.ADOQ_temp_bankbestankar.AsString+
    ','+FloatToStr(mande_bank+DataM_final.ADOQ_temp_bankbestankar.Value-DataM_final.ADOQ_temp_bankbedehkar.Value)+
    ','+QuotedStr(DataM_final.ADOQ_temp_banktarikh.AsString)+')';

     DataM_final.ADOQ_bank2.ExecSQL;
     sleep(9000);

     DataM_forosh.ADOQ_bank2.SQL.Text:='select * from t_bank  where moshakhasat_kol='+QuotedStr(DataMo_shakhs.ADOq_show_sh_hesabmoshakhasat_kol.AsString);
     DataM_forosh.ADOQ_bank2.Open;
     DataM_forosh.ADOQ_bank2.Last;

     mande_bank:=DataM_forosh.ADOQ_bank2mande.Value;

     DataM_final.ADOQ_temp_bank.Delete;
     DataM_final.ADOQ_temp_bank.First;
    end;
  end;
end;
procedure Tfrm_add_bank.find_place_for_jadid;
var first_cod:real;
begin

 if (RadioGroup1.ItemIndex=0) then
 begin
    DataM_final.ADOQ_bank2.SQL.Text:='select * from t_bank where moshakhasat_kol='+
    QuotedStr(DataMo_shakhs.ADOq_show_sh_hesabmoshakhasat_kol.AsString)+
    ' and tarikh >='+QuotedStr(E_tarikh.Text);
      DataM_final.ADOQ_bank2.Open;
 end;
 if (RadioGroup1.ItemIndex=1) then
 begin
    DataM_final.ADOQ_bank2.SQL.Text:='select * from t_bank where moshakhasat_kol='+
    QuotedStr(DataMo_shakhs.ADOq_show_sh_hesabmoshakhasat_kol.AsString)+
    ' and tarikh >'+QuotedStr(E_tarikh.Text);
    DataM_final.ADOQ_bank2.Open;
 end;
  sleep(3000);
  if DataM_final.ADOQ_bank2.RecordCount>0 then
  begin
    DataM_final.ADOQ_bank2.first;
    first_cod:=DataM_final.ADOQ_bank2cod.AsFloat;

    DataM_final.ADOQ_bank2.SQL.Text:='select * from t_bank where moshakhasat_kol='+
    QuotedStr(DataMo_shakhs.ADOq_show_sh_hesabmoshakhasat_kol.AsString)+
    ' and cod >='+FloatToStr(first_cod)+' order by tarikh,cod';
    DataM_final.ADOQ_bank2.Open;

    if DataM_final.ADOQ_bank2.RecordCount >0 then
    begin
      DataM_final.ADOQ_bank2.First;
      while not(DataM_final.ADOQ_bank2.Eof)do
      begin
        DataM_final.ADOQ_temp_bank.SQL.Text:='insert into t_temp_bank(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh)values('+
        QuotedStr(DataM_final.ADOQ_bank2moshakhasat_kol.AsString)+
        ','+QuotedStr(DataM_final.ADOQ_bank2sh_fish.AsString)+','+
        QuotedStr(DataM_final.ADOQ_bank2sharh.AsString)+
        ','+DataM_final.ADOQ_bank2bedehkar.AsString+','+DataM_final.ADOQ_bank2bestankar.AsString+
        ','+DataM_final.ADOQ_bank2mande.AsString+
        ','+QuotedStr(DataM_final.ADOQ_bank2tarikh.AsString)+')';
        DataM_final.ADOQ_temp_bank.ExecSQL;
        DataM_final.ADOQ_bank2.Delete;
        DataM_final.ADOQ_bank2.First;
      end;
    end;
  end;
  sleep(9000);
end;

procedure Tfrm_add_bank.type_;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    L_bes.Visible:=true;
    L_bed.Visible:=false;
    E_bestankar.Visible:=true;
    e_bedehkar.Visible:=false;
    e_bedehkar.Text:='';
  end
  else
  begin
    L_bes.Visible:=false;
    L_bed.Visible:=true;
    E_bestankar.Visible:=false;
    e_bedehkar.Visible:=true;
    E_bestankar.Text:='';
  end;
end;

procedure Tfrm_add_bank.insert(ss:string);
var s:string;
    pc:pchar;
    mande_kol:Real;
begin
    if RadioGroup1.ItemIndex=0 then
  begin
    e_bedehkar.Text:='0';
  end
  else
  begin
    E_bestankar.Text:='0';
  end;

  DataM_final.ADOQ_bank2.SQL.Text:='select * from t_bank where moshakhasat_kol='+
  QuotedStr(DataMo_shakhs.ADOq_show_sh_hesabmoshakhasat_kol.AsString);
  DataM_final.ADOQ_bank2.Open;
  sleep(3000);
  DataM_final.ADOQ_bank2.Last;
  if   (DataM_final.ADOQ_bank2tarikh.AsString >= E_tarikh.Text) then
  begin
    find_place_for_jadid;
    sleep(5000);
  end;

  DataM_forosh.ADOQ_mande_bank.SQL.Text:='select sum(bestankar-bedehkar) as mande_kol from t_bank where moshakhasat_kol='+QuotedStr(DataMo_shakhs.ADOq_show_sh_hesabmoshakhasat_kol.AsString);
  DataM_forosh.ADOQ_mande_bank.Open;


  mande_kol:=DataM_forosh.ADOQ_mande_bankmande_kol.Value;

  if RadioGroup1.ItemIndex=0 then
  begin
      mande_kol:=mande_kol+StrToFloat(E_bestankar.Text);

      DataM_forosh.ADOQ_bank2.SQL.Text:='insert into t_bank(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh)values('+
      QuotedStr(DataMo_shakhs.ADOq_show_sh_hesabmoshakhasat_kol.AsString)+
      ','+QuotedStr(e_sh_fish.Text)+','+QuotedStr(Memo1.Text)+
      ','+e_bedehkar.Text+','+E_bestankar.Text+','+FloatToStr(mande_kol)+','+QuotedStr(E_tarikh.Text)+')';

      DataM_forosh.ADOQ_bank2.ExecSQL;
      
      e_sh_fish.Text:='';
      e_bedehkar.Text:='';
      E_bestankar.Text:='';
      Memo1.Text:='';


      DataM_final.ADOQ_temp_bank.SQL.Text:='select * from t_temp_bank order by tarikh,cod';
      DataM_final.ADOQ_temp_bank.Open;
      if DataM_final.ADOQ_temp_bank.RecordCount >0 then
        az_temp_bank_be_bank;
      MessageBox(Handle,'„Ê—œ »«‰òÌ ÃœÌœ Ê«—œ ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
  end;

  if (RadioGroup1.ItemIndex=1)then
  begin
    if not(mande_kol < StrToFloat(e_bedehkar.Text)) then
    begin
      mande_kol:=mande_kol-StrToFloat(e_bedehkar.Text);
      DataM_forosh.ADOQ_bank2.SQL.Text:='insert into t_bank(moshakhasat_kol,sh_fish,sharh,bedehkar,bestankar,mande,tarikh)values('+
      QuotedStr(DataMo_shakhs.ADOq_show_sh_hesabmoshakhasat_kol.AsString)+
      ','+QuotedStr(e_sh_fish.Text)+','+QuotedStr(Memo1.Text)+
      ','+e_bedehkar.Text+','+E_bestankar.Text+','+FloatToStr(mande_kol)+','+QuotedStr(E_tarikh.Text)+')';
       DataM_forosh.ADOQ_bank2.ExecSQL;
      e_sh_fish.Text:='';
      e_bedehkar.Text:='';
      E_bestankar.Text:='';
      Memo1.Text:='';
      DataM_final.ADOQ_temp_bank.SQL.Text:='select * from t_temp_bank';
      DataM_final.ADOQ_temp_bank.Open;
      if DataM_final.ADOQ_temp_bank.RecordCount >0 then
        az_temp_bank_be_bank;
      MessageBox(Handle,'„Ê—œ »«‰òÌ ÃœÌœ Ê«—œ ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);        
    end
    else
    begin
      pc:=pchar('„»·€ Ê«—œ ‘œÂ »—«Ì »—œ«‘  «“ Õ”«» ° «“ „«‰œÂ Õ”«» = '+FloatToStr(mande_kol)+' »Ì‘ — „Ì»«‘œ.' );
      MessageBox(Handle,pc,'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end;
  end;

end;

function Tfrm_add_bank.check:boolean;
begin
  check:=true;
  if (E_tarikh.Text='')or(e_sh_fish.Text='') then
  begin
     check:=false;
     MessageBox(Handle,'›Ì·œÂ«Ì ” «—Â œ«— »«Ìœ Ê«—œ ‘Ê‰œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end
  else
  begin
    if (RadioGroup1.ItemIndex=0)and(E_bestankar.Text='') then
    begin
      check:=false;
      MessageBox(Handle,'›Ì·œÂ«Ì ” «—Â œ«— »«Ìœ Ê«—œ ‘Ê‰œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end;
    if (RadioGroup1.ItemIndex=1)and(e_bedehkar.Text='') then
    begin
      check:=false;
      MessageBox(Handle,'›Ì·œÂ«Ì ” «—Â œ«— »«Ìœ Ê«—œ ‘Ê‰œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end;
  end;
end;

procedure Tfrm_add_bank.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_add_bank.RadioGroup11Click(Sender: TObject);
begin
if RadioGroup11.ItemIndex=1 then
  Begin
    _taghvim.ShowModal;
    E_tarikh.Text:=_taghvim._str_date;
    if E_tarikh.Text='' then
      E_tarikh.Text:=frm_main.E_tarikh.Text;
  end
  else
  E_tarikh.Text:=frm_main.E_tarikh.Text;
end;

procedure Tfrm_add_bank.FormShow(Sender: TObject);
begin
  DataMo_shakhs.show_sh_hesab;
  RadioGroup11.ItemIndex:=0;
  E_tarikh.Text:=frm_main.E_tarikh.Text;
  e_sh_fish.Text:='';
  e_bedehkar.Text:='';
  E_bestankar.Text:='';
  Memo1.Text:='';
  RadioGroup1.ItemIndex:=0;
  type_;
end;

procedure Tfrm_add_bank.Button1Click(Sender: TObject);
begin
  If check then
  begin
   if not check_exists then
   begin
    insert('add');
   end
   else
    MessageBox(Handle,'çò »« „‘Œ’«  Ê—ÊœÌ ﬁ»·¬ Ê«—œ ‘œÂ «”  ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end;
end;

procedure Tfrm_add_bank.e_jariKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_bank.e_sh_fishKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_bank.e_bedehkarKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_bank.E_bestankarKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_add_bank.EdChange(Sender: TObject);
begin
 DataMo_shakhs.ADOq_show_sh_hesab.Locate('moshakhasat_kol',Ed.Text,[loPartialKey]);
end;

procedure Tfrm_add_bank.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

end.
