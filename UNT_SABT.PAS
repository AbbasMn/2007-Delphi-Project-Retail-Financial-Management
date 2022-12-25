unit unt_sabt_pardakht_koli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SUIForm, DBCtrls;

type
  Tfrm_sabt_pardakht_koli = class(TForm)
    suiForm1: TsuiForm;
    l_type: TLabel;
    e_pardakht: TEdit;
    Button1: TButton;
    Button2: TButton;
    DBText5: TDBText;
    procedure Button2Click(Sender: TObject);
    procedure update;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_sabt_pardakht_koli: Tfrm_sabt_pardakht_koli;

implementation

uses unt_pardakht_be_foroshande, unt_DataM_forosh, unt_DataMo_shakhs, DB;

{$R *.dfm}
procedure Tfrm_sabt_pardakht_koli.update;
var st:string;
begin
  if e_pardakht.Text='' then
    MessageBox(Handle,'„»·€ Å—œ«Œ Ì —« Ê«—œ ‰„«ÌÌœ.',' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
   if DBText5.Caption='0' then
    MessageBox(Handle,pchar('ﬁ»·¬ „»«·€ Å—œ«Œ  ‘œÂ «‰œ.'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
   else
   begin
    if StrToFloat(e_pardakht.Text) = StrToFloat(DBText5.Caption) then
      begin
        DataM_forosh.ADOQ_forosh.SQL.Text:='update t_forosh set daryaft_nagd=mande,mande='+'0'+
        ' where cod_kh='+DataMo_shakhs.ADOQ_kharidarcod.AsString+' and sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString;
        DataM_forosh.ADOQ_forosh.ExecSQL;
        e_pardakht.Text:='';

    DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+
    ' and name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);
     DataM_forosh.ADOQ_forosh.Open;

        st:=' select sum(mande)as mande_kol,sum(daryaft_nagd)as nagd_kol,sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
        ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol,sum(geymat_kol-ojrat_az_kh-keraye_az_kh) as kh_mount'+
        ',sum(keraye_az_kh)as keraye_kh,sum(ojrat_az_kh)as ojrat_kh'+
        ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol)as nakhales_kol'+
        ' from t_forosh where sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+
        ' and name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);
        DataM_forosh.ADOQuery_jam_forosh.SQL.Text:=st;
        DataM_forosh.ADOQuery_jam_forosh.Open;
      end
      else
        MessageBox(Handle,pchar('„»·€ Å—œ«Œ Ì œﬁÌﬁ¬ »«Ìœ »« << '+DBText5.Caption+' >> »—«»— »«‘œ.'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
   end;
  end;
end;

procedure Tfrm_sabt_pardakht_koli.Button2Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_sabt_pardakht_koli.Button1Click(Sender: TObject);
begin
  update;
end;

procedure Tfrm_sabt_pardakht_koli.FormShow(Sender: TObject);
begin
  e_pardakht.Text:='';
end;

end.
