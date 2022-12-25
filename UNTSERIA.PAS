unit Untserial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmgetserial = class(TForm)
    Edit1: TEdit;
   function gethardserial(const driveletter:char ):string;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmgetserial: Tfrmgetserial;

implementation

{$R *.dfm}
function Tfrmgetserial.gethardserial(const driveletter:char ):string;
 var notused:DWORD;
     vf:DWORD;
     vinfo:array[0..max_path] of Char;
     vsn:DWORD;
begin
   GetVolumeInformation(pchar(driveletter + ':\'),nil,SIZEOF(vinfo),@vsn,notused,vf,nil,0);
   result:=format('volser=%8.8x',[vsn]);

end;

procedure Tfrmgetserial.FormShow(Sender: TObject);
begin
  Edit1.Text:=gethardserial('c');
end;

end.
