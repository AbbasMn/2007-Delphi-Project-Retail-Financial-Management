unit unt_DataMod_kharid;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataMod_kharid = class(TDataModule)
    ADOQuery_kharid: TADOQuery;
    ADOQuery_jam_kharid: TADOQuery;
    ADOQuery_jam_kharidg_kol: TFloatField;
    ADOQuery_jam_kharidojrat_kol: TFloatField;
    ADOQuery_jam_kharidkeraye_kol: TFloatField;
    ADOQuery_jam_kharidremain_kol: TFloatField;
    ADOQuery_jam_kharidgoni_kol: TFloatField;
    ADOQuery_jam_kharidvazn_kol: TFloatField;
    procedure insert_kharid(noe,vazn,fi,ojrat,keraye,name,family,tarikh,cod_shakhs,goni:string);
    procedure show_kharid_all;
    procedure show_kol_all;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataMod_kharid: TDataMod_kharid;

implementation

uses unt_DataMo_shakhs, unt_search, unt_print_resid_kharid;

{$R *.dfm}
procedure TDataMod_kharid.show_kol_all;
begin
 ADOQuery_jam_kharid.SQL.Text:=' select sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
  ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol'+
  ' from t_kharid';
 ADOQuery_jam_kharid.Open;
end;
procedure TDataMod_kharid.show_kharid_all;
begin
  ADOQuery_kharid.SQL.Text:='select * from T_kharid order by family,name,tarikh';
  ADOQuery_kharid.Open;
end;
procedure TDataMod_kharid.insert_kharid(noe,vazn,fi,ojrat,keraye,name,family,tarikh,cod_shakhs,goni:string);
var g_kol,ojrat_kol,keraye_kol,remain:real;
    s:string;
begin
  DataMo_shakhs.ADOQ__foroshande.SQL.Text:='update T_askhas set t_kharid_az=t_kharid_az+1 where family='+QuotedStr(family)+' and name='+QuotedStr(name);
  DataMo_shakhs.ADOQ__foroshande.ExecSQL;

  DataMo_shakhs.ADOQ__foroshande.SQL.Text:='select * from T_askhas  where family='+QuotedStr(family)+' and name='+QuotedStr(name);
  DataMo_shakhs.ADOQ__foroshande.Open;

  s:=DataMo_shakhs.ADOQ__foroshande.Fields[5].AsString;

  g_kol:=StrToFloat(vazn)*StrToFloat(fi);
  ojrat_kol:=StrToFloat(vazn)*StrToFloat(ojrat);
  keraye_kol:=StrToFloat(vazn)*StrToFloat(keraye);
  remain:=g_kol-(ojrat_kol+keraye_kol);
  ADOQuery_kharid.SQL.Text:='insert into T_kharid(sh_kharid,name,family,'+
                                                  'anjir_noe,vazn,'+
                                                  'fi,ojrat,'+
                                                  'keraye,geymat_kol,'+
                                                  'ojrat_kol,'+
                                                  'keraye_kol,remain,'+
                                                  'tarikh,cod_shakhs,goni) values('+DataMo_shakhs.ADOQ__foroshande.Fields[5].AsString+','+QuotedStr(name)+','+QuotedStr(family)+
                                                  ','+QuotedStr(noe)+','+vazn+
                                                  ','+fi+','+ojrat+
                                                  ','+keraye+','+FloatToStr(g_kol)+
                                                  ','+FloatToStr(ojrat_kol)+
                                                  ','+FloatToStr(keraye_kol)+','+FloatToStr(remain)+
                                                  ','+QuotedStr(tarikh)+','+cod_shakhs+','+goni+')';
 ADOQuery_kharid.ExecSQL;

 ADOQuery_kharid.SQL.Text:='select * from t_kharid where sh_kharid='+QuotedStr(s);
 ADOQuery_kharid.Open;
 //Frm_print_resid_kharid.QuickRep1.Print;
 Frm_print_resid_kharid.QuickRep1.Preview;

end;

end.
