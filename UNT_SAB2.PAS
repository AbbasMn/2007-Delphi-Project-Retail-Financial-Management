unit unt_sabt_pardakht;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, SUIForm;

type
  Tfrm_sabt_pardakht = class(TForm)
    suiForm1: TsuiForm;
    Label1: TLabel;
    e_pardakht: TEdit;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label8: TLabel;
    DBText6: TDBText;
    Label7: TLabel;
    DBText5: TDBText;
    Label9: TLabel;
    DBText7: TDBText;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    DBText15: TDBText;
    DBText8: TDBText;
    DBText16: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    DBText17: TDBText;
    L_cod: TLabel;
    DBT_cod: TDBText;
    L_type: TLabel;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure e_pardakhtKeyPress(Sender: TObject; var Key: Char);
    function check:boolean;
    procedure update_mande_nagd;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sabt_pardakht: Tfrm_sabt_pardakht;

implementation

uses unt_pardakht_be_foroshande, unt_print_fo, unt_DataM_forosh,
  unt_add_kharidha;

{$R *.dfm}
procedure Tfrm_sabt_pardakht.update_mande_nagd;
var temp:string;
begin
if L_type.Caption='pardakht' then
  DataM_forosh.ADOQ_forosh.SQL.Text:='update t_forosh set mande=mande-'+e_pardakht.Text+',daryaft_nagd=daryaft_nagd+'+e_pardakht.Text+' where cod='+L_cod.Caption
else
  begin
      if StrToFloat(e_pardakht.Text)=StrToFloat(DataM_forosh.ADOQ_foroshremain.AsString) then
      begin
        DataM_forosh.ADOQ_forosh.SQL.Text:='update t_forosh set mande='+'0'+',daryaft_nagd='+e_pardakht.Text+' where cod='+L_cod.Caption;
      end
      else
      begin
        temp:=FloatToStr(-StrToFloat(e_pardakht.Text)+StrToFloat(DataM_forosh.ADOQ_foroshremain.AsString));
        DataM_forosh.ADOQ_forosh.SQL.Text:='update t_forosh set mande='+temp+',daryaft_nagd='+e_pardakht.Text+' where cod='+L_cod.Caption;
      end;

  end;
  DataM_forosh.ADOQ_forosh.ExecSQL;

  DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where cod='+L_cod.Caption;
  DataM_forosh.ADOQ_forosh.Open;
end;
function Tfrm_sabt_pardakht.check:boolean;
begin
  check:=false;
  if e_pardakht.Text='' then
     MessageBox(Handle,'„»·€ Å—œ«Œ Ì —« Ê«—œ ‰„«ÌÌœ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
    if L_type.Caption='pardakht' then
    begin
      if (StrToFloat(e_pardakht.Text)> StrToFloat(DataM_forosh.ADOQ_foroshmande.AsString)) then
        begin
          MessageBox(Handle,pchar('„»·€ Ê«—œ ‘œÂ «“ << '+DataM_forosh.ADOQ_foroshmande.AsString+' >> »Ì‘ — „Ì »«‘œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
        end
      else
        check:=true;
    end
    else
    begin
      if (StrToFloat(e_pardakht.Text)> StrToFloat(DataM_forosh.ADOQ_foroshremain.AsString)) then
        begin
          MessageBox(Handle,pchar('„»·€ Ê«—œ ‘œÂ «“ << '+DataM_forosh.ADOQ_foroshremain.AsString+' >> »Ì‘ — „Ì »«‘œ.'),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
        end
      else
        check:=true;
    end;
  end;
end;

procedure Tfrm_sabt_pardakht.Button1Click(Sender: TObject);
begin
  if check then
  begin
    update_mande_nagd;
    frm_pardakht_be_foroshande.find;
    e_pardakht.Text:='';
    close;
  end;
end;

procedure Tfrm_sabt_pardakht.e_pardakhtKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_sabt_pardakht.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_sabt_pardakht.FormShow(Sender: TObject);
begin
  L_cod.Caption:=DBT_cod.Caption;
end;

procedure Tfrm_sabt_pardakht.Button5Click(Sender: TObject);
begin
frm_add_kharidha.show_calculator;
end;

end.
