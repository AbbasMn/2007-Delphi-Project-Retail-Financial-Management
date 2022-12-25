unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    ADOQuery1login_public: TWideStringField;
    ADOQuery1login_user: TWideStringField;
    ADOQuery1back: TWideStringField;
    ADOQuery1pic: TWideStringField;
    ADOQuery1bug_tarikh: TWideStringField;
    ADOQuery1bug_forosh: TWideStringField;
    ADOQuery1serial: TWideStringField;
    ADOQuery1record_count: TWideStringField;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var bug,rc:string;
begin
 ADOQuery1.SQL.Text:='select * from t_login';
 ADOQuery1.Open;
 bug:=ADOQuery1bug_forosh.AsString;
 rc:=ADOQuery1record_count.AsString;
 if (bug='yes')and(rc='300')then
  ADOQuery1.SQL.Text:='update t_login set record_count='+QuotedStr('600');
 if (bug='yes')and(rc='600')then
  ADOQuery1.SQL.Text:='update t_login set record_count='+QuotedStr('1000');
 if (bug='yes')and(rc='1000')then
  ADOQuery1.SQL.Text:='update t_login set bug_forosh='+QuotedStr('no');
  ADOQuery1.ExecSQL;

  close;
end;

end.
