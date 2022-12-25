unit unt_eslah_asli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, dxCore, dxButtons, Grids, DBGrids, DBCtrls,
  SUIForm, DB;

type
  Tfrm_eslah_asli = class(TForm)
    DataSource2: TDataSource;
    DataSource5: TDataSource;
    DataSource3: TDataSource;
    DataSource1: TDataSource;
    suiForm1: TsuiForm;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Ed: TEdit;
    DBGrid3: TDBGrid;
    dxToolButton2: TdxToolButton;
    Edit2: TEdit;
    GroupBox_tarikh: TGroupBox;
    RadioGroup11: TRadioGroup;
    E_tarikh: TEdit;
    G_hame: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label8: TLabel;
    DBText6: TDBText;
    DBText5: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText13: TDBText;
    DBText14: TDBText;
    Label17: TLabel;
    DBText17: TDBText;
    DBText16: TDBText;
    DBText8: TDBText;
    Label16: TLabel;
    Label18: TLabel;
    L_cod: TLabel;
    DBT_cod: TDBText;
    Button2: TButton;
    Button6: TButton;
    Button7: TButton;
    DBText4: TDBText;
    GroupBox5: TGroupBox;
    Label37: TLabel;
    DBText22: TDBText;
    Label38: TLabel;
    DBText23: TDBText;
    GroupBox4: TGroupBox;
    DBText18: TDBText;
    Label31: TLabel;
    Label34: TLabel;
    DBText19: TDBText;
    Label35: TLabel;
    DBText20: TDBText;
    Label9: TLabel;
    DBText7: TDBText;
    G_gheire: TGroupBox;
    Label22: TLabel;
    Label21: TLabel;
    Label20: TLabel;
    Label19: TLabel;
    Label25: TLabel;
    L_g_kol: TLabel;
    Label26: TLabel;
    L_ojrat_kol: TLabel;
    Label27: TLabel;
    L_keraye_kol: TLabel;
    Label28: TLabel;
    L_remain: TLabel;
    Label24: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label12: TLabel;
    Label_kerayekol_daron: TLabel;
    E_fi: TEdit;
    E_ojrat: TEdit;
    E_t_goni: TEdit;
    E_vazn: TEdit;
    Button1: TButton;
    E_roz: TEdit;
    E_mah: TEdit;
    E_sal: TEdit;
    L_taeed_hazf_biron: TLabel;
    L_taeed_hazf_daron: TLabel;
    DBT_sh_kh: TDBText;
    L_sh_kh: TLabel;
    Label15: TLabel;
    DBText12: TDBText;
    GroupBox6: TGroupBox;
    Button10: TButton;
    G_keraye: TGroupBox;
    Button8: TButton;
    Button9: TButton;
    RadioGroup1: TRadioGroup;
    L_check_biron: TLabel;
    L_check_daron: TLabel;
    Button4: TButton;
    Button3: TButton;
    RadioGroup2: TRadioGroup;
    ComboBox1: TComboBox;
    Label23: TLabel;
    Label32: TLabel;
    e_ojrat_AZ_KHARIDAR: TEdit;
    Button5: TButton;
    CheckBox1: TCheckBox;
    GroupBox3: TGroupBox;
    Label33: TLabel;
    Label36: TLabel;
    G_shakhs: TGroupBox;
    Edit5: TEdit;
    Label41: TLabel;
    Label39: TLabel;
    E_search: TEdit;
    Button11: TButton;
    Label40: TLabel;
    DataSource4: TDataSource;
    DBG: TDBGrid;
    DBGrid: TDBGrid;
    procedure EdChange(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup11Click(Sender: TObject);
    procedure E_tarikhChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure show_kharidha;
    procedure jozeiat_kharidha;
    procedure update_forosh_jozi;
    procedure update_forosh_keraye;
    function check:boolean;
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure delete;
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure E_vaznKeyPress(Sender: TObject; var Key: Char);
    procedure E_ojratKeyPress(Sender: TObject; var Key: Char);
    procedure E_t_goniKeyPress(Sender: TObject; var Key: Char);
    procedure E_fiKeyPress(Sender: TObject; var Key: Char);
    procedure E_rozKeyPress(Sender: TObject; var Key: Char);
    procedure E_mahKeyPress(Sender: TObject; var Key: Char);
    procedure E_salKeyPress(Sender: TObject; var Key: Char);
    procedure e_ojrat_AZ_KHARIDARKeyPress(Sender: TObject; var Key: Char);
    procedure CheckBox1Click(Sender: TObject);
    procedure E_searchChange(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure update_foroshande;
    procedure Button11Click(Sender: TObject);
    procedure keraye_AZ_KHARIDARKeyPress(Sender: TObject; var Key: Char);
    procedure delete_time;
    procedure delete_pardakhtha_after_eslah_daronshahri;
    procedure delete_pardakhtha_after_eslah_fi_vazn_kher_az_kh_change;

    procedure delete_from_kol_after_tarikh_change;
    procedure update_tarikh_index_sh_after_tarikh_change;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah_asli: Tfrm_eslah_asli;

implementation

uses unt_DataMo_shakhs, Taghvim, unt_main, unt_DataM_forosh, unt__eslah_f,
  unt_add_kharidha, unt_eslah_forosh, unt_eslah_haml_bein,
  unt_eslah_haml_daron, UNT_PRINT_BARAYE_KHARIDAR, unt_sel_kharid,
  unt_DataM_final;

{$R *.dfm}
procedure Tfrm_eslah_asli.update_tarikh_index_sh_after_tarikh_change;
var tarikh:string;
begin
    tarikh:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);

   DataM_final.ADOQ_index_sh_kh.SQL.Text:='update T_index_sh_kharid  set tarikh ='+QuotedStr(tarikh)+
   ' where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString)+
    ' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_sh_kh.ExecSQL;

   DataM_final.ADOQ_T_bedeh_talab_sh_kharid.SQL.Text:='update T_bedeh_talab_sh_kharid set tarikh ='+QuotedStr(tarikh)+' where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString)+
   ' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_T_bedeh_talab_sh_kharid.ExecSQL;
end;
procedure Tfrm_eslah_asli.delete_from_kol_after_tarikh_change;
var id_sh_for_delete,id_kol_for_delete,tarikh:string;
begin
    tarikh:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);

   DataM_final.ADOQ_index_kol_kh.SQL.Text:='select * from T_index_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_kol_kh.Open;

   id_kol_for_delete:=DataM_final.ADOQ_index_kol_khid.AsString;


    DataM_final.ADOQ_t_checkha_kol_kharid.SQL.Text:='delete from t_checkha_kol_kharid where id='+
    QuotedStr(id_kol_for_delete);

    DataM_final.ADOQ_t_checkha_kol_kharid.ExecSQL;

    DataM_final.ADOQ_t_naghde_kol_kharid.SQL.Text:='delete from t_naghde_kol_kharid where id='+
    QuotedStr(id_kol_for_delete);

    DataM_final.ADOQ_t_naghde_kol_kharid.ExecSQL;

   DataM_final.ADOQ_T_bedeh_talab_kol_kharid.SQL.Text:='delete from T_bedeh_talab_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and tarikh='+QuotedStr(E_tarikh.Text);
   DataM_final.ADOQ_T_bedeh_talab_kol_kharid.ExecSQL;

   
   DataM_final.ADOQ_index_kol_kh.SQL.Text:='delete from t_index_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_kol_kh.ExecSQL;

   /////////////////////////////////////////////////////////
      DataM_final.ADOQ_index_kol_kh.SQL.Text:='select * from T_index_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and tarikh='+QuotedStr(tarikh);

   DataM_final.ADOQ_index_kol_kh.Open;

   id_kol_for_delete:=DataM_final.ADOQ_index_kol_khid.AsString;


    DataM_final.ADOQ_t_checkha_kol_kharid.SQL.Text:='delete from t_checkha_kol_kharid where id='+
    QuotedStr(id_kol_for_delete);

    DataM_final.ADOQ_t_checkha_kol_kharid.ExecSQL;

    DataM_final.ADOQ_t_naghde_kol_kharid.SQL.Text:='delete from t_naghde_kol_kharid where id='+
    QuotedStr(id_kol_for_delete);

    DataM_final.ADOQ_t_naghde_kol_kharid.ExecSQL;

   DataM_final.ADOQ_T_bedeh_talab_kol_kharid.SQL.Text:='delete from T_bedeh_talab_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and tarikh='+QuotedStr(tarikh);
   DataM_final.ADOQ_T_bedeh_talab_kol_kharid.ExecSQL;

   
   DataM_final.ADOQ_index_kol_kh.SQL.Text:='delete from t_index_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and tarikh='+QuotedStr(tarikh);

   DataM_final.ADOQ_index_kol_kh.ExecSQL;

end;
procedure Tfrm_eslah_asli.delete_pardakhtha_after_eslah_daronshahri;
var id_sh_for_delete,id_kol_for_delete:string;
begin

   DataM_final.ADOQ_index_sh_kh.SQL.Text:='select * from T_index_sh_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString)+
    ' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_sh_kh.Open;

   id_sh_for_delete:=DataM_final.ADOQ_index_sh_khid.AsString;

   DataM_final.ADOQ_index_kol_kh.SQL.Text:='select * from T_index_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_kol_kh.Open;

   id_kol_for_delete:=DataM_final.ADOQ_index_kol_khid.AsString;

   ///////////////////////////////////////////////////////////////////////////////////////

    DataM_final.ADOQ_t_checkha_sh_kharid.SQL.Text:='delete from t_checkha_sh_kharid where id='+
    QuotedStr(id_sh_for_delete);

    DataM_final.ADOQ_t_checkha_sh_kharid.ExecSQL;

    DataM_final.ADOQ_t_checkha_kol_kharid.SQL.Text:='delete from t_checkha_kol_kharid where id='+
    QuotedStr(id_kol_for_delete);

    DataM_final.ADOQ_t_checkha_kol_kharid.ExecSQL;



    DataM_final.ADOQ_t_naghde_sh_kharid.SQL.Text:='delete from t_naghde_sh_kharid where id='+
    QuotedStr(id_sh_for_delete);

    DataM_final.ADOQ_t_naghde_sh_kharid.ExecSQL;

    DataM_final.ADOQ_t_naghde_kol_kharid.SQL.Text:='delete from t_naghde_kol_kharid where id='+
    QuotedStr(id_kol_for_delete);

    DataM_final.ADOQ_t_naghde_kol_kharid.ExecSQL;


   ///////////////////////////////////////////////////////////////////////////////////////

   DataM_final.ADOQ_T_bedeh_talab_sh_kharid.SQL.Text:='delete from T_bedeh_talab_sh_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString);

   DataM_final.ADOQ_T_bedeh_talab_sh_kharid.ExecSQL;


   DataM_final.ADOQ_T_bedeh_talab_kol_kharid.SQL.Text:='delete from T_bedeh_talab_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and tarikh='+QuotedStr(E_tarikh.Text);
   DataM_final.ADOQ_T_bedeh_talab_kol_kharid.ExecSQL;

   DataM_final.ADOQ_index_sh_kh.SQL.Text:='delete from T_index_sh_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString)+
    ' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_sh_kh.ExecSQL;


   DataM_final.ADOQ_index_kol_kh.SQL.Text:='delete from t_index_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_kol_kh.ExecSQL;

end;
procedure Tfrm_eslah_asli.delete_pardakhtha_after_eslah_fi_vazn_kher_az_kh_change;
var id_sh_for_delete,id_kol_for_delete:string;
begin
  DataM_final.ADOQ_index_sh_kh.SQL.Text:='select * from T_index_sh_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString)+
    ' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_sh_kh.Open;

   id_sh_for_delete:=DataM_final.ADOQ_index_sh_khid.AsString;

   DataM_final.ADOQ_index_kol_kh.SQL.Text:='select * from T_index_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_kol_kh.Open;

   id_kol_for_delete:=DataM_final.ADOQ_index_kol_khid.AsString;

   ///////////////////////////////////////////////////////////////////////////////////////

    DataM_final.ADOQ_t_checkha_sh_kharid.SQL.Text:='delete from t_checkha_sh_kharid where id='+
    QuotedStr(id_sh_for_delete);

    DataM_final.ADOQ_t_checkha_sh_kharid.ExecSQL;

    DataM_final.ADOQ_t_checkha_kol_kharid.SQL.Text:='delete from t_checkha_kol_kharid where id='+
    QuotedStr(id_kol_for_delete);

    DataM_final.ADOQ_t_checkha_kol_kharid.ExecSQL;



    DataM_final.ADOQ_t_naghde_sh_kharid.SQL.Text:='delete from t_naghde_sh_kharid where id='+
    QuotedStr(id_sh_for_delete);

    DataM_final.ADOQ_t_naghde_sh_kharid.ExecSQL;

    DataM_final.ADOQ_t_naghde_kol_kharid.SQL.Text:='delete from t_naghde_kol_kharid where id='+
    QuotedStr(id_kol_for_delete);

    DataM_final.ADOQ_t_naghde_kol_kharid.ExecSQL;


   ///////////////////////////////////////////////////////////////////////////////////////

   DataM_final.ADOQ_T_bedeh_talab_sh_kharid.SQL.Text:='delete from T_bedeh_talab_sh_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString);

   DataM_final.ADOQ_T_bedeh_talab_sh_kharid.ExecSQL;


   DataM_final.ADOQ_T_bedeh_talab_kol_kharid.SQL.Text:='delete from T_bedeh_talab_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and tarikh='+QuotedStr(E_tarikh.Text);
   DataM_final.ADOQ_T_bedeh_talab_kol_kharid.ExecSQL;

   DataM_final.ADOQ_index_sh_kh.SQL.Text:='delete from T_index_sh_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString)+
    ' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_sh_kh.ExecSQL;


   DataM_final.ADOQ_index_kol_kh.SQL.Text:='delete from t_index_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_kol_kh.ExecSQL;
end;



procedure Tfrm_eslah_asli.delete_time;
begin
  DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+
  ' and name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);
  DataM_forosh.ADOQ_forosh.Open;

  if  DataM_forosh.ADOQ_forosh.RecordCount=1 then
  begin
    DataM_final.ADOQ_timr_of_forosh.SQL.Text:='delete from t_time_of_forosh where cod_sh='+
    QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and sh_kh='+
    QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString);
    DataM_final.ADOQ_timr_of_forosh.ExecSQL;
  end;
end;
procedure Tfrm_eslah_asli.update_foroshande;
begin
  dataM_forosh.ADOQ_forosh.SQL.Text:='update t_forosh set family='+QuotedStr(DataMo_shakhs.ADOQ_foroshande_eslahfamily.AsString)+
  ',name='+QuotedStr(DataMo_shakhs.ADOQ_foroshande_eslahname.AsString)+
  ' where cod='+L_cod.Caption;
  dataM_forosh.ADOQ_forosh.ExecSQL;
  frm_eslah_forosh.jozeiat_kharidha;
  MessageBox(Handle,'„‘Œ’«  ›—Ê‘‰œÂ ° œ—Œ—Ìœ Ê ›—Ê‘ «‰ Œ«»Ì «’·«Õ ê—œÌœ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;



procedure Tfrm_eslah_asli.update_forosh_keraye;
var g_kol,ojrat_kol,keraye_kol,remain,bedehi,keraye,vazn:real;
    ojrat_az_kh_kol,keraye_az_kh_kol,ojrat_az_kh,keraye_az_kh,mount_kh,ojrat_hasanpor,ran_daron,ran_biron:string;
    i,j:integer;
begin

     /////////////////////////////////////////// %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% ////////////////////////////

     if (frm_eslah_haml_daron.CheckBox1.checked)or(frm_eslah_haml_bein.CheckBox1.checked) then
     begin
       dataM_forosh.ADOQ_find_eslahshavandeha.SQL.Text:='select vazn,cod,geymat_kol,ojrat_az_kh,ojrat_kol'+
       ',keraye_az_kh,keraye_az_kh_kol,ranande_daron'+
       ',keraye,keraye_kol,ranande  from t_forosh where sh_kh='+L_sh_kh.Caption+' and family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarfamily.AsString)+
     ' and name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarname.AsString);

       dataM_forosh.ADOQ_find_eslahshavandeha.Open;
       j:=dataM_forosh.ADOQ_find_eslahshavandeha.RecordCount;

       if j>0 then
       begin
          dataM_forosh.ADOQ_find_eslahshavandeha.First;
          i:=1;

          
       while i<=j do
       begin
       
        vazn:=dataM_forosh.ADOQ_find_eslahshavandehavazn.AsFloat;
        g_kol:=dataM_forosh.ADOQ_find_eslahshavandehageymat_kol.AsFloat;
        
        ojrat_az_kh:=dataM_forosh.ADOQ_find_eslahshavandehaojrat_az_kh.AsString;
        ojrat_kol:=dataM_forosh.ADOQ_find_eslahshavandehaojrat_kol.AsFloat;


        if (L_check_biron.Caption='edit') then
        begin
            ran_biron:=frm_eslah_haml_bein.scranande_boron.Text;
            keraye_kol:=vazn*StrToFloat(frm_eslah_haml_bein.E_keraye.Text);
            keraye:=StrToFloat(frm_eslah_haml_bein.E_keraye.Text);

            keraye_az_kh:=dataM_forosh.ADOQ_find_eslahshavandehakeraye_az_kh.AsString;
            keraye_az_kh_kol:=dataM_forosh.ADOQ_find_eslahshavandehakeraye_az_kh_kol.AsString;
            ran_daron:=dataM_forosh.ADOQ_find_eslahshavandeharanande_daron.AsString;
        end;
        
        if (L_check_biron.Caption='hazf')and(L_taeed_hazf_biron.Caption='yes') then
        begin
            keraye:=0;
            keraye_kol:=0;
            ran_biron:='';

            keraye_az_kh:=dataM_forosh.ADOQ_find_eslahshavandehakeraye_az_kh.AsString;
            keraye_az_kh_kol:=dataM_forosh.ADOQ_find_eslahshavandehakeraye_az_kh_kol.AsString;
            ran_daron:=dataM_forosh.ADOQ_find_eslahshavandeharanande_daron.AsString;
        end;



        if (L_check_daron.Caption='edit') then
        begin
            ran_daron:=frm_eslah_haml_daron.scranande_boron.Text;
            keraye_az_kh_kol:=FloatToStr(vazn*StrToFloat(frm_eslah_haml_daron.E_keraye.Text));
            keraye_az_kh:=frm_eslah_haml_daron.E_keraye.Text;

            keraye:=dataM_forosh.ADOQ_find_eslahshavandehakeraye.AsFloat;
            keraye_kol:=dataM_forosh.ADOQ_find_eslahshavandehakeraye_kol.AsFloat;
            ran_biron:=dataM_forosh.ADOQ_find_eslahshavandeharanande.AsString;
        end;
        
        if (L_check_daron.Caption='hazf')and(L_taeed_hazf_daron.Caption='yes') then
        begin
            keraye_az_kh:='0';
            keraye_az_kh_kol:='0';
            ran_daron:='';

            keraye:=dataM_forosh.ADOQ_find_eslahshavandehakeraye.AsFloat;
            keraye_kol:=dataM_forosh.ADOQ_find_eslahshavandehakeraye_kol.AsFloat;
            ran_biron:=dataM_forosh.ADOQ_find_eslahshavandeharanande.AsString;
        end;


        remain:=g_kol-(ojrat_kol+keraye_kol);
        bedehi:=remain;


        ojrat_az_kh_kol:=FloatToStr((vazn)*StrToFloat(ojrat_az_kh));

        ojrat_hasanpor:=FloatToStr(StrToFloat(ojrat_az_kh_kol)+StrToFloat(keraye_az_kh_kol)+ojrat_kol+keraye_kol);

        mount_kh:=FloatToStr(g_kol+StrToFloat(keraye_az_kh_kol)+StrToFloat(ojrat_az_kh_kol));

              dataM_forosh.ADOQ_forosh.SQL.Text:='update t_forosh set keraye='+FloatToStr(keraye)+
              //',geymat_kol='+FloatToStr(g_kol)+
              // ',ojrat_kol='+FloatToStr(ojrat_kol)+
              ',keraye_kol='+FloatToStr(keraye_kol)+
              ',remain='+FloatToStr(remain)+',bedehi='+FloatToStr(bedehi)+',mande='+FloatToStr(bedehi)+
              ',ojrat_az_kh_kol='+ojrat_az_kh_kol+
              ',keraye_az_kh_kol='+keraye_az_kh_kol+',keraye_az_kh='+keraye_az_kh+
              ',mount_kh='+mount_kh+',ojrat_hasanpor='+ojrat_hasanpor+
              ',ranande_daron='+QuotedStr(ran_daron)+
              ',ranande='+QuotedStr(ran_biron);
              DataM_forosh.ADOQ_forosh.SQL.Text:=DataM_forosh.ADOQ_forosh.SQL.Text+' where cod='+dataM_forosh.ADOQ_find_eslahshavandehacod.AsString;
              DataM_forosh.ADOQ_forosh.ExecSQL;
              dataM_forosh.ADOQ_find_eslahshavandeha.Next;
              i:=i+1;
      end;
      end;
     end
     else
     begin
        vazn:=dataM_forosh.ADOQ_foroshvazn.AsFloat;
        g_kol:=dataM_forosh.ADOQ_foroshgeymat_kol.AsFloat;
        
        ojrat_az_kh:=dataM_forosh.ADOQ_foroshojrat_az_kh.AsString;
        ojrat_kol:=dataM_forosh.ADOQ_foroshojrat_kol.AsFloat;


        if (L_check_biron.Caption='edit') then
        begin
            ran_biron:=frm_eslah_haml_bein.scranande_boron.Text;
            keraye_kol:=vazn*StrToFloat(frm_eslah_haml_bein.E_keraye.Text);
            keraye:=StrToFloat(frm_eslah_haml_bein.E_keraye.Text);

            keraye_az_kh:=dataM_forosh.ADOQ_foroshkeraye_az_kh.AsString;
            keraye_az_kh_kol:=dataM_forosh.ADOQ_foroshkeraye_az_kh_kol.AsString;
            ran_daron:=dataM_forosh.ADOQ_foroshranande_daron.AsString;
        end;
        
        if (L_check_biron.Caption='hazf')and(L_taeed_hazf_biron.Caption='yes') then
        begin
            keraye:=0;
            keraye_kol:=0;
            ran_biron:='';

            keraye_az_kh:=dataM_forosh.ADOQ_foroshkeraye_az_kh.AsString;
            keraye_az_kh_kol:=dataM_forosh.ADOQ_foroshkeraye_az_kh_kol.AsString;
            ran_daron:=dataM_forosh.ADOQ_foroshranande_daron.AsString;
        end;



        if (L_check_daron.Caption='edit') then
        begin
            ran_daron:=frm_eslah_haml_daron.scranande_boron.Text;
            keraye_az_kh_kol:=FloatToStr(vazn*StrToFloat(frm_eslah_haml_daron.E_keraye.Text));
            keraye_az_kh:=frm_eslah_haml_daron.E_keraye.Text;

            keraye:=dataM_forosh.ADOQ_foroshkeraye.AsFloat;
            keraye_kol:=dataM_forosh.ADOQ_foroshkeraye_kol.AsFloat;
            ran_biron:=dataM_forosh.ADOQ_foroshranande.AsString;
        end;
        
        if (L_check_daron.Caption='hazf')and(L_taeed_hazf_daron.Caption='yes') then
        begin
            keraye_az_kh:='0';
            keraye_az_kh_kol:='0';
            ran_daron:='';

            keraye:=dataM_forosh.ADOQ_foroshkeraye.AsFloat;
            keraye_kol:=dataM_forosh.ADOQ_foroshkeraye_kol.AsFloat;
            ran_biron:=dataM_forosh.ADOQ_foroshranande.AsString;
        end;


        remain:=g_kol-(ojrat_kol+keraye_kol);
        bedehi:=remain;


        ojrat_az_kh_kol:=FloatToStr((vazn)*StrToFloat(ojrat_az_kh));

        ojrat_hasanpor:=FloatToStr(StrToFloat(ojrat_az_kh_kol)+StrToFloat(keraye_az_kh_kol)+ojrat_kol+keraye_kol);

        mount_kh:=FloatToStr(g_kol+StrToFloat(keraye_az_kh_kol)+StrToFloat(ojrat_az_kh_kol));

              dataM_forosh.ADOQ_forosh.SQL.Text:='update t_forosh set keraye='+FloatToStr(keraye)+
              //',geymat_kol='+FloatToStr(g_kol)+
              // ',ojrat_kol='+FloatToStr(ojrat_kol)+
              ',keraye_kol='+FloatToStr(keraye_kol)+
              ',remain='+FloatToStr(remain)+',bedehi='+FloatToStr(bedehi)+',mande='+FloatToStr(bedehi)+
              ',ojrat_az_kh_kol='+ojrat_az_kh_kol+
              ',keraye_az_kh_kol='+keraye_az_kh_kol+',keraye_az_kh='+keraye_az_kh+
              ',mount_kh='+mount_kh+',ojrat_hasanpor='+ojrat_hasanpor+
              ',ranande_daron='+QuotedStr(ran_daron)+
              ',ranande='+QuotedStr(ran_biron);
              DataM_forosh.ADOQ_forosh.SQL.Text:=DataM_forosh.ADOQ_forosh.SQL.Text+' where cod='+L_cod.Caption;
              DataM_forosh.ADOQ_forosh.ExecSQL;
     
     end;


   frm_eslah_forosh.jozeiat_kharidha;
   E_tarikh.Text:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
   Label_kerayekol_daron.Caption:='';
   MessageBox(Handle,'„»«·€ ò—«ÌÂ «’·«Õ ê—œÌœ',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;
procedure Tfrm_eslah_asli.delete;
var id_sh_for_delete,id_kol_for_delete:string;
begin

   DataM_forosh.ADOQ_forosh.SQL.Text:='delete from  t_forosh where cod='+L_cod.Caption;
   DataM_forosh.ADOQ_forosh.ExecSQL;

   ///////////////////////////////////////////////////////////////////////////////////////

   DataM_final.ADOQ_index_sh_kh.SQL.Text:='select * from T_index_sh_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString)+
    ' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_sh_kh.Open;

   id_sh_for_delete:=DataM_final.ADOQ_index_sh_khid.AsString;

   DataM_final.ADOQ_index_kol_kh.SQL.Text:='select * from T_index_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_kol_kh.Open;

   id_kol_for_delete:=DataM_final.ADOQ_index_kol_khid.AsString;

   ///////////////////////////////////////////////////////////////////////////////////////

    DataM_final.ADOQ_t_checkha_sh_kharid.SQL.Text:='delete from t_checkha_sh_kharid where id='+
    QuotedStr(id_sh_for_delete);

    DataM_final.ADOQ_t_checkha_sh_kharid.ExecSQL;

    DataM_final.ADOQ_t_checkha_kol_kharid.SQL.Text:='delete from t_checkha_kol_kharid where id='+
    QuotedStr(id_kol_for_delete);

    DataM_final.ADOQ_t_checkha_kol_kharid.ExecSQL;



    DataM_final.ADOQ_t_naghde_sh_kharid.SQL.Text:='delete from t_naghde_sh_kharid where id='+
    QuotedStr(id_sh_for_delete);

    DataM_final.ADOQ_t_naghde_sh_kharid.ExecSQL;

    DataM_final.ADOQ_t_naghde_kol_kharid.SQL.Text:='delete from t_naghde_kol_kharid where id='+
    QuotedStr(id_kol_for_delete);

    DataM_final.ADOQ_t_naghde_kol_kharid.ExecSQL;


   ///////////////////////////////////////////////////////////////////////////////////////

   DataM_final.ADOQ_T_bedeh_talab_sh_kharid.SQL.Text:='delete from T_bedeh_talab_sh_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString);

   DataM_final.ADOQ_T_bedeh_talab_sh_kharid.ExecSQL;


   DataM_final.ADOQ_T_bedeh_talab_kol_kharid.SQL.Text:='delete from T_bedeh_talab_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and tarikh='+QuotedStr(E_tarikh.Text);
   DataM_final.ADOQ_T_bedeh_talab_kol_kharid.ExecSQL;

   DataM_final.ADOQ_index_sh_kh.SQL.Text:='delete from T_index_sh_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+ ' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString)+
    ' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_sh_kh.ExecSQL;


   DataM_final.ADOQ_index_kol_kh.SQL.Text:='delete from t_index_kol_kharid where cod_sh='+
   QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_index_kol_kh.ExecSQL;



   MessageBox(Handle,'Œ—Ìœ Ê ›—Ê‘ «‰ Œ«»Ì Õ–› ê—œÌœ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;

function Tfrm_eslah_asli.check:boolean;
var s:string;
    f:boolean;
    x,y:real;
begin
  s:='';
  f:=false;

  if (CheckBox1.Checked)then
  begin
    if(ComboBox1.Text='')then
      begin
        f:=true;
       s:=s+' ‰«„ Ã‰” ';
       ComboBox1.SetFocus;
      end;
  end;
  if(E_ojrat.Text='')then
   begin
   f:=true;
   s:=s+' «Ã—  ';
   E_ojrat.SetFocus;
  end;

   if(E_fi.Text='')then
   begin
   f:=true;
   s:=s+' ›Ì ';
   E_fi.SetFocus;
  end;
  if (E_vazn.Text='')then
  begin
   f:=true;
   s:=s+' Ê“‰ ';
   E_vazn.SetFocus;
  end;
  if(E_sal.Text='')or(E_roz.Text='')or(E_mah.Text='')then
   begin
   f:=true;
   s:=s+'  «—ÌŒ ';
  end;

  s:=s+' »«Ìœ Ê«—œ ‘Êœ.';
  if f then
  begin
    MessageBox(Handle,pchar(s),'Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    check:=false;
  end
  else
    check:=true;

end;
procedure Tfrm_eslah_asli.update_forosh_jozi;
var g_kol,ojrat_kol,keraye_kol,remain,bedehi,keraye,vazn:real;
    ojrat_az_kh_kol,keraye_az_kh_kol,ojrat_az_kh,keraye_az_kh,mount_kh,ojrat_hasanpor,ran_daron,ran_biron,noe_anjir:string;
    i,j:integer;
begin
        g_kol:=StrToFloat(e_vazn.Text)*StrToFloat(e_fi.Text);
        ojrat_kol:=StrToFloat(e_vazn.Text)*StrToFloat(e_ojrat.Text);
 if (not frm_eslah_haml_daron.CheckBox1.checked)and(not frm_eslah_haml_bein.CheckBox1.checked) then
    begin
        g_kol:=StrToFloat(e_vazn.Text)*StrToFloat(e_fi.Text);
        ojrat_kol:=StrToFloat(e_vazn.Text)*StrToFloat(e_ojrat.Text);

        ran_daron:=DBText18.Caption;
        keraye_az_kh:=DBText20.Caption;
        keraye_az_kh_kol:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(DBText20.Caption));

        ran_biron:=DBText7.Caption;
        keraye_kol:=StrToFloat(e_vazn.Text)*StrToFloat(DBText23.Caption);
        keraye:=StrToFloat(DBText23.Caption);


        if (L_check_daron.Caption='')and(L_taeed_hazf_daron.Caption='') then
        begin
            ran_daron:=DBText18.Caption;
            keraye_az_kh:=DBText20.Caption;
            keraye_az_kh_kol:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(DBText20.Caption));

        end;
        if (L_check_daron.Caption='edit') then
        begin
            ran_daron:=frm_eslah_haml_daron.scranande_boron.Text;
            keraye_az_kh_kol:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(frm_eslah_haml_daron.E_keraye.Text));
            keraye_az_kh:=frm_eslah_haml_daron.E_keraye.Text;
        end;
        if (L_check_daron.Caption='hazf')and(L_taeed_hazf_daron.Caption='yes') then
        begin
            keraye_az_kh:='0';
            keraye_az_kh_kol:='0';
            ran_daron:='';
        end;
  ////////////////////////////////////////////////////////


        if (L_check_biron.Caption='')and(L_taeed_hazf_biron.Caption='') then
        begin
            ran_biron:=DBText7.Caption;
            keraye_kol:=StrToFloat(e_vazn.Text)*StrToFloat(DBText23.Caption);
            keraye:=StrToFloat(DBText23.Caption);
        end;
        if (L_check_biron.Caption='edit') then
        begin
            ran_biron:=frm_eslah_haml_bein.scranande_boron.Text;
            keraye_kol:=StrToFloat(e_vazn.Text)*StrToFloat(frm_eslah_haml_bein.E_keraye.Text);
            keraye:=StrToFloat(frm_eslah_haml_bein.E_keraye.Text);
        end;
        if (L_check_biron.Caption='hazf')and(L_taeed_hazf_biron.Caption='yes') then
        begin
            keraye:=0;
            keraye_kol:=0;
            ran_biron:='';
        end;

        remain:=g_kol-(ojrat_kol+keraye_kol);
        bedehi:=remain;

        ojrat_az_kh:=DataM_forosh.ADOQ_foroshojrat_az_kh.AsString;

         if trim(e_ojrat_AZ_KHARIDAR.Text)<>ojrat_az_kh then
         begin
          if (e_ojrat_AZ_KHARIDAR.Text='') or(e_ojrat_AZ_KHARIDAR.Text='0') then
            ojrat_az_kh:='0'
           else
            ojrat_az_kh:=e_ojrat_AZ_KHARIDAR.Text;
         end;


        ojrat_az_kh_kol:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(ojrat_az_kh));

        ojrat_hasanpor:=FloatToStr(StrToFloat(ojrat_az_kh_kol)+StrToFloat(keraye_az_kh_kol)+ojrat_kol+keraye_kol);

        mount_kh:=FloatToStr(g_kol+StrToFloat(keraye_az_kh_kol)+StrToFloat(ojrat_az_kh_kol));

        if(E_vazn.Text<>DBText6.Caption)or(E_fi.Text<>DBText10.Caption)or(e_ojrat_AZ_KHARIDAR.Text<>DataM_forosh.ADOQ_foroshojrat_az_kh.AsString)then
          delete_pardakhtha_after_eslah_fi_vazn_kher_az_kh_change;

        if DBText1.Caption<>(trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text)) then
        begin
             delete_from_kol_after_tarikh_change;
             update_tarikh_index_sh_after_tarikh_change;
        end;

        DataM_forosh.ADOQ_forosh.SQL.Text:='update t_forosh set vazn='+E_vazn.Text+',fi='+E_fi.Text+
        ',ojrat='+E_ojrat.Text+',keraye='+FloatToStr(keraye)+
        ',goni='+E_t_goni.Text+',geymat_kol='+FloatToStr(g_kol)+
        ',ojrat_kol='+FloatToStr(ojrat_kol)+',keraye_kol='+FloatToStr(keraye_kol)+
        ',remain='+FloatToStr(remain)+',bedehi='+FloatToStr(bedehi)+',mande='+FloatToStr(bedehi)+
        ',ojrat_az_kh_kol='+ojrat_az_kh_kol+',ojrat_az_kh='+ojrat_az_kh+',tarikh='+QuotedStr(trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text))+
        ',keraye_az_kh_kol='+keraye_az_kh_kol+',keraye_az_kh='+keraye_az_kh+
        ',mount_kh='+mount_kh+',ojrat_hasanpor='+ojrat_hasanpor+
        ',ranande_daron='+QuotedStr(ran_daron)+
        ',ranande='+QuotedStr(ran_biron);
        if CheckBox1.Checked then
        begin
          DataM_forosh.ADOQ_forosh.SQL.Text:=DataM_forosh.ADOQ_forosh.SQL.Text+',anjir_noe='+QuotedStr(ComboBox1.Text);
        end;
        DataM_forosh.ADOQ_forosh.SQL.Text:=DataM_forosh.ADOQ_forosh.SQL.Text+' where cod='+L_cod.Caption;

        DataM_forosh.ADOQ_forosh.ExecSQL;
    end;

   frm_eslah_forosh.jozeiat_kharidha;
   E_tarikh.Text:=trim(E_sal.Text)+'/'+trim(E_mah.Text)+'/'+trim(E_roz.Text);
   Label_kerayekol_daron.Caption:='';
   MessageBox(Handle,'Œ—Ìœ Ê ›—Ê‘ «‰ Œ«»Ì «’·«Õ ê—œÌœ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;
procedure Tfrm_eslah_asli.jozeiat_kharidha;
var st:string;
begin
   if DataM_forosh.ADOQ_hame.RecordCount >0 then
   begin
   
     st:=' select sum(mande)as mande_kol,sum(daryaft_nagd)as nagd_kol,sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
    ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol,sum(geymat_kol-ojrat_az_kh-keraye_az_kh) as kh_mount,sum(keraye_az_kh)as keraye_kh,sum(ojrat_az_kh)as ojrat_kh'+
    ', sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as nakhales_kol'+
    ' from t_forosh where sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+
    ' and name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);
    DataM_forosh.ADOQuery_jam_forosh.SQL.Text:=st;
    DataM_forosh.ADOQuery_jam_forosh.Open;

    DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+
    ' and name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);
     DataM_forosh.ADOQ_forosh.Open;
  end
  else
  begin
         st:=' select sum(mande)as mande_kol,sum(daryaft_nagd)as nagd_kol,sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
    ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol,sum(geymat_kol-ojrat_az_kh-keraye_az_kh) as kh_mount,sum(keraye_az_kh)as keraye_kh,sum(ojrat_az_kh)as ojrat_kh'+
    ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as nakhales_kol'+
    ' from t_forosh where sh_kh<0';
     DataM_forosh.ADOQuery_jam_forosh.SQL.Text:=st;
    DataM_forosh.ADOQuery_jam_forosh.Open;

    DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where sh_kh<0';
    DataM_forosh.ADOQ_forosh.Open;
    L_g_kol.Caption:='';
    L_ojrat_kol.Caption:='';
    L_keraye_kol.Caption:='';
    L_remain.Caption:='';
  E_vazn.Text:=DBText6.Caption;
  E_t_goni.Text:=DBText9.Caption;
  E_fi.Text:=DBText10.Caption;
  E_ojrat.Text:=DBText11.Caption;
  
  L_sh_kh.Caption:=DBT_sh_kh.Caption;
  L_cod.Caption:=DBT_cod.Caption;

  E_sal.Text:=DBText4.Caption;
  E_roz.Text:=DBText4.Caption;
  E_mah.Text:=DBText4.Caption;
  end;
end;

procedure Tfrm_eslah_asli.show_kharidha;
begin
  if DataMo_shakhs.ADOQ_kharidar.RecordCount>0 then
  begin
  DataM_forosh.ADOQ_hame.SQL.Text:='select sh_kh,tarikh,name_kh,family_kh from t_forosh where cod_kh='+DataMo_shakhs.ADOQ_kharidarcod.AsString+
  ' and tarikh='+QuotedStr(E_tarikh.Text)+' group by tarikh,sh_kh,name_kh,family_kh';
  DataM_forosh.ADOQ_hame.Open;
  end;
end;

procedure Tfrm_eslah_asli.EdChange(Sender: TObject);
begin
 DataMo_shakhs.ADOQ_kharidar.Locate('family',Ed.Text,[loPartialKey]);
 jozeiat_kharidha;
end;

procedure Tfrm_eslah_asli.Edit2Change(Sender: TObject);
var s:string;
begin
  if Edit2.Text='' then
    s:='0'
  else
    s:=Edit2.Text;
  DataMo_shakhs.ADOQ_kharidar.Locate('cod',s,[loPartialKey]);
  jozeiat_kharidha;

end;

procedure Tfrm_eslah_asli.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_asli.RadioGroup11Click(Sender: TObject);
begin
   if RadioGroup11.ItemIndex=1 then
  Begin
    _taghvim.ShowModal;
    E_tarikh.Text:=_taghvim._str_date;
    if E_tarikh.Text='' then
      E_tarikh.Text:=frm_main.E_tarikh.Text;
  end
  else
    E_tarikh.Text:=frm_main.E_tarikh.Text;
end;

procedure Tfrm_eslah_asli.E_tarikhChange(Sender: TObject);
begin
  show_kharidha;
  jozeiat_kharidha;
end;

procedure Tfrm_eslah_asli.FormShow(Sender: TObject);
begin
  DataMo_shakhs.ADOQ_foroshande_eslah.SQL.Text:='select * from T_foroshande order by family,name';
  DataMo_shakhs.ADOQ_foroshande_eslah.Open;
  RadioGroup1.ItemIndex:=0;
 if RadioGroup1.ItemIndex=0 then
 begin
  G_gheire.Visible:=true;
  G_keraye.Visible:=false;
  GroupBox3.Visible:=false;
 end;
 if RadioGroup1.ItemIndex=1 then
 begin
  G_gheire.Visible:=false;
  G_keraye.Visible:=true;
  GroupBox3.Visible:=false;
 end;
 if RadioGroup1.ItemIndex=2 then
 begin
  G_gheire.Visible:=false;
  G_keraye.Visible:=false;
  GroupBox3.Visible:=true;
 end;

  RadioGroup2.ItemIndex:=0;
  if RadioGroup2.ItemIndex=0 then
  begin
    Button8.Visible:=true;
    Button9.Visible:=false;
  end
  else
  begin
    Button8.Visible:=false;
    Button9.Visible:=true;
  end;

  L_check_biron.Caption:='';
  L_taeed_hazf_biron.Caption:='';
  L_check_daron.Caption:='';
  L_taeed_hazf_daron.Caption:='';
  DataMo_shakhs.show_ranande;
  DataMo_shakhs.show_kharidar;
  E_tarikh.Text:=frm_main.E_tarikh.Text;
  show_kharidha;
  jozeiat_kharidha;
  if DataM_forosh.ADOQ_forosh.RecordCount>0 then
 begin
  DataM_forosh.ADOQ_update_forosh.SQL.Text:='select * from t_forosh where cod='+frm_eslah_forosh.DBT_cod.Caption;
  DataM_forosh.ADOQ_update_forosh.Open;
  
  E_vazn.Text:=DBText6.Caption;
  E_t_goni.Text:=DBText9.Caption;
  E_fi.Text:=DBText10.Caption;
  E_ojrat.Text:=DBText11.Caption;
  
  L_sh_kh.Caption:=DBT_sh_kh.Caption;
  L_cod.Caption:=DBT_cod.Caption;

 end;
  L_g_kol.Caption:='';
  L_ojrat_kol.Caption:='';
  L_keraye_kol.Caption:='';
  Label_kerayekol_daron.Caption:='';
  L_remain.Caption:='';
end;




procedure Tfrm_eslah_asli.Button4Click(Sender: TObject);
var t:string;
begin
if DBText1.Caption='' then
       MessageBox(Handle,' —òÊ—œÌ »—«Ì –ŒÌ—Â ÊÃÊœ ‰œ«—œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin
  frm_sel_kharid.check_ashar(E_vazn.Text,t);
  if t='yes' then
  begin
    if check then
      update_forosh_jozi;

    L_check_biron.Caption:='';
    L_taeed_hazf_biron.Caption:='';
    L_taeed_hazf_daron.Caption:='';
    L_check_daron.Caption:='';
    frm_eslah_haml_daron.CheckBox1.Checked:=false;
    frm_eslah_haml_bein.CheckBox1.Checked:=false;

    frm_eslah_asli.CheckBox1.Checked:=False;
    frm_eslah_asli.Label23.Visible:=false;
    frm_eslah_asli.ComboBox1.Visible:=false;
  end
  else
  begin
    E_vazn.Text:='';
    MessageBox(Handle,' ⁄œ«œ ⁄·«∆„ ‰ﬁÿÂ «⁄‘«— œ—”  ‰„Ì »«‘œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end;
end;
end;

procedure Tfrm_eslah_asli.Button5Click(Sender: TObject);
begin
  frm_add_kharidha.show_calculator;
end;

procedure Tfrm_eslah_asli.Button1Click(Sender: TObject);
var k_bein,k_daron,t:string;
begin
  frm_sel_kharid.check_ashar(E_vazn.Text,t);
  if t='yes' then
  begin
   if check then
   begin

    if frm_eslah_haml_bein.E_keraye.Text='' then
      k_bein:='0'
    else
      k_bein:=frm_eslah_haml_bein.E_keraye.Text;

    if frm_eslah_haml_daron.E_keraye.Text='' then
      k_daron:='0'
    else
      k_daron:=frm_eslah_haml_daron.E_keraye.Text;

    l_g_kol.caption:=FloatToStr(StrToFloat(E_vazn.Text)*StrToFloat(e_fi.Text));
    l_ojrat_kol.caption:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(e_ojrat.Text));
  
    if (frm_eslah_haml_bein.L_check.Caption='edit') then
     L_keraye_kol.caption:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(k_bein))
    else
     L_keraye_kol.caption:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(DBText23.Caption));

    if (frm_eslah_haml_daron.L_check.Caption='edit') then
     Label_kerayekol_daron.caption:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(k_daron))
    else
     Label_kerayekol_daron.caption:=FloatToStr(StrToFloat(e_vazn.Text)*StrToFloat(DBText20.Caption));

    l_remain.caption:=FloatToStr(StrToFloat(L_g_kol.Caption)-StrToFloat(l_ojrat_kol.Caption)-StrToFloat(l_keraye_kol.Caption));
   end;
  end
     else
  begin
    E_vazn.Text:='';
    MessageBox(Handle,' ⁄œ«œ ⁄·«∆„ ‰ﬁÿÂ «⁄‘«— œ—”  ‰„Ì »«‘œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end;
end;

procedure Tfrm_eslah_asli.Button3Click(Sender: TObject);
begin
  if DataM_forosh.ADOQ_forosh.RecordCount<=0 then
       MessageBox(Handle,' —òÊ—œÌ »—«Ì –ŒÌ—Â ÊÃÊœ ‰œ«—œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin
  update_forosh_keraye;
  if RadioGroup2.ItemIndex=1 then
    delete_pardakhtha_after_eslah_daronshahri;
  L_check_biron.Caption:='';
  L_taeed_hazf_biron.Caption:='';
  L_taeed_hazf_daron.Caption:='';
  L_check_daron.Caption:='';
  frm_eslah_haml_daron.CheckBox1.Checked:=false;
  frm_eslah_haml_bein.CheckBox1.Checked:=false;
end;
end;

procedure Tfrm_eslah_asli.Button2Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_eslah_asli.Button6Click(Sender: TObject);
begin
if L_cod.Caption<>'' then
begin
  if MessageBox(Handle,'Œ—Ìœ Ê ›—Ê‘ «‰ Œ«»Ì Õ–› ê—œœ ø',' ÊÃÂ  !',MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING)=id_yes then
  begin
    delete_time;
    delete;
    show_kharidha;
    jozeiat_kharidha;
  end;
end
else
 MessageBox(Handle,' —òÊ—œÌ »—«Ì Õ–› ÊÃÊœ ‰œ«—œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;

procedure Tfrm_eslah_asli.Button7Click(Sender: TObject);
begin
  show_kharidha;
  jozeiat_kharidha;
end;

procedure Tfrm_eslah_asli.Button8Click(Sender: TObject);
begin
if DBText1.Caption='' then
  MessageBox(Handle,' —òÊ—œÌ »—«Ì ÊÌ—«Ì‘ ÊÃÊœ ‰œ«—œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
 begin
   frm_eslah_haml_bein.RadioGroup1.ItemIndex:=0;
   frm_eslah_haml_bein.CheckBox1.Checked:=false;
   frm_eslah_haml_bein.ShowModal;
 end;
end;

procedure Tfrm_eslah_asli.Button9Click(Sender: TObject);
begin
if DBText1.Caption='' then
  MessageBox(Handle,' —òÊ—œÌ »—«Ì ÊÌ—«Ì‘ ÊÃÊœ ‰œ«—œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
  begin
    frm_eslah_haml_daron.RadioGroup1.ItemIndex:=0;
    frm_eslah_haml_daron.CheckBox1.Checked:=false;
    frm_eslah_haml_daron.ShowModal;
  end;
end;

procedure Tfrm_eslah_asli.Button10Click(Sender: TObject);
begin
    if DataM_forosh.ADOQ_forosh.RecordCount<=0 then
      MessageBox(Handle,' —òÊ—œÌ »—«Ì ’œÊ— ›«ò Ê— ÊÃÊœ ‰œ«—œ','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
    else
    begin
      DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh  where sh_kh='+L_sh_kh.Caption+' and family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarfamily.AsString)+
      ' and name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarname.AsString);
      DataM_forosh.ADOQ_forosh.Open;

      DataM_forosh.ADOQ_vazn_goni.SQL.Text:='select sum(goni) as  goni_kol,sum(vazn) as vazn_kol from t_forosh'+
      '  where  sh_kh='+L_sh_kh.Caption+' and family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarfamily.AsString)+
      ' and name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarname.AsString);
      DataM_forosh.ADOQ_vazn_goni.Open;

      DataM_forosh.ADOQ_vazn_bedon_keraye.SQL.Text:='select sum(vazn) as vazn_kol from t_forosh'+
      '  where  sh_kh='+L_sh_kh.Caption+' and family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarfamily.AsString)+
      ' and name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarname.AsString)+
      ' and keraye_az_kh>0';
      DataM_forosh.ADOQ_vazn_bedon_keraye.Open;

      DataM_forosh.ADOQ_vazn_bedon_ojrat.SQL.Text:='select sum(vazn) as vazn_kol from t_forosh'+
      '  where  sh_kh='+L_sh_kh.Caption+' and family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarfamily.AsString)+
      ' and name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarname.AsString)+
      ' and ojrat_az_kh>0';
      DataM_forosh.ADOQ_vazn_bedon_ojrat.Open;


      
      DataM_forosh.ADOQ_oj_for_factor_kh.SQL.Text:='select ojrat_az_kh from t_forosh'+
      '  where  sh_kh='+L_sh_kh.Caption+' and family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarfamily.AsString)+
      ' and name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarname.AsString)+
      ' and  ojrat_az_kh>0' ;
      DataM_forosh.ADOQ_oj_for_factor_kh.Open;

      DataM_forosh.ADOQ_ker_for_factor_kh.SQL.Text:='select keraye_az_kh  from t_forosh'+
      '  where  sh_kh='+L_sh_kh.Caption+' and family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarfamily.AsString)+
      ' and name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarname.AsString)+
       ' and  keraye_az_kh>0 ';
      DataM_forosh.ADOQ_ker_for_factor_kh.Open;

      DataM_forosh.ADOQ_print_kh.SQL.Text:='select  sum(mount_kh) as kh_mount,round(sum(mount_kh)/sum(vazn),0) as miangin from t_forosh'+      
     ' where sh_kh='+L_sh_kh.Caption+' and family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarfamily.AsString)+
      ' and name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarname.AsString);
     DataM_forosh.ADOQ_print_kh.Open;

     DataM_forosh.ADOQ_print_kh2.SQL.Text:='select  sum(keraye_az_kh_kol)as keraye_kh,sum(ojrat_az_kh_kol)as ojrat_kh from t_forosh'+
     '    where sh_kh='+L_sh_kh.Caption+' and family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarfamily.AsString)+
      ' and name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarname.AsString);
     DataM_forosh.ADOQ_print_kh2.Open;
     
      FRM_PRINT_BARAYE_KHARIDAR.QRL_type.Caption:=frm_main.E_tarikh.Text;

//      FRM_PRINT_BARAYE_KHARIDAR.QuickRep1.Print;
        FRM_PRINT_BARAYE_KHARIDAR.QuickRep1.Preview;
//      frm_add_kharidha.show_temp;
//      frm_print_fo.QuickRep1.Preview;
     end;
end;

procedure Tfrm_eslah_asli.RadioGroup1Click(Sender: TObject);
begin
 if RadioGroup1.ItemIndex=0 then
 begin
  G_gheire.Visible:=true;
  G_keraye.Visible:=false;
  GroupBox3.Visible:=false;
 end;
 if RadioGroup1.ItemIndex=1 then
 begin
  G_gheire.Visible:=false;
  G_keraye.Visible:=true;
  GroupBox3.Visible:=false;
 end;
 if RadioGroup1.ItemIndex=2 then
 begin
  G_gheire.Visible:=false;
  G_keraye.Visible:=false;
  GroupBox3.Visible:=true;
 end;
end;

procedure Tfrm_eslah_asli.RadioGroup2Click(Sender: TObject);
begin
  if RadioGroup2.ItemIndex=0 then
  begin
    Button8.Visible:=true;
    Button9.Visible:=false;
  end
  else
  begin
    Button8.Visible:=false;
    Button9.Visible:=true;
  end;

end;

procedure Tfrm_eslah_asli.E_vaznKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9','.',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_asli.E_ojratKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_asli.E_t_goniKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_asli.E_fiKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_asli.E_rozKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_asli.E_mahKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_asli.E_salKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_asli.e_ojrat_AZ_KHARIDARKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_asli.CheckBox1Click(Sender: TObject);
begin
 if CheckBox1.Checked then
  begin
    Label23.Visible:=true;
    ComboBox1.Visible:=true;
  end
  else
  begin
    Label23.Visible:=false;
    ComboBox1.Visible:=false;
  end;
end;

procedure Tfrm_eslah_asli.E_searchChange(Sender: TObject);
begin
  DataMo_shakhs.ADOQ_foroshande_eslah.Locate('family',E_search.Text,[loPartialKey]);
end;

procedure Tfrm_eslah_asli.Edit5Change(Sender: TObject);
var s:string;
begin
  if Edit5.Text='' then
    s:='0'
  else
    s:=Edit5.Text;
  DataMo_shakhs.ADOQ_foroshande_eslah.Locate('cod',s,[loPartialKey]);
end;

procedure Tfrm_eslah_asli.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_asli.Button11Click(Sender: TObject);
begin
if DBText1.Caption='' then
       MessageBox(Handle,' —òÊ—œÌ »—«Ì –ŒÌ—Â ÊÃÊœ ‰œ«—œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
  update_foroshande;

end;

procedure Tfrm_eslah_asli.keraye_AZ_KHARIDARKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
