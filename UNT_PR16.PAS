unit unt_print_hasanpor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrm_print_hasanpor = class(TForm)
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    QRL_type: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape7: TQRShape;
    QRLabel10: TQRLabel;
    QRShape27: TQRShape;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRShape24: TQRShape;
    QRShape2: TQRShape;
    QRShape5: TQRShape;
    QRBand1: TQRBand;
    QRDBText13: TQRDBText;
    QRExpr2: TQRExpr;
    QRShape16: TQRShape;
    QRShape23: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRBand2: TQRBand;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel13: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_print_hasanpor: TFrm_print_hasanpor;

implementation

uses unt_DataM_group_by;

{$R *.dfm}

end.
