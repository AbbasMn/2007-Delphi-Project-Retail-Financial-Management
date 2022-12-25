unit unt__eslah_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, SUIForm, DB;

type
  Tfrm_eslah_f = class(TForm)
    suiForm1: TsuiForm;
    DataSource3: TDataSource;
    DataSource1: TDataSource;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah_f: Tfrm_eslah_f;

implementation

uses unt_DataM_forosh, unt_add_kharidha, unt_eslah_forosh,
  unt_DataMo_shakhs;

{$R *.dfm}






end.
