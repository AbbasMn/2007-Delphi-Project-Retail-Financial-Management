unit unt_eslah_nahve_pardakht;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, SUIForm, DB;

type
  Tfrm_eslah_nahve_pardakht = class(TForm)
    suiForm1: TsuiForm;
    l_type: TLabel;
    L_bedeh: TLabel;
    L_tarikh: TLabel;
    L_type_kh: TLabel;
    L_nakhales_kol_kh: TLabel;
    L_nakhales_temp: TLabel;
    Button1: TButton;
    Button2: TButton;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    E_shobe: TEdit;
    E_mablagh_check: TEdit;
    E_sh_check: TEdit;
    E_jari: TEdit;
    GroupBox5: TGroupBox;
    RadioGroup11: TRadioGroup;
    E_tarikh: TEdit;
    GroupBox3: TGroupBox;
    DBGrid4: TDBGrid;
    Button3: TButton;
    Button5: TButton;
    ComboBox1: TComboBox;
    Button4: TButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    E_mablagh_nagd: TEdit;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label8: TLabel;
    L_bedeh_temp: TLabel;
    L_talab_temp: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    L_id_sh_kh: TLabel;
    L_id_kol_kharid: TLabel;
    L_sh_kharid_eslah: TLabel;
    L_nakhales_sh_kh: TLabel;
    l_id_key: TLabel;
    CheckBox1: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure show_checkhaye_kol_kh;
    procedure show_checkhaye_sh_kh;
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure RadioGroup11Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure update_selected_check_sh_kh;
    procedure update_selected_check_kol_kh;
    procedure E_mablagh_checkKeyPress(Sender: TObject; var Key: Char);
    procedure E_sh_checkKeyPress(Sender: TObject; var Key: Char);
    procedure E_mablagh_nagdKeyPress(Sender: TObject; var Key: Char);
    procedure add_check_jadid_sh_kharid;
    procedure add_check_jadid_kol_kharid;
    procedure update_nagd_sh_kh;
    procedure update_nagd_kol_kh;
    procedure show_nagd_sh_kh;
    procedure show_nagd_kol_kh;
    procedure sum_nagd_check_kh;
    procedure sum_nagd_check_kol;
    procedure E_mablagh_nagdExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure update_bedeh_talab_sh_kh;
    procedure update_bedeh_talab_kol_kh;
    function check_check:boolean;
    procedure E_mablagh_nagdChange(Sender: TObject);
    procedure E_mablagh_checkChange(Sender: TObject);
    procedure E_mablagh_checkExit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah_nahve_pardakht: Tfrm_eslah_nahve_pardakht;

implementation

uses unt_DataM_final, unt_main, unt_eslah_forosh, unt_DataMo_shakhs,
  unt_DataM_forosh, unt_add_kharidha, Taghvim;

{$R *.dfm}
function Tfrm_eslah_nahve_pardakht.check_check:boolean;
begin
   check_check:=true;
   if(E_shobe.Text='')or(ComboBox1.Text='')or(E_jari.Text='')or(E_tarikh.Text='')or(E_sh_check.Text='')or(E_mablagh_check.Text='') then
   begin
    check_check:=False;
    MessageBox(Handle,'›Ì·œÂ«Ì ” «—Â œ«— ÃÂ  À»  çò »«Ìœ Ê«—œ ‘Ê‰œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
   end;

end;

procedure Tfrm_eslah_nahve_pardakht.update_bedeh_talab_kol_kh;
begin
  DataM_final.ADOQ_T_bedeh_talab_KOL_kharid.SQL.Text:='update T_bedeh_talab_KOL_kharid set bedeh='+L_bedeh_temp.Caption+
  ',talab='+L_talab_temp.Caption+ ' where id='+QuotedStr(L_id_kol_kharid.Caption);
  DataM_final.ADOQ_T_bedeh_talab_KOL_kharid.ExecSQL;
end;

procedure Tfrm_eslah_nahve_pardakht.update_bedeh_talab_sh_kh;
begin
  DataM_final.ADOQ_T_bedeh_talab_sh_kharid.SQL.Text:='update T_bedeh_talab_sh_kharid set bedeh='+L_bedeh_temp.Caption+
  ',talab='+L_talab_temp.Caption+ ' where id='+QuotedStr(L_id_sh_kh.Caption)+' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString);
                                                                                                        //L_sh_kharid.Caption
  DataM_final.ADOQ_T_bedeh_talab_sh_kharid.ExecSQL;
end;


procedure Tfrm_eslah_nahve_pardakht.update_nagd_kol_kh;
begin
  DataM_final.ADOQ_t_naghde_KOL_kharid.SQL.Text:='update t_naghde_kol_kharid set mablagh_nagd='+
  E_mablagh_nagd.Text+' where id='+QuotedStr(L_id_kol_kharid.Caption);
  DataM_final.ADOQ_t_naghde_kol_kharid.ExecSQL;
end;

procedure Tfrm_eslah_nahve_pardakht.update_nagd_sh_kh;
begin
  DataM_final.ADOQ_t_naghde_sh_kharid.SQL.Text:='update t_naghde_sh_kharid set mablagh_nagd='+
  E_mablagh_nagd.Text+' where id='+QuotedStr(L_id_sh_kh.Caption)+' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString);
                                                                                                        //L_sh_kharid.Caption
  DataM_final.ADOQ_t_naghde_sh_kharid.ExecSQL;

end;


procedure Tfrm_eslah_nahve_pardakht.sum_nagd_check_kol;
var s,check:string;
begin

if E_mablagh_nagd.Text='' then
   E_mablagh_nagd.Text:='0';
   
 if DataM_forosh.ADOQ_hame.RecordCount>0 then
 begin
  DataM_final.ADOQ_jam_check_kol_kh.SQL.Text:='select sum(mablagh_ch) as jam_mablagh_ch from t_checkha_kol_kharid'+
  ' where id='+QuotedStr(L_id_kol_kharid.Caption);
  DataM_final.ADOQ_jam_check_kol_kh.Open;

  if (DataM_final.ADOQ_jam_check_kol_khjam_mablagh_ch.AsString='')or(DataM_final.ADOQ_jam_check_kol_khjam_mablagh_ch.AsString='0')then
    check:='0'
    else
  check:=DataM_final.ADOQ_jam_check_kol_khjam_mablagh_ch.AsString;

  s:=FloatToStr(StrToFloat(frm_eslah_forosh.DBText5.Caption)-StrToFloat(E_mablagh_nagd.Text)-StrToFloat(check));

  if StrToFloat(s)>0 then
  begin
    L_bedeh_temp.Caption:=s;
    L_talab_temp.Caption:='0';
  end;
  if StrToFloat(s)<0 then
  begin
    L_bedeh_temp.Caption:='0';
    L_talab_temp.Caption:=FloatToStr(StrToFloat(s)* -1);
  end;
  if StrToFloat(s)=0 then
  begin
    L_bedeh_temp.Caption:='0';
    L_talab_temp.Caption:='0';
  end; 
end;
end;


procedure Tfrm_eslah_nahve_pardakht.sum_nagd_check_kh;
var s,check:string;
begin

if E_mablagh_nagd.Text='' then
   E_mablagh_nagd.Text:='0';

if DataM_forosh.ADOQ_hame.RecordCount>0 then
begin

  DataM_final.ADOQ_jam_check_sh_kh.SQL.Text:='select sum(mablagh_ch) as jam_mablagh_ch from t_checkha_sh_kharid where id='+
  QuotedStr(L_id_sh_kh.Caption)+' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString);
                                                          //L_sh_kharid.Caption
  DataM_final.ADOQ_jam_check_sh_kh.Open;

  if (DataM_final.ADOQ_jam_check_sh_khjam_mablagh_ch.AsString='') or(DataM_final.ADOQ_jam_check_sh_khjam_mablagh_ch.AsString='0')then
    check:='0'
  else
    check:=DataM_final.ADOQ_jam_check_sh_khjam_mablagh_ch.AsString;

  s:=FloatToStr(StrToFloat(frm_eslah_forosh.DBText5.Caption)-StrToFloat(E_mablagh_nagd.Text)-StrToFloat(check));

  sleep(100);
  if StrToFloat(s)>0 then
  begin
    L_bedeh_temp.Caption:=s;
    L_talab_temp.Caption:='0';
  end;
  if StrToFloat(s)<0 then
  begin
    L_bedeh_temp.Caption:='0';
    L_talab_temp.Caption:=FloatToStr(StrToFloat(s)* -1);
  end;
  if StrToFloat(s)=0 then
  begin
    L_bedeh_temp.Caption:='0';
    L_talab_temp.Caption:='0';
  end; 
end;
end;

procedure Tfrm_eslah_nahve_pardakht.show_nagd_kol_kh;
begin
  DataM_final.ADOQ_t_naghde_kol_kharid.SQL.Text:='select * from t_naghde_kol_kharid where id='+
  QuotedStr(L_id_kol_kharid.Caption);

  DataM_final.ADOQ_t_naghde_kol_kharid.open;
  E_mablagh_nagd.Text:=DataM_final.ADOQ_t_naghde_kol_kharidmablagh_nagd.AsString;
end;

procedure Tfrm_eslah_nahve_pardakht.show_nagd_sh_kh;
begin
  DataM_final.ADOQ_t_naghde_sh_kharid.SQL.Text:='select * from t_naghde_sh_kharid where id='+
  QuotedStr(L_id_sh_kh.Caption)+' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString);
                                                       //L_sh_kharid.Caption
  DataM_final.ADOQ_t_naghde_sh_kharid.open;
  E_mablagh_nagd.Text:=DataM_final.ADOQ_t_naghde_sh_kharidmablagh_nagd.AsString;  
end;




procedure Tfrm_eslah_nahve_pardakht.add_check_jadid_kol_kharid;
begin
    DataM_final.ADOQ_t_checkha_kol_kharid.SQL.Text:='insert into t_checkha_kol_kharid(bank_name,shobe,jari,sh_check,tarikh_ch,mablagh_ch,id)values('+
    QuotedStr(ComboBox1.Text)+','+
    QuotedStr(E_shobe.Text)+','+
    QuotedStr(E_jari.Text)+','+
    QuotedStr(E_sh_check.Text)+','+
    QuotedStr(E_tarikh.Text)+','+
    E_mablagh_check.Text+','+
    QuotedStr(L_id_kol_kharid.Caption)+')';
    DataM_final.ADOQ_t_checkha_sh_kharid.ExecSQL;
end;



procedure Tfrm_eslah_nahve_pardakht.add_check_jadid_sh_kharid;
begin
    DataM_final.ADOQ_t_checkha_sh_kharid.SQL.Text:='insert into t_checkha_sh_kharid(bank_name,shobe,jari,sh_check,tarikh_ch,mablagh_ch,id,sh_kh)values('+
    QuotedStr(ComboBox1.Text)+','+
    QuotedStr(E_shobe.Text)+','+
    QuotedStr(E_jari.Text)+','+
    QuotedStr(E_sh_check.Text)+','+
    QuotedStr(E_tarikh.Text)+','+
    E_mablagh_check.Text+','+
    QuotedStr(L_id_sh_kh.Caption)+','+QuotedStr(L_sh_kharid_eslah.Caption)+')';
    DataM_final.ADOQ_t_checkha_sh_kharid.ExecSQL;
end;

procedure Tfrm_eslah_nahve_pardakht.update_selected_check_kol_kh;
begin
  DataM_final.ADOQ_t_checkha_kol_kharid.SQL.Text:='update t_checkha_kol_kharid set bank_name='+
  QuotedStr(ComboBox1.Text)+
  ',shobe='+QuotedStr(E_shobe.Text)+
  ',jari='+QuotedStr(E_jari.Text)+
  ',sh_check='+QuotedStr(E_sh_check.Text)+
  ',tarikh_ch='+QuotedStr(E_tarikh.Text)+
  ',mablagh_ch='+E_mablagh_check.Text+
  ' where id_key='+l_id_key.Caption;
  DataM_final.ADOQ_t_checkha_kol_kharid.ExecSQL;
end;

procedure Tfrm_eslah_nahve_pardakht.update_selected_check_sh_kh;
begin
  DataM_final.ADOQ_t_checkha_sh_kharid.SQL.Text:='update t_checkha_sh_kharid set bank_name='+
  QuotedStr(ComboBox1.Text)+
  ',shobe='+QuotedStr(E_shobe.Text)+
  ',jari='+QuotedStr(E_jari.Text)+
  ',sh_check='+QuotedStr(E_sh_check.Text)+
  ',tarikh_ch='+QuotedStr(E_tarikh.Text)+
  ',mablagh_ch='+E_mablagh_check.Text+
  ' where id_key='+l_id_key.Caption;
  DataM_final.ADOQ_t_checkha_sh_kharid.ExecSQL;
end;

procedure  Tfrm_eslah_nahve_pardakht.show_checkhaye_kol_kh;
begin
  DataM_final.ADOQ_index_kol_kh.SQL.Text:='select * from t_index_kol_kharid where tarikh='+
  QuotedStr(frm_eslah_forosh.E_tarikh.Text)+ ' and cod_sh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString);
  DataM_final.ADOQ_index_kol_kh.Open;

  L_id_kol_kharid.Caption:=DataM_final.ADOQ_index_kol_khid.AsString;

  DataM_final.ADOQ_t_checkha_kol_kharid.SQL.Text:='select * from t_checkha_kol_kharid where id='+
  QuotedStr(DataM_final.ADOQ_index_kol_khid.AsString);
  DataM_final.ADOQ_t_checkha_kol_kharid.Open;

    DataSource2.DataSet:= DataM_final.ADOQ_t_checkha_kol_kharid;
    DataSource2.Enabled:=true;
    DBGrid4.DataSource:=DataSource2;
    DBGrid4.Enabled:=true;

end;

procedure  Tfrm_eslah_nahve_pardakht.show_checkhaye_sh_kh;
begin
  DataM_final.ADOQ_index_sh_kh.SQL.Text:='select * from t_index_sh_kharid where tarikh='+
  QuotedStr(frm_eslah_forosh.E_tarikh.Text)+ ' and cod_sh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+
  ' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString);
  DataM_final.ADOQ_index_sh_kh.Open;

  L_id_sh_kh.Caption:=DataM_final.ADOQ_index_sh_khid.AsString;
  //L_sh_kharid.Caption:=DataM_final.ADOQ_index_sh_khsh_kh.AsString;

  DataM_final.ADOQ_t_checkha_sh_kharid.SQL.Text:='select * from t_checkha_sh_kharid where id='+
  QuotedStr(DataM_final.ADOQ_index_sh_khid.AsString)+' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString);
  DataM_final.ADOQ_t_checkha_sh_kharid.Open;


  DataSource1.DataSet:= DataM_final.ADOQ_t_checkha_sh_kharid;
  DataSource1.Enabled:=true;
  DBGrid4.DataSource:=DataSource1;
  DBGrid4.Enabled:=true;
end;


procedure Tfrm_eslah_nahve_pardakht.FormShow(Sender: TObject);
begin
  E_tarikh.Text:=frm_main.E_tarikh.Text;
  L_bedeh_temp.Caption:='';
  L_talab_temp.Caption:='';
  CheckBox1.Checked:=false;
  if (l_type_kh.Caption='sh_kh') then
  begin
    if (DataM_final.ADOQ_t_checkha_sh_kharid.RecordCount<= 0) then
    begin
     frm_eslah_nahve_pardakht.E_shobe.Text:='';
     frm_eslah_nahve_pardakht.E_jari.Text:='';
     frm_eslah_nahve_pardakht.E_sh_check.Text:='';
     frm_eslah_nahve_pardakht.E_mablagh_check.Text:='';
     frm_eslah_nahve_pardakht.E_tarikh.Text:='';
    end;

     frm_eslah_nahve_pardakht.show_checkhaye_sh_kh;
     frm_eslah_nahve_pardakht.show_nagd_sh_kh;
     frm_eslah_nahve_pardakht.sum_nagd_check_kh;
  end;

  if (l_type_kh.Caption='kol_kh')  then
  begin
    if  (DataM_final.ADOQ_t_checkha_kol_kharid.RecordCount <= 0) then
    begin
     frm_eslah_nahve_pardakht.E_shobe.Text:='';
     frm_eslah_nahve_pardakht.E_jari.Text:='';
     frm_eslah_nahve_pardakht.E_sh_check.Text:='';
     frm_eslah_nahve_pardakht.E_mablagh_check.Text:='';
     frm_eslah_nahve_pardakht.E_tarikh.Text:='';
   end;

     frm_eslah_nahve_pardakht.show_checkhaye_kol_kh;
     frm_eslah_nahve_pardakht.show_nagd_kol_kh;
     frm_eslah_nahve_pardakht.sum_nagd_check_kol;
  end;

end;

procedure Tfrm_eslah_nahve_pardakht.Button4Click(Sender: TObject);
begin
  if l_type_kh.Caption='sh_kh'then
  begin
    if DataM_final.ADOQ_t_checkha_sh_kharid.RecordCount>0 then
       DataM_final.ADOQ_t_checkha_sh_kharid.Delete;
      sum_nagd_check_kh;
      update_nagd_sh_kh;
      update_bedeh_talab_sh_kh;
  end;

  if l_type_kh.Caption='kol_kh'then
  begin
      if DataM_final.ADOQ_t_checkha_kol_kharid.RecordCount>0 then
       DataM_final.ADOQ_t_checkha_kol_kharid.Delete;
       sum_nagd_check_kol;
       update_nagd_kol_kh;
       update_bedeh_talab_kol_kh;
  end;
end;

procedure Tfrm_eslah_nahve_pardakht.Button5Click(Sender: TObject);
begin
frm_add_kharidha.show_calculator;
end;

procedure Tfrm_eslah_nahve_pardakht.RadioGroup11Click(Sender: TObject);
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

procedure Tfrm_eslah_nahve_pardakht.Button3Click(Sender: TObject);
begin
  if l_type_kh.Caption='sh_kh'then
  begin
   if check_check then
   begin
     if not CheckBox1.Checked then
     begin
      if DataM_final.ADOQ_t_checkha_sh_kharid.RecordCount>0 then
      begin
        update_selected_check_sh_kh;
        show_checkhaye_sh_kh;
        sum_nagd_check_kh;
        update_nagd_sh_kh;
        update_bedeh_talab_sh_kh;
        MessageBox(Handle,'çò «‰ Œ«»Ì «’·«Õ ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
      end;
     end
     else
     begin
          DataM_final.ADOQ_t_checkha_sh_kharid.SQL.Text:='insert into t_checkha_sh_kharid(bank_name,shobe,jari,sh_check,tarikh_ch,mablagh_ch,id,sh_kh)'+
          ' values('+QuotedStr(ComboBox1.Text)+','+QuotedStr(E_shobe.Text)+','+QuotedStr(E_jari.Text)+','+QuotedStr(E_sh_check.Text)+
          ','+QuotedStr(E_tarikh.Text)+','+E_mablagh_check.Text+
          ','+L_id_sh_kh.Caption+','+L_sh_kharid_eslah.Caption+')';
          DataM_final.ADOQ_t_checkha_sh_kharid.ExecSQL;
          show_checkhaye_kol_kh;
          sum_nagd_check_kh;
           MessageBox(Handle,'çò ÃœÌœ À»  ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
           CheckBox1.Checked:=false;
     end;
   end;
  end;

  if l_type_kh.Caption='kol_kh'then
  begin
    if check_check then
    begin
      if not CheckBox1.Checked then
      begin
        if DataM_final.ADOQ_t_checkha_kol_kharid.RecordCount>0 then
        begin
          update_selected_check_kol_kh;
          show_checkhaye_kol_kh;
          sum_nagd_check_kol;
          update_bedeh_talab_kol_kh;
          MessageBox(Handle,'çò «‰ Œ«»Ì «’·«Õ ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
        end;
      end
      else
      begin
          DataM_final.ADOQ_t_checkha_kol_kharid.SQL.Text:='insert into t_checkha_kol_kharid(bank_name,shobe,jari,sh_check,tarikh_ch,mablagh_ch,id)'+
          ' values('+QuotedStr(ComboBox1.Text)+','+QuotedStr(E_shobe.Text)+','+QuotedStr(E_jari.Text)+','+QuotedStr(E_sh_check.Text)+
          ','+QuotedStr(E_tarikh.Text)+','+E_mablagh_check.Text+
          ','+L_id_kol_kharid.Caption+')';
          DataM_final.ADOQ_t_checkha_kol_kharid.ExecSQL;
          show_checkhaye_kol_kh;
          sum_nagd_check_kol;
           MessageBox(Handle,'çò ÃœÌœ À»  ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
           CheckBox1.Checked:=false;
      end;
    end;
  end;
end;

procedure Tfrm_eslah_nahve_pardakht.E_mablagh_checkKeyPress(
  Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_nahve_pardakht.E_sh_checkKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_nahve_pardakht.E_mablagh_nagdKeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_nahve_pardakht.E_mablagh_nagdExit(Sender: TObject);
begin
  if l_type_kh.Caption='sh_kh' then
  begin
      sum_nagd_check_kh;
  end;

  if l_type_kh.Caption='kol_kh' then
  begin
      sum_nagd_check_kol;
  end;

end;

procedure Tfrm_eslah_nahve_pardakht.Button1Click(Sender: TObject);
begin
  if (l_type_kh.Caption='sh_kh')  then
  begin
      update_nagd_sh_kh;
      update_bedeh_talab_sh_kh;
  end;
    if (l_type_kh.Caption='kol_kh')  then
  begin
      update_nagd_kol_kh;
      update_bedeh_talab_kol_kh;
  end;
  MessageBox(Handle,'Å—œ«Œ  «‰ Œ«»Ì «’·«Õ ‘œ.',' ÊÃÂ !',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
  close;

end;

procedure Tfrm_eslah_nahve_pardakht.E_mablagh_nagdChange(Sender: TObject);
begin
  if l_type_kh.Caption='sh_kh' then
  begin
      sum_nagd_check_kh;
  end;

  if l_type_kh.Caption='kol_kh' then
  begin
      sum_nagd_check_kol;
  end;
end;



procedure Tfrm_eslah_nahve_pardakht.E_mablagh_checkChange(
  Sender: TObject);
begin
  if l_type_kh.Caption='sh_kh' then
  begin
      sum_nagd_check_kh;
  end;

  if l_type_kh.Caption='kol_kh' then
  begin
      sum_nagd_check_kol;
  end;
end;

procedure Tfrm_eslah_nahve_pardakht.E_mablagh_checkExit(Sender: TObject);
begin
  if l_type_kh.Caption='sh_kh' then
  begin
      sum_nagd_check_kh;
  end;

  if l_type_kh.Caption='kol_kh' then
  begin
      sum_nagd_check_kol;
  end;
end;

procedure Tfrm_eslah_nahve_pardakht.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked then
  begin
     frm_eslah_nahve_pardakht.E_shobe.Text:='';
     frm_eslah_nahve_pardakht.E_jari.Text:='';
     frm_eslah_nahve_pardakht.E_sh_check.Text:='';
     frm_eslah_nahve_pardakht.E_mablagh_check.Text:='';
     frm_eslah_nahve_pardakht.E_tarikh.Text:='';
  end
  else
  begin
    if (frm_eslah_nahve_pardakht.l_type_kh.Caption='kol_kh') then
    begin
      frm_eslah_nahve_pardakht.E_shobe.Text:=DataM_final.ADOQ_t_checkha_kol_kharidshobe.AsString;
     frm_eslah_nahve_pardakht.E_jari.Text:=DataM_final.ADOQ_t_checkha_kol_kharidjari.AsString;
     frm_eslah_nahve_pardakht.E_sh_check.Text:=DataM_final.ADOQ_t_checkha_kol_kharidsh_check.AsString;
     frm_eslah_nahve_pardakht.E_mablagh_check.Text:=DataM_final.ADOQ_t_checkha_kol_kharidmablagh_ch.AsString;
     frm_eslah_nahve_pardakht.E_tarikh.Text:=DataM_final.ADOQ_t_checkha_kol_kharidtarikh_ch.AsString;
     frm_eslah_nahve_pardakht.l_id_key.Caption:=DataM_final.ADOQ_t_checkha_kol_kharidid_key.AsString;
    end;

    if (frm_eslah_nahve_pardakht.l_type_kh.Caption='sh_kh') then
    begin
     frm_eslah_nahve_pardakht.E_shobe.Text:=DataM_final.ADOQ_t_checkha_sh_kharidshobe.AsString;
     frm_eslah_nahve_pardakht.E_jari.Text:=DataM_final.ADOQ_t_checkha_sh_kharidjari.AsString;
     frm_eslah_nahve_pardakht.E_sh_check.Text:=DataM_final.ADOQ_t_checkha_sh_kharidsh_check.AsString;
     frm_eslah_nahve_pardakht.E_mablagh_check.Text:=DataM_final.ADOQ_t_checkha_sh_kharidmablagh_ch.AsString;
     frm_eslah_nahve_pardakht.E_tarikh.Text:=DataM_final.ADOQ_t_checkha_sh_kharidtarikh_ch.AsString;
     frm_eslah_nahve_pardakht.l_id_key.Caption:=DataM_final.ADOQ_t_checkha_sh_kharidid_key.AsString;
    end;
  end;
end;

end.

