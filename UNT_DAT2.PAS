unit unt_DataM_intarikh;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataM_intarikh = class(TDataModule)
    ADOQ_kharidaran: TADOQuery;
    ADOQ_foroshandeha: TADOQuery;
    ADOQ_kharidaranname_kh: TWideStringField;
    ADOQ_kharidaranfamily_kh: TWideStringField;
    ADOQ_kharidarantarikh: TWideStringField;
    ADOQ_foroshandehaname: TWideStringField;
    ADOQ_foroshandehafamily: TWideStringField;
    ADOQ_foroshandehatarikh: TWideStringField;
    ADOQ_joz_forosh: TADOQuery;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    FloatField1: TFloatField;
    ADOQ_joz_kharid: TADOQuery;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    FloatField2: TFloatField;
    procedure ADOQ_kharidaranAfterScroll(DataSet: TDataSet);
    procedure ADOQ_foroshandehaAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataM_intarikh: TDataM_intarikh;

implementation

uses unt_DataMo_shakhs, Unt_search_intarikh;

{$R *.dfm}

procedure TDataM_intarikh.ADOQ_kharidaranAfterScroll(DataSet: TDataSet);
begin
  Frm_search_intarikh.joziat_kharidaran;
end;

procedure TDataM_intarikh.ADOQ_foroshandehaAfterScroll(DataSet: TDataSet);
begin
 Frm_search_intarikh.joziat_foroshandegan;
end;

end.
