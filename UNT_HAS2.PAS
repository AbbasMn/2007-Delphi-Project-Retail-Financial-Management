unit unt_hasanpor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButtons, DBCtrls, StdCtrls, Grids, DBGrids, ExtCtrls,
  SUIForm, DB;

type
  TFrm_hasanpor = class(TForm)
    suiForm1: TsuiForm;
    DBGrid1: TDBGrid;
    G_shakhs: TGroupBox;
    dxToolButton1: TdxToolButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Label8: TLabel;
    L_type: TLabel;
    DBText6: TDBText;
    DBText8: TDBText;
    Label10: TLabel;
    DataSource3: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    scsal: TDBLookupComboBox;
    RadioGroup1: TRadioGroup;
    Groupb_tarikh: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    E_roz: TEdit;
    E_mah: TEdit;
    E_sal: TEdit;
    Button1: TButton;
    Button5: TButton;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    E_roz_ebteda: TEdit;
    E_mah_ebteda: TEdit;
    E_sal_ebteda: TEdit;
    E_roz_enteha: TEdit;
    E_mah_enteha: TEdit;
    E_sal_enteha: TEdit;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure show_tarikh;
    procedure scsalClick(Sender: TObject);
    procedure jam_tarikh;
    procedure show_sal;
    procedure jam_sal;
    procedure show_kol;
    procedure jam_kol;
    procedure dxToolButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure E_rozKeyPress(Sender: TObject; var Key: Char);
    procedure E_mahKeyPress(Sender: TObject; var Key: Char);
    procedure E_salKeyPress(Sender: TObject; var Key: Char);
    procedure Button5Click(Sender: TObject);
    procedure show_do_tarikh;
    procedure jam_do_tarikh;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_hasanpor: TFrm_hasanpor;

implementation

uses unt_DataM_group_by, unt__forosh, unt_DataM_forosh, unt_print_hasanpor,
  unt_hasanpor_login, unt_add_kharidha;

{$R *.dfm}
procedure TFrm_hasanpor.jam_do_tarikh;
var tarikh1,tarikh2:string;
begin
   tarikh1:=trim(E_sal_ebteda.Text)+'/'+trim(E_mah_ebteda.Text)+'/'+trim(E_roz_ebteda.Text);
   tarikh2:=trim(E_sal_enteha.Text)+'/'+trim(E_mah_enteha.Text)+'/'+trim(E_roz_enteha.Text);

    DataM_group_by.ADoq_jam_hasanpor.SQL.Text:='select sum(vazn)as vazn_kol,sum(ojrat_kol+ojrat_az_kh_kol)as oj_kol from t_forosh where tarikh between'+  QuotedStr(tarikh1)+' and '+QuotedStr(tarikh2);
    DataM_group_by.ADoq_jam_hasanpor.Open;
end;
procedure TFrm_hasanpor.show_do_tarikh;
var tarikh1,tarikh2:string;
begin
   tarikh1:=trim(E_sal_ebteda.Text)+'/'+trim(E_mah_ebteda.Text)+'/'+trim(E_roz_ebteda.Text);
   tarikh2:=trim(E_sal_enteha.Text)+'/'+trim(E_mah_enteha.Text)+'/'+trim(E_roz_enteha.Text);
   
  DataM_group_by.ADOQ_hasan_por.SQL.Text:='select tarikh,sum(vazn)as vazn_kol,sum(ojrat_kol+ojrat_az_kh_kol)as oj_kol from t_forosh where tarikh between'
  +  QuotedStr(tarikh1)+' and '+QuotedStr(tarikh2)+' group by tarikh order by tarikh';
  L_type.Caption:=' «“  «—ÌŒ  '+tarikh1+'  « '+ tarikh2;
  Frm_print_hasanpor.QRL_type.Caption:=' «“  «—ÌŒ  '+tarikh1+'  « '+ tarikh2;
  DataM_group_by.ADOQ_hasan_por.Open;
end;


procedure TFrm_hasanpor.jam_kol;
begin
    DataM_group_by.ADoq_jam_hasanpor.SQL.Text:='select sum(vazn)as vazn_kol,sum(ojrat_kol+ojrat_az_kh_kol)as oj_kol from t_forosh ';
    DataM_group_by.ADoq_jam_hasanpor.Open;
end;
procedure TFrm_hasanpor.show_kol;
begin
  DataM_group_by.ADOQ_hasan_por.SQL.Text:='select tarikh,sum(vazn)as vazn_kol,sum(ojrat_kol+ojrat_az_kh_kol)as oj_kol from t_forosh group by tarikh order by tarikh';
  L_type.Caption:=' »— «”«” ò· ”«·Â« ';
  Frm_print_hasanpor.QRL_type.Caption:=' »— «”«” ò· ”«·Â« ';
  DataM_group_by.ADOQ_hasan_por.Open;
end;

procedure TFrm_hasanpor.jam_sal;
begin
  DataM_group_by.ADoq_jam_hasanpor.SQL.Text:='select sum(vazn)as vazn_kol,sum(ojrat_kol+ojrat_az_kh_kol)as oj_kol from t_forosh where sal='+QuotedStr(scsal.Text);
  DataM_group_by.ADoq_jam_hasanpor.Open;
end;
procedure TFrm_hasanpor.show_sal;
var s:String;
begin
  s:=scsal.Text;;
  L_type.Caption:='»— «”«” ”«·  '+ s ;
  Frm_print_hasanpor.QRL_type.Caption:='»— «”«” ”«·  '+s;
  DataM_group_by.ADOQ_hasan_por.SQL.Text:='select tarikh,sum(vazn)as vazn_kol,sum(ojrat_kol+ojrat_az_kh_kol)as oj_kol from t_forosh where sal='+QuotedStr(s)+' group by tarikh order by tarikh';
  DataM_group_by.ADOQ_hasan_por.Open;

end;

procedure TFrm_hasanpor.jam_tarikh;
var ta:string;
begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
    DataM_group_by.ADoq_jam_hasanpor.SQL.Text:='select sum(vazn)as vazn_kol,sum(ojrat_kol+ojrat_az_kh_kol)as oj_kol from t_forosh where tarikh='+QuotedStr(ta);
    DataM_group_by.ADoq_jam_hasanpor.Open;
end;
procedure TFrm_hasanpor.show_tarikh;
var ta:string;
begin
  ta:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
  DataM_group_by.ADOQ_hasan_por.SQL.Text:='select tarikh,sum(vazn)as vazn_kol,sum(ojrat_kol+ojrat_az_kh_kol)as oj_kol from t_forosh where tarikh='+QuotedStr(ta)+'group by tarikh order by tarikh';
  L_type.Caption:='»— «”«”  «—ÌŒ   '+ta;
  Frm_print_hasanpor.QRL_type.Caption:='»— «”«”  «—ÌŒ   '+ta;
  DataM_group_by.ADOQ_hasan_por.Open;
end;

procedure TFrm_hasanpor.FormShow(Sender: TObject);
begin
  if Frm_hasanpor_login.Showing then
    Frm_hasanpor_login.Close;
  DataM_forosh.show_sal;
  RadioGroup1.ItemIndex:=0;
  show_kol;
  jam_kol;
end;

procedure TFrm_hasanpor.RadioGroup1Click(Sender: TObject);
begin
  if RadioGroup1.ItemIndex=1 then
   begin
     scsal.Visible:=true;
     Label1.Visible:=true;
     GroupBox2.Visible:=false;
     Groupb_tarikh.Visible:=false;
     jam_sal;
     show_sal;
   end;
  if RadioGroup1.ItemIndex=0 then
   begin
    scsal.Visible:=false;
    Label1.Visible:=false;
    Groupb_tarikh.Visible:=false;
    GroupBox2.Visible:=false;
    jam_kol;
    show_kol;
   end;
    if RadioGroup1.ItemIndex=2 then
   begin
    scsal.Visible:=false;
    Label1.Visible:=false;
    Groupb_tarikh.Visible:=true;
    GroupBox2.Visible:=false;
    jam_tarikh;
    show_tarikh;
   end;
    if RadioGroup1.ItemIndex=3 then
   begin
    scsal.Visible:=false;
    Label1.Visible:=false;
    Groupb_tarikh.Visible:=false;
    GroupBox2.Visible:=true;
    jam_do_tarikh;
    show_do_tarikh;
   end;
end;

procedure TFrm_hasanpor.scsalClick(Sender: TObject);
begin
 jam_sal;
 show_sal;
end;

procedure TFrm_hasanpor.dxToolButton1Click(Sender: TObject);
begin
  Frm_print_hasanpor.QuickRep1.Preview;
end;



procedure TFrm_hasanpor.Button1Click(Sender: TObject);
begin
  if (E_roz.Text='') or (E_sal.Text='')or(E_mah.Text='') then
    MessageBox(Handle,'—Ê“ ° ”«· Ê  „«Â »«Ìœ Ê«—œ ‘Ê‰œ.',' ÊÃÂ !',mb_ok or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
  show_tarikh;
  jam_tarikh;
  end;
end;

procedure TFrm_hasanpor.E_rozKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_hasanpor.E_mahKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_hasanpor.E_salKeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure TFrm_hasanpor.Button5Click(Sender: TObject);
begin
frm_add_kharidha.show_calculator;
end;

procedure TFrm_hasanpor.Button2Click(Sender: TObject);
begin
  jam_do_tarikh;
  show_do_tarikh;

end;

end.
