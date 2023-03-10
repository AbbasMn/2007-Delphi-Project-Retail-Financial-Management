unit unt_view_shakhs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, ExtCtrls, SUIForm, dxCore,
  dxButtons;

type
  Tfrm_view_shakhs = class(TForm)
    suiForm1: TsuiForm;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    E_search: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Edit10: TEdit;
    DBGrid2: TDBGrid;
    Button10: TButton;
    Button1: TButton;
    Label2: TLabel;
    Edit12: TEdit;
    Label3: TLabel;
    Edit1: TEdit;
    DataSource2: TDataSource;
    dxToolButton11: TdxToolButton;
    dxToolButton2: TdxToolButton;
    procedure E_searchChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure dxToolButton11Click(Sender: TObject);
    procedure dxToolButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_view_shakhs: Tfrm_view_shakhs;

implementation

uses unt_DataM_forosh, unt_DataMo_shakhs, unt_sh_jadid, unt_print_kharidar,
  unt_print_foroshande;

{$R *.dfm}

procedure Tfrm_view_shakhs.E_searchChange(Sender: TObject);
begin
 DataMo_shakhs.ADOQ_kharidar.Locate('family',E_search.Text,[loPartialKey]);
end;

procedure Tfrm_view_shakhs.Edit1Change(Sender: TObject);
var s:string;
begin
  if Edit1.Text='' then
    s:='0'
  else
    s:=Edit1.Text;
  DataMo_shakhs.ADOQ_kharidar.Locate('cod',s,[loPartialKey]);
end;

procedure Tfrm_view_shakhs.Edit10Change(Sender: TObject);
begin
  DataMo_shakhs.ADOQ__foroshande.Locate('family',Edit10.Text,[loPartialKey]);
end;

procedure Tfrm_view_shakhs.Edit12Change(Sender: TObject);
var s:string;
begin
  if Edit12.Text='' then
    s:='0'
  else
    s:=Edit12.Text;
  DataMo_shakhs.ADOQ__foroshande.Locate('cod',s,[loPartialKey]);
end;

procedure Tfrm_view_shakhs.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0
end;

procedure Tfrm_view_shakhs.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0
end;

procedure Tfrm_view_shakhs.FormShow(Sender: TObject);
begin
    DataMo_shakhs.show_foroshande;
    DataMo_shakhs.show_kharidar;
end;

procedure Tfrm_view_shakhs.Button1Click(Sender: TObject);
begin
    frm_foroshande_jadid.L_edit.Caption:='editkharidar';
    frm_foroshande_jadid.e_name.Text:=DataMo_shakhs.ADOQ_kharidar.Fields[0].AsString;
    frm_foroshande_jadid.E_family.Text:=DataMo_shakhs.ADOQ_kharidar.Fields[1].AsString;
    frm_foroshande_jadid.e_telephon_hamrah.Text:=DataMo_shakhs.ADOQ_kharidar.Fields[2].AsString;
    frm_foroshande_jadid.E_telephon_kar.Text:=DataMo_shakhs.ADOQ_kharidar.Fields[4].AsString;
    frm_foroshande_jadid.E_telephon_manzel.Text:=DataMo_shakhs.ADOQ_kharidar.Fields[5].AsString;
    frm_foroshande_jadid.L_type.Caption:='edit';
    frm_foroshande_jadid.suiForm1.Caption:=pchar('?????? ??????');

    frm_foroshande_jadid.e_name.Enabled:=false;
    frm_foroshande_jadid.E_family.Enabled:=false;

    frm_foroshande_jadid.ShowModal;
end;

procedure Tfrm_view_shakhs.Button10Click(Sender: TObject);
begin
    frm_foroshande_jadid.L_edit.Caption:='editforoshande';
    frm_foroshande_jadid.e_name.Text:=DataMo_shakhs.ADOQ__foroshande.Fields[0].AsString;
    frm_foroshande_jadid.E_family.Text:=DataMo_shakhs.ADOQ__foroshande.Fields[1].AsString;
    frm_foroshande_jadid.e_telephon_hamrah.Text:=DataMo_shakhs.ADOQ__foroshande.Fields[2].AsString;
    frm_foroshande_jadid.E_telephon_kar.Text:=DataMo_shakhs.ADOQ__foroshande.Fields[4].AsString;
    frm_foroshande_jadid.E_telephon_manzel.Text:=DataMo_shakhs.ADOQ__foroshande.Fields[5].AsString;
    frm_foroshande_jadid.L_type.Caption:='edit';
    frm_foroshande_jadid.suiForm1.Caption:=pchar('?????? ???????');

    frm_foroshande_jadid.e_name.Enabled:=false;
    frm_foroshande_jadid.E_family.Enabled:=false;
    frm_foroshande_jadid.ShowModal;
end;


procedure Tfrm_view_shakhs.dxToolButton11Click(Sender: TObject);
begin
    Frm_print_kharidar.QuickRep1.Preview;
end;

procedure Tfrm_view_shakhs.dxToolButton2Click(Sender: TObject);
begin
  frm_print_foroshande.QuickRep1.Preview;
end;

end.
