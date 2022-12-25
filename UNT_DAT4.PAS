unit unt_Datam_gozaresh;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDatam_gozaresh = class(TDataModule)
    ADOQ_goz_jens: TADOQuery;
    ADOQ_goz_jens_vazn_kol: TFloatField;
    ADOQ_goz_jensanjir_noe: TWideStringField;
    ADOQ_goz_kharidaran: TADOQuery;
    ADOQ_goz_kharidaranname_kh: TWideStringField;
    ADOQ_goz_kharidaranfamily_kh: TWideStringField;
    ADOQ_goz_kharidaranvazn_kol: TFloatField;
    ADOQ_goz_kharidarangeymat: TFloatField;
    ADOQ_ranande_daron: TADOQuery;
    ADOQ_ranande_daronranande_daron: TWideStringField;
    ADOQ_ranande_daronvazn_kol: TFloatField;
    ADOQ_ranande_daronkeraye: TFloatField;
    ADOQ_ranande_bein: TADOQuery;
    ADOQ_ranande_beinranande: TWideStringField;
    ADOQ_ranande_beinvazn_kol: TFloatField;
    ADOQ_ranande_beinkeraye: TFloatField;
    ADOQ_jam: TADOQuery;
    ADOQ_jamvazn_kol: TFloatField;
    ADOQ_jamkeraye_biron: TFloatField;
    ADOQ_jamkeraye_daron: TFloatField;
    ADOQ_jamgeymat_kol_nakhales: TFloatField;
    ADOQ_jampardakht_be_foroshande: TFloatField;
    ADOQ_jamojrat_kol: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Datam_gozaresh: TDatam_gozaresh;

implementation

uses unt_DataM_forosh;

{$R *.dfm}

end.
