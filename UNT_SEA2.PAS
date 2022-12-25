unit Unt_search_intarikh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, ExtCtrls, StdCtrls, dxCore, dxButtons, Grids, DBGrids,
  SUIForm, DB, SUIButton;

type
  TFrm_search_intarikh = class(TForm)
    suiForm1: TsuiForm;
    GroupBox_tarikh: TGroupBox;
    RadioGroup11: TRadioGroup;
    E_tarikh: TEdit;
    Button2: TButton;
    Button4: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    RadioGroup12: TRadioGroup;
    G_kharid: TGroupBox;
    G_forosh: TGroupBox;
    DataSource3: TDataSource;
    DataS_kh: TDataSource;
    DataS_fo: TDataSource;
    DBG_kharid: TDBGrid;
    DBG_forosh: TDBGrid;
    DB_joz_foroshandegan: TDBGrid;
    DB_joz_kharidaran: TDBGrid;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    RadioGroup1: TRadioGroup;
    DB_talabkarha: TDBGrid;
    DataSource6: TDataSource;
    G_do_tarikh: TGroupBox;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    E_roz_ebteda: TEdit;
    E_mah_ebteda: TEdit;
    E_sal_ebteda: TEdit;
    E_roz_enteha: TEdit;
    E_mah_enteha: TEdit;
    E_sal_enteha: TEdit;
    btaeedall: TsuiButton;
    G_tarikh: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    E_roz: TEdit;
    E_mah: TEdit;
    E_sal: TEdit;
    Button1: TButton;
    G_sal: TGroupBox;
    Label1: TLabel;
    scsal: TDBLookupComboBox;
    DataSource7: TDataSource;
    Radg_talab_type: TRadioGroup;
    G_kol_mande: TGroupBox;
    Label5: TLabel;
    DBText1: TDBText;
    DataSource8: TDataSource;
    dxToolButton1: TdxToolButton;
    procedure FormShow(Sender: TObject);
    procedure RadioGroup11Click(Sender: TObject);
    procedure RadioGroup12Click(Sender: TObject);
    procedure show_kharidaran;
    procedure show_foroshandegan;
    procedure type_;
    procedure E_tarikhChange(Sender: TObject);
    procedure joziat_kharidaran;
    procedure joziat_foroshandegan;
    procedure type_2;
    procedure RadioGroup1Click(Sender: TObject);
    procedure show_talabkaran_tarikh;
    procedure show_talabkaran_do_tarikh;
    procedure show_talabkaran_sal;
    procedure type_talab;
    procedure scsalClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btaeedallClick(Sender: TObject);
    procedure Radg_talab_typeClick(Sender: TObject);
    procedure dxToolButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_search_intarikh: TFrm_search_intarikh;

implementation

uses unt_DataMo_shakhs, Taghvim, unt_main, unt_DataM_intarikh,
  unt_DataM_forosh, unt_DataM_final, unt_print_talabkaran;

{$R *.dfm}
procedure TFrm_search_intarikh.type_talab;
begin
   if Radg_talab_type.ItemIndex=0 then
   begin
    G_sal.Visible:=false;
    G_tarikh.Visible:=true;
    G_do_tarikh.Visible:=false;
    show_talabkaran_tarikh;
   end;
   if Radg_talab_type.ItemIndex=1 then
   begin
    G_sal.Visible:=true;
    G_tarikh.Visible:=false;
    G_do_tarikh.Visible:=false;
    show_talabkaran_sal;
   end;
   if Radg_talab_type.ItemIndex=2 then
   begin
    G_sal.Visible:=false;
    G_tarikh.Visible:=false;
    G_do_tarikh.Visible:=true;
    show_talabkaran_do_tarikh;
   end;
end;
procedure TFrm_search_intarikh.show_talabkaran_do_tarikh;
var tarikh1,tarikh2:string;
begin
   tarikh1:=trim(E_sal_ebteda.Text)+'/'+trim(E_mah_ebteda.Text)+'/'+trim(E_roz_ebteda.Text);
   tarikh2:=trim(E_sal_enteha.Text)+'/'+trim(E_mah_enteha.Text)+'/'+trim(E_roz_enteha.Text);

  DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where mande >0  and tarikh between'+  QuotedStr(tarikh1)+' and '+QuotedStr(tarikh2)+' order by family_kh,name_kh,tarikh,sh_kh';
  DataM_forosh.ADOQ_forosh.Open;

  DataM_final.ADOQ_sum_mande.SQL.Text:='select sum(mande) as mande_kol from t_forosh where mande >0  and tarikh between'+  QuotedStr(tarikh1)+' and '+QuotedStr(tarikh2);
  DataM_final.ADOQ_sum_mande.Open;

  frm_print_talabkaran.QRL_type.Caption:=' ÇÒ ÊÇÑíÎ ' + tarikh1+' ÊÇ '+tarikh2;

end;

procedure TFrm_search_intarikh.show_talabkaran_sal;
begin
    DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where mande >0  and sal='+QuotedStr(scsal.Text)+' order by family_kh,name_kh,tarikh,sh_kh';
    DataM_forosh.ADOQ_forosh.Open;

  DataM_final.ADOQ_sum_mande.SQL.Text:='select sum(mande) as mande_kol from t_forosh where mande >0  and sal='+QuotedStr(scsal.Text);
  DataM_final.ADOQ_sum_mande.Open;

    frm_print_talabkaran.QRL_type.Caption:=' ÏÑ ÓÇá '+scsal.Text;

end;

procedure TFrm_search_intarikh.show_talabkaran_tarikh;
var tarikh:string;
begin
  tarikh:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
  DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where mande >0  and tarikh='+QuotedStr(tarikh)+' order by family_kh,name_kh,tarikh,sh_kh';
  DataM_forosh.ADOQ_forosh.Open;

    DataM_final.ADOQ_sum_mande.SQL.Text:='select sum(mande) as mande_kol from t_forosh where mande >0  and tarikh='+QuotedStr(tarikh);
  DataM_final.ADOQ_sum_mande.Open;

  frm_print_talabkaran.QRL_type.Caption:=' ÏÑ ÊÇÑíÎ '+tarikh;

end;



procedure TFrm_search_intarikh.type_2;
begin
  if RadioGroup1.ItemIndex=0 then
  begin
    RadioGroup12.Visible:=true;
    G_kharid.Visible:=true;
    G_forosh.Visible:=true;
    GroupBox_tarikh.Visible:=true;
    DB_joz_foroshandegan.Visible:=true;
    DB_joz_kharidaran.Visible:=true;

    G_do_tarikh.Visible:=false;
    G_sal.Visible:=false;
    G_kol_mande.Visible:=false;
    G_tarikh.Visible:=false;
    Radg_talab_type.Visible:=false;
    DB_talabkarha.Visible:=false;
    Radg_talab_type.ItemIndex:=0;
    
    RadioGroup12.ItemIndex:=0;
    if RadioGroup12.ItemIndex=0 then
    begin
        G_kharid.Visible:=true;
        G_forosh.Visible:=false;
        DB_joz_kharidaran.Visible:=true;
        DB_joz_foroshandegan.Visible:=false;
    end
    else
    begin
        G_kharid.Visible:=false;
        G_forosh.Visible:=true;
        DB_joz_kharidaran.Visible:=false;
        DB_joz_foroshandegan.Visible:=true;
    end;
    type_;

  end
  else
  begin
    RadioGroup12.Visible:=false;
    G_kharid.Visible:=false;
    G_forosh.Visible:=false;
    GroupBox_tarikh.Visible:=false;
    DB_joz_foroshandegan.Visible:=false;
    DB_joz_kharidaran.Visible:=false;

    G_do_tarikh.Visible:=true;
    G_sal.Visible:=true;
    G_kol_mande.Visible:=true;
    G_tarikh.Visible:=true;
    Radg_talab_type.Visible:=true;
    DB_talabkarha.Visible:=true;
    Radg_talab_type.ItemIndex:=0;    
    type_talab;
  end;
end;

procedure TFrm_search_intarikh.joziat_foroshandegan;
begin
if DataM_intarikh.ADOQ_foroshandeha.RecordCount>0 then
begin
   DataM_intarikh.ADOQ_joz_forosh.SQL.Text:='select name_kh,family_kh,tarikh,sh_kh from t_forosh where family='+
   QuotedStr(DataM_intarikh.ADOQ_foroshandehafamily.AsString)+' and name='+
   QuotedStr(DataM_intarikh.ADOQ_foroshandehaname.AsString)+' and tarikh='+
   QuotedStr(DataM_intarikh.ADOQ_foroshandehatarikh.AsString)+' order by family,name';
end
else
   DataM_intarikh.ADOQ_joz_forosh.SQL.Text:='select name_kh,family_kh,tarikh,sh_kh from t_forosh where sh_kh<0';
   DataM_intarikh.ADOQ_joz_forosh.Open;

end;
procedure TFrm_search_intarikh.joziat_kharidaran;
begin
if DataM_intarikh.ADOQ_kharidaran.RecordCount>0 then
begin
   DataM_intarikh.ADOQ_joz_kharid.SQL.Text:='select name,family,tarikh,sh_kh from t_forosh where family_kh='+
   QuotedStr(DataM_intarikh.ADOQ_kharidaranfamily_kh.AsString)+' and name_kh='+
   QuotedStr(DataM_intarikh.ADOQ_kharidaranname_kh.AsString)+' and tarikh='+
   QuotedStr(DataM_intarikh.ADOQ_kharidarantarikh.AsString)+' order by family,name';
end
else
   DataM_intarikh.ADOQ_joz_kharid.SQL.Text:='select name,family,tarikh,sh_kh from t_forosh where sh_kh<0';
   DataM_intarikh.ADOQ_joz_kharid.Open;

end;

procedure TFrm_search_intarikh.type_;
begin
    show_foroshandegan;
    show_kharidaran;
    joziat_kharidaran;
    joziat_foroshandegan;
end;
procedure TFrm_search_intarikh.show_kharidaran;
begin
   DataM_intarikh.ADOQ_kharidaran.SQL.Text:='select distinct name_kh,family_kh,tarikh from t_forosh where tarikh='+QuotedStr(E_tarikh.Text)+' order by family_kh,name_kh';
   DataM_intarikh.ADOQ_kharidaran.Open;
end;

procedure TFrm_search_intarikh.show_foroshandegan;
begin
   DataM_intarikh.ADOQ_foroshandeha.SQL.Text:='select distinct name,family,tarikh from t_forosh where tarikh='+QuotedStr(E_tarikh.Text)+' order by family,name';
   DataM_intarikh.ADOQ_foroshandeha.Open;
end;


procedure TFrm_search_intarikh.FormShow(Sender: TObject);
begin
  DataM_forosh.show_sal;
  E_tarikh.Text:=frm_main.E_tarikh.Text;
  RadioGroup1.ItemIndex:=0;
  Radg_talab_type.ItemIndex:=0;

  type_;
  type_2;
  type_talab;
 if RadioGroup12.ItemIndex=0 then
 begin
  G_kharid.Visible:=true;
  G_forosh.Visible:=false;
  DB_joz_kharidaran.Visible:=true;
  DB_joz_foroshandegan.Visible:=false;

 end
 else
 begin
   G_kharid.Visible:=false;
   G_forosh.Visible:=true;
   DB_joz_kharidaran.Visible:=false;
   DB_joz_foroshandegan.Visible:=true;
 end;
   G_sal.Visible:=false;
   G_kol_mande.Visible:=false;
  G_do_tarikh.Visible:=false;
  G_tarikh.Visible:=false;
end;

procedure TFrm_search_intarikh.RadioGroup11Click(Sender: TObject);
begin
   if RadioGroup11.ItemIndex=1 then
  Begin
    _taghvim.ShowModal;
    E_tarikh.Text:=_taghvim._str_date;
    if E_tarikh.Text='' then
    begin
      E_tarikh.Text:=frm_main.E_tarikh.Text;
      type_;
    end;
  end
  else
  begin
    E_tarikh.Text:=frm_main.E_tarikh.Text;
    type_;
  end;
end;

procedure TFrm_search_intarikh.RadioGroup12Click(Sender: TObject);
begin
 if RadioGroup12.ItemIndex=0 then
 begin
  G_kharid.Visible:=true;
  G_forosh.Visible:=false;
  DB_joz_kharidaran.Visible:=true;
  DB_joz_foroshandegan.Visible:=false;
 end
 else
 begin
   G_kharid.Visible:=false;
   G_forosh.Visible:=true;
   DB_joz_kharidaran.Visible:=false;
   DB_joz_foroshandegan.Visible:=true;
 end;
 type_;
end;



procedure TFrm_search_intarikh.E_tarikhChange(Sender: TObject);
begin
 type_;
end;

procedure TFrm_search_intarikh.RadioGroup1Click(Sender: TObject);
begin
  type_2;
end;

procedure TFrm_search_intarikh.scsalClick(Sender: TObject);
begin
  show_talabkaran_sal;
end;

procedure TFrm_search_intarikh.Button1Click(Sender: TObject);
begin
  show_talabkaran_tarikh;
end;

procedure TFrm_search_intarikh.btaeedallClick(Sender: TObject);
begin
  show_talabkaran_do_tarikh;
end;

procedure TFrm_search_intarikh.Radg_talab_typeClick(Sender: TObject);
begin
  type_talab;
end;

procedure TFrm_search_intarikh.dxToolButton1Click(Sender: TObject);
begin
  frm_print_talabkaran.qrl_sodor_factor.Caption:=' ÊÇÑíÎ ÕÏæÑ ÒÇÑÔ '+frm_main.E_tarikh.Text;
  frm_print_talabkaran.QuickRep1.Preview;
end;

end.
