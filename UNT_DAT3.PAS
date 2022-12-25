unit unt_DataM_group_by;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataM_group_by = class(TDataModule)
    ADOQ_koli_kharidar: TADOQuery;
    ADOQ_sum_koli_kharid: TADOQuery;
    ADOQ_koli_foroshande: TADOQuery;
    ADOQ_sum_koli_forosh: TADOQuery;
    ADOQ_hasan_por: TADOQuery;
    ADoq_jam_hasanpor: TADOQuery;
    ADOQ_koli_kharidartarikh: TWideStringField;
    ADOQ_koli_kharidarvazn_kol: TFloatField;
    ADOQ_koli_kharidarg_kol: TFloatField;
    ADOQ_sum_koli_kharidvazn_kol: TFloatField;
    ADOQ_sum_koli_kharidg_kol: TFloatField;
    ADOQ_sum_koli_kharidmiangin: TFloatField;
    ADOConnection1: TADOConnection;
    ADOQ_koli_kharidargoni_kol: TFloatField;
    ADOQ_sum_koli_kharidgoni_kol: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataM_group_by: TDataM_group_by;

implementation

uses unt_DataMo_shakhs;

{$R *.dfm}

end.
