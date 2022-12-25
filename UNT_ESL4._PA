unit unt_eslah_forosh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, dxCore, dxButtons, DBCtrls, Grids, DBGrids,
  SUIForm, DB;

type
  Tfrm_eslah_forosh = class(TForm)
    suiForm1: TsuiForm;
    DBGrid1: TDBGrid;
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
    Button3: TButton;
    G_hame: TGroupBox;
    DBGrid4: TDBGrid;
    DataSource2: TDataSource;
    DataSource5: TDataSource;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    DBT_cod: TDBText;
    Label6: TLabel;
    DBText8: TDBText;
    DataSource4: TDataSource;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Button5: TButton;
    GroupBox3: TGroupBox;
    Button4: TButton;
    Button7: TButton;
    Button9: TButton;
    Button2: TButton;
    Button6: TButton;
    Button8: TButton;
    Label7: TLabel;
    L_time: TLabel;
    DBT_cod_shakhs: TDBText;
    procedure EdChange(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure RadioGroup11Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure show_kharidha;
    procedure jozeiat_kharidha;
    procedure E_tarikhChange(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure go_to_jozeiat(s:string);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure sabt_kol;
    procedure sabt_sh_kh;
    procedure factor_bedeh_talab;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_eslah_forosh: Tfrm_eslah_forosh;

implementation

uses unt_DataM_forosh, unt_DataMo_shakhs, Taghvim, unt_main,unt_DataM_final,
  unt_pardakht_be_foroshande, unt_eslah, unt__eslah_f,
  UNT_PRINT_BARAYE_KHARIDAR, unt_add_ranande, unt_search_forosh,
  unt_add_kharidha, unt_nahve_pardakht_kharidar,
  unt_print_nahve_pardakht, unt_print_nahve_pardakht_kol,
  unt_eslah_nahve_pardakht, unt_print_factor_bedeh_talab,
  unt_print_factor_bedeh_talab2, unt_print_nahve_pardakht_bedon_check,
  unt_print_nahve_pardakht_kol_bedon_check;
{$R *.dfm}
procedure Tfrm_eslah_forosh.factor_bedeh_talab;
var jam_kol_kharid,bede_ya_talab_koli,jam_nahaeee:string;
begin
   DataM_final.adoq_T_temp_factor_bedeh_talab.SQL.Text:='delete from T_temp_factor_bedeh_talab';
   DataM_final.adoq_T_temp_factor_bedeh_talab.ExecSQL;

  DataM_final.ADOQ_T_bedeh_talab_sh_kharid.SQL.Text:='select * from T_bedeh_talab_sh_kharid where cod_sh='+
  QuotedStr(DBT_cod_shakhs.Caption)+' and (bedeh>0 or talab>0)';

  DataM_final.ADOQ_T_bedeh_talab_sh_kharid.Open;

  if DataM_final.ADOQ_T_bedeh_talab_sh_kharid.RecordCount>0 then
  begin
   DataM_final.ADOQ_T_bedeh_talab_sh_kharid.First;
   while not (DataM_final.ADOQ_T_bedeh_talab_sh_kharid.Eof) do
   begin
      DataM_final.adoq_T_temp_factor_bedeh_talab.SQL.Text:='insert into T_temp_factor_bedeh_talab(tarikh,type_kh,badeh,talab)values('+
      QuotedStr(DataM_final.ADOQ_T_bedeh_talab_sh_kharidtarikh.AsString)+
      ','+QuotedStr('»—«Ì Œ—Ìœ ‘„«—Â '+DataM_final.ADOQ_T_bedeh_talab_sh_kharidsh_kh.AsString)+
      ','+DataM_final.ADOQ_T_bedeh_talab_sh_kharidbedeh.AsString+
      ','+DataM_final.ADOQ_T_bedeh_talab_sh_kharidtalab.AsString+')';


      DataM_final.adoq_T_temp_factor_bedeh_talab.ExecSQL;
      DataM_final.ADOQ_T_bedeh_talab_sh_kharid.next;
    end;
   end;
  ////////////////////////////////////////////////////////////////////////////////////////////////////////

  DataM_final.ADOQ_T_bedeh_talab_kol_kharid.SQL.Text:='select * from T_bedeh_talab_kol_kharid where cod_sh='+
  QuotedStr(DBT_cod_shakhs.Caption)+'  and (bedeh>0 or talab>0)';

  DataM_final.ADOQ_T_bedeh_talab_kol_kharid.Open;

  if DataM_final.ADOQ_T_bedeh_talab_kol_kharid.RecordCount>0 then
  begin
   DataM_final.ADOQ_T_bedeh_talab_kol_kharid.First;
   while not (DataM_final.ADOQ_T_bedeh_talab_kol_kharid.Eof) do
   begin
      DataM_final.adoq_T_temp_factor_bedeh_talab.SQL.Text:='insert into T_temp_factor_bedeh_talab(tarikh,type_kh,badeh,talab)values('+
      QuotedStr(DataM_final.ADOQ_T_bedeh_talab_kol_kharidtarikh.AsString)+
      ','+QuotedStr('»—«Ì ò· Œ—ÌœÂ« œ— ')+
      ','+DataM_final.ADOQ_T_bedeh_talab_kol_kharidbedeh.AsString+
      ','+DataM_final.ADOQ_T_bedeh_talab_kol_kharidtalab.AsString+')';


      DataM_final.adoq_T_temp_factor_bedeh_talab.ExecSQL;
      DataM_final.ADOQ_T_bedeh_talab_kol_kharid.next;
    end;
   end;

   DataM_final.adoq_T_temp_factor_bedeh_talab.SQL.Text:='select * from T_temp_factor_bedeh_talab order by tarikh';
   DataM_final.adoq_T_temp_factor_bedeh_talab.Open;

   if DataM_final.adoq_T_temp_factor_bedeh_talab.RecordCount>0 then
   begin

    DataM_final.ADOQ_sum_temp_factor_bedeh_talab.SQL.Text:='select  sum(badeh) as bedeh_kol,sum(talab) as talab_kol,sum(talab-badeh) as kol'+
    ' from T_temp_factor_bedeh_talab ';
     DataM_final.ADOQ_sum_temp_factor_bedeh_talab.Open;

    jam_kol_kharid:=DataM_forosh.ADOQ_print_khkh_mount.AsString;

    bede_ya_talab_koli:=floattostr(DataM_final.ADOQ_sum_temp_factor_bedeh_talabkol.value);


    if (StrToFloat(bede_ya_talab_koli)=0) then
    begin
        //bedehkar
      //bede_ya_talab_koli:=floattostr(DataM_final.ADOQ_sum_temp_factor_bedeh_talabkol.value-strtofloat(jam_kol_kharid));

      jam_nahaeee:=FloatToStr((StrToFloat(bede_ya_talab_koli)*-1)+StrToFloat(jam_kol_kharid));

      frm_print_factor_bedeh_talab2.QRL_gabl_natije.Caption:='';

      frm_print_factor_bedeh_talab2.QRL_kol.Caption:='0';

     end;


    if (StrToFloat(bede_ya_talab_koli)<0) then
    begin
        //bedehkar
       //if DataM_final.adoq_T_temp_factor_bedeh_talab.RecordCount=1 then

       jam_nahaeee:=FloatToStr((StrToFloat(bede_ya_talab_koli)*-1)+StrToFloat(jam_kol_kharid));

       frm_print_factor_bedeh_talab2.QRL_gabl_natije.Caption:='»œÂò«— ';

      frm_print_factor_bedeh_talab2.QRL_kol.Caption:=FloatToStr(StrToFloat(bede_ya_talab_koli)*-1);

     end;


    if (StrToFloat(bede_ya_talab_koli)> 0) then
    begin
        //talabkar
        frm_print_factor_bedeh_talab2.QRL_kol.Caption:=bede_ya_talab_koli;
        
       frm_print_factor_bedeh_talab2.QRL_gabl_natije.Caption:='ÿ·»ò«— ';

        if  StrToFloat(jam_kol_kharid) > StrToFloat(bede_ya_talab_koli) then
        begin

          jam_nahaeee:=FloatToStr(StrToFloat(jam_kol_kharid)-StrToFloat(bede_ya_talab_koli));

          frm_print_factor_bedeh_talab.QRL_natije_nahaei.Caption:=jam_nahaeee+'     '+'»œÂò«— ';
        end;

       if  StrToFloat(jam_kol_kharid) < StrToFloat(bede_ya_talab_koli) then
       begin
         jam_nahaeee:=FloatToStr(StrToFloat(bede_ya_talab_koli)-StrToFloat(jam_kol_kharid));
       end;
       if  StrToFloat(jam_kol_kharid) = StrToFloat(bede_ya_talab_koli) then
       begin
         jam_nahaeee:='0';
       end;
    end;

      if (StrToFloat(bede_ya_talab_koli)= 0) then
       begin
       //bihesab
       jam_nahaeee:=jam_kol_kharid;
       end;
      sleep(1000);
          frm_print_factor_bedeh_talab2.QuickRep1.Preview;
  end;
end;
///////////////////////////////////////////////////////////////////////////////////////////////////
procedure Tfrm_eslah_forosh.sabt_sh_kh;
begin
  if DataM_forosh.ADOQ_hame.RecordCount >0 then
 begin
  frm_nahve_pardakht_kharidar.l_type.Caption:='»—«Ì Œ—Ìœ ‘„«—Â '+DataM_forosh.ADOQ_hamesh_kh.AsString+
  ' '+DataMo_shakhs.ADOQ_kharidarname.AsString+' '+DataMo_shakhs.ADOQ_kharidarfamily.AsString+
  ' œ—  «—ÌŒ '+E_tarikh.Text;

   frm_nahve_pardakht_kharidar.L_bedeh.Caption:=' „»·€ ò· ‰«Œ«·’ »—«Ì Œ—Ìœ ‘„«—Â '+DataM_forosh.ADOQ_hamesh_kh.AsString+'= '+DBText5.Caption;

   frm_nahve_pardakht_kharidar.L_cod_kharidar.Caption:=DataMo_shakhs.ADOQ_kharidarcod.AsString;
   frm_nahve_pardakht_kharidar.L_sh_kharid.Caption:=DataM_forosh.ADOQ_hamesh_kh.AsString;
   frm_nahve_pardakht_kharidar.L_tarikh.Caption:=E_tarikh.Text;
   frm_nahve_pardakht_kharidar.L_nakhales_sh_kh.Caption:=DBText5.Caption;

   frm_nahve_pardakht_kharidar.L_nakhales_temp.Caption:=DBText5.Caption;
   frm_nahve_pardakht_kharidar.l_type_kh.Caption:='sh_kh';

   if not (frm_nahve_pardakht_kharidar.exist_pardakht_for_sh_kharid) then
   begin
      if   not (frm_nahve_pardakht_kharidar.exist_pardakht_for_kol_kharid) then
        frm_nahve_pardakht_kharidar.ShowModal
      else
        MessageBox(Handle,'»—«Ì Œ—ÌœÂ«Ì  «—ÌŒ «‰ Œ«» ‘œÂ ° Å—œ«Œ  »Â ’Ê—  ò·Ì À»  ê—œÌœÂ «” .','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
    end
   else
     MessageBox(Handle,' ‰ÕÊÂ Å—œ«Œ  »—Ì ‘„«—Â Œ—Ìœ «‰ Œ«»Ì ° ﬁ»·¬ À»  ‘œÂ «” .','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
  end
  else
    MessageBox(Handle,'Œ—ÌœÌ ÃÂ  À»  ‰ÕÊÂ Å—œ«Œ  ° ÊÃÊœ ‰œ«—œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;

procedure Tfrm_eslah_forosh.sabt_kol;
begin
  if DataM_forosh.ADOQ_hame.RecordCount >0 then
 begin
    frm_nahve_pardakht_kharidar.L_cod_kharidar.Caption:=DataMo_shakhs.ADOQ_kharidarcod.AsString;

  DataM_final.ADOQ_jam_bedeh_kharidar.SQL.Text:='select sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as jam_nakhales_kol '+
  ' from t_forosh where name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarname.AsString)+
  ' and family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarfamily.AsString)+
  ' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_jam_bedeh_kharidar.Open;
   sleep(2000);
   
   frm_nahve_pardakht_kharidar.L_nakhales_kol_kh.Caption:=DataM_final.ADOQ_jam_bedeh_kharidarjam_nakhales_kol.AsString;
   frm_nahve_pardakht_kharidar.L_nakhales_kol.Caption:=DataM_final.ADOQ_jam_bedeh_kharidarjam_nakhales_kol.AsString;

   frm_nahve_pardakht_kharidar.L_bedeh.Caption:=' „»·€ ò· ‰«Œ«·’ »—«Ì Â„Â Œ—ÌœÂ«'+
      ' = '+DataM_final.ADOQ_jam_bedeh_kharidarjam_nakhales_kol.AsString;

   frm_nahve_pardakht_kharidar.L_nakhales_temp.Caption:=DataM_final.ADOQ_jam_bedeh_kharidarjam_nakhales_kol.AsString;
   frm_nahve_pardakht_kharidar.L_bedeh.Caption:=' „»·€ ò· ‰«Œ«·’ »—«Ì Â„Â Œ—ÌœÂ«'+
      ' = '+DataM_final.ADOQ_jam_bedeh_kharidarjam_nakhales_kol.AsString;

  frm_nahve_pardakht_kharidar.l_type.Caption:=' »—«Ì Â„Â Œ—ÌœÂ«Ì '+
  ' '+DataMo_shakhs.ADOQ_kharidarname.AsString+' '+DataMo_shakhs.ADOQ_kharidarfamily.AsString+
  ' œ—  «—ÌŒ '+E_tarikh.Text;

   frm_nahve_pardakht_kharidar.L_tarikh.Caption:=E_tarikh.Text;
   frm_nahve_pardakht_kharidar.l_type_kh.Caption:='kol_kh';    



     if not frm_nahve_pardakht_kharidar.exist_pardakht_for_sh_kharid then
     begin
        if (not frm_nahve_pardakht_kharidar.exist_pardakht_for_kol_kharid) then
        begin
          if (not frm_nahve_pardakht_kharidar.exist_sh_kh_for_tarikh) then
            frm_nahve_pardakht_kharidar.ShowModal
          else
            MessageBox(Handle,'»Â ⁄·  Å—œ«Œ  À»  ‘œÂ »—«Ì Ìò ‘„«—Â Œ—Ìœ œ—  «—ÌŒ «‰ Œ«» ‘œÂ ° À»  Å—œ«Œ  »—«Ì Â„Â Œ—ÌœÂ« „„ò‰ ‰Ì” .','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
        end
        else
          begin
            MessageBox(Handle,'»—«Ì Œ—ÌœÂ«Ì  «—ÌŒ «‰ Œ«» ‘œÂ ° Å—œ«Œ  »Â ’Ê—  ò·Ì À»  ê—œÌœÂ «” .','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
          end;
     end
     else
      MessageBox(Handle,'»Â ⁄·  Å—œ«Œ  À»  ‘œÂ »—«Ì Ìò ‘„«—Â Œ—Ìœ œ—  «—ÌŒ «‰ Œ«» ‘œÂ ° À»  Å—œ«Œ  »—«Ì Â„Â Œ—ÌœÂ« „„ò‰ ‰Ì” .','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
     end
 else
    MessageBox(Handle,'Œ—ÌœÌ ÃÂ  À»  ‰ÕÊÂ Å—œ«Œ  ° ÊÃÊœ ‰œ«—œ.','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);

end;



procedure Tfrm_eslah_forosh.go_to_jozeiat(s:string);
var cod,tarikh:string;
begin
if s<>'hame' then
begin

  cod:=DataMo_shakhs.ADOQ_kharidarcod.AsString;
  tarikh:=trim(E_tarikh.Text);
      DataM_forosh.ADOQ_print_kh2.SQL.Text:='select  sum(keraye_az_kh_kol)as keraye_kh,sum(ojrat_az_kh_kol)as ojrat_kh from t_forosh'+
     ' where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod+' and sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString;
       DataM_forosh.ADOQ_print_kh2.Open;

    DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod+' and sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+' order by sh_kh,cod';

    DataM_forosh.ADOQ_vazn_goni.SQL.Text:='select sum(goni) as  goni_kol,sum(vazn) as vazn_kol from t_forosh'+
    ' where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod+' and sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString;

    DataM_forosh.ADOQ_vazn_bedon_keraye.SQL.Text:='select sum(vazn) as vazn_kol from t_forosh'+
    ' where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod+' and sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+ ' and keraye_az_kh>0';
      DataM_forosh.ADOQ_vazn_bedon_keraye.Open;

      DataM_forosh.ADOQ_vazn_bedon_ojrat.SQL.Text:='select sum(vazn) as vazn_kol from t_forosh'+
          ' where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod+' and sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+ ' and ojrat_az_kh >0';
      DataM_forosh.ADOQ_vazn_bedon_ojrat.Open;

      DataM_forosh.ADOQ_oj_for_factor_kh.SQL.Text:='select ojrat_az_kh  from t_forosh'+
      ' where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod+' and sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+ ' and ojrat_az_kh>0  ';
      DataM_forosh.ADOQ_oj_for_factor_kh.Open;

      DataM_forosh.ADOQ_ker_for_factor_kh.SQL.Text:='select keraye_az_kh  from t_forosh'+
      ' where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod+' and sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+ ' and  keraye_az_kh>0 ';
      DataM_forosh.ADOQ_ker_for_factor_kh.Open;

     DataM_forosh.ADOQ_print_kh2.SQL.Text:='select  sum(keraye_az_kh_kol)as keraye_kh,sum(ojrat_az_kh_kol)as ojrat_kh from t_forosh'+
     ' where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod+' and sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString;
      DataM_forosh.ADOQ_print_kh2.Open;

    DataM_forosh.ADOQ_print_kh.SQL.Text:='select  sum(mount_kh) as kh_mount,round(sum(mount_kh)/sum(vazn),0) as miangin from t_forosh'+
    ' where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod+' and sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString;


       
     FRM_PRINT_BARAYE_KHARIDAR.QRL_type.Caption:='Œ—Ìœ ‘„«—Â  '+DataM_forosh.ADOQ_hamesh_kh.AsString+' œ—  «—ÌŒ '+tarikh;
  DataM_forosh.ADOQ_forosh.Open;
  DataM_forosh.ADOQ_vazn_goni.Open;
  DataM_forosh.ADOQ_print_kh.Open;
end
else
begin
  cod:=DataMo_shakhs.ADOQ_kharidarcod.AsString;
  tarikh:=trim(E_tarikh.Text);
    DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod+' order by sh_kh,cod';

      DataM_forosh.ADOQ_print_kh2.SQL.Text:='select  sum(keraye_az_kh_kol)as keraye_kh,sum(ojrat_az_kh_kol)as ojrat_kh from t_forosh'+
     ' where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod;
     DataM_forosh.ADOQ_print_kh2.Open;
     
    DataM_forosh.ADOQ_vazn_goni.SQL.Text:='select sum(goni) as  goni_kol,sum(vazn) as vazn_kol from t_forosh'+
    ' where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod;

    DataM_forosh.ADOQ_vazn_bedon_keraye.SQL.Text:='select sum(vazn) as vazn_kol from t_forosh'+
      '  where tarikh='+QuotedStr(tarikh)+' and cod_kh='+cod+ ' and keraye_az_kh>0';
      DataM_forosh.ADOQ_vazn_bedon_keraye.Open;

      DataM_forosh.ADOQ_vazn_bedon_ojrat.SQL.Text:='select sum(vazn) as vazn_kol from t_forosh'+
      '  where tarikh='+QuotedStr(tarikh)+' and cod_kh='+cod+ ' and ojrat_az_kh>0';
      DataM_forosh.ADOQ_vazn_bedon_ojrat.Open;


      DataM_forosh.ADOQ_oj_for_factor_kh.SQL.Text:='select ojrat_az_kh  from t_forosh'+
     '  where tarikh='+QuotedStr(tarikh)+' and cod_kh='+cod+ ' and ojrat_az_kh>0 ';
      DataM_forosh.ADOQ_oj_for_factor_kh.Open;

      DataM_forosh.ADOQ_ker_for_factor_kh.SQL.Text:='select keraye_az_kh  from t_forosh'+
     '  where tarikh='+QuotedStr(tarikh)+' and cod_kh='+cod+ ' and  keraye_az_kh>0 ';
      DataM_forosh.ADOQ_ker_for_factor_kh.Open;




    DataM_forosh.ADOQ_print_kh2.SQL.Text:='select  sum(keraye_az_kh_kol)as keraye_kh,sum(ojrat_az_kh_kol)as ojrat_kh from t_forosh'+
     ' where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod;
     DataM_forosh.ADOQ_print_kh2.Open;
     
    DataM_forosh.ADOQ_print_kh.SQL.Text:='select  sum(mount_kh) as kh_mount,round(sum(mount_kh)/sum(vazn),0) as miangin from t_forosh'+
    ' where tarikh='+QuotedStr(tarikh)+'  and cod_kh='+cod;

     FRM_PRINT_BARAYE_KHARIDAR.QRL_type.Caption:='Â„Â Œ—ÌœÂ«Ì  '+' œ—  «—ÌŒ '+tarikh;
  DataM_forosh.ADOQ_forosh.Open;
  DataM_forosh.ADOQ_vazn_goni.Open;
  DataM_forosh.ADOQ_print_kh.Open;
end;
FRM_PRINT_BARAYE_KHARIDAR.QuickRep1.Preview;
end;




procedure Tfrm_eslah_forosh.jozeiat_kharidha;
var st:string;
begin
   if DataM_forosh.ADOQ_hame.RecordCount > 0 then
   begin

     st:=' select sum(mande)as mande_kol,sum(daryaft_nagd)as nagd_kol,sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
    ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol,sum(geymat_kol-ojrat_az_kh-keraye_az_kh) as kh_mount,sum(keraye_az_kh)as keraye_kh,sum(ojrat_az_kh)as ojrat_kh'+
    ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol)as nakhales_kol'+
    ' from t_forosh where sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+
    ' and name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);

    DataM_forosh.ADOQuery_jam_forosh.SQL.Text:=st;
    DataM_forosh.ADOQuery_jam_forosh.Open;

    DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+
    ' and name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);
     DataM_forosh.ADOQ_forosh.Open;

     DataM_forosh.ADOQ_print_kh2.SQL.Text:='select  sum(keraye_az_kh_kol)as keraye_kh,sum(ojrat_az_kh_kol)as ojrat_kh from t_forosh'+
     ' where sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+
    ' and name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);
     DataM_forosh.ADOQ_print_kh2.Open;
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

    DataM_forosh.ADOQ_print_kh2.SQL.Text:='select  sum(keraye_az_kh_kol)as keraye_kh,sum(ojrat_az_kh_kol)as ojrat_kh from t_forosh'+
     ' where sh_kh<0';
    DataM_forosh.ADOQ_print_kh2.Open;
  end;

end;
procedure Tfrm_eslah_forosh.show_kharidha;
begin
if DataMo_shakhs.ADOQ_kharidar.RecordCount>0 then
begin
  DataM_forosh.ADOQ_hame.SQL.Text:='select sh_kh,tarikh,name_kh,family_kh from t_forosh where cod_kh='+DataMo_shakhs.ADOQ_kharidarcod.AsString+
  ' and tarikh='+QuotedStr(E_tarikh.Text)+' group by tarikh,sh_kh,name_kh,family_kh';
  DataM_forosh.ADOQ_hame.Open;
end;  
end;

procedure Tfrm_eslah_forosh.EdChange(Sender: TObject);
begin
 DataMo_shakhs.ADOQ_kharidar.Locate('family',Ed.Text,[loPartialKey]);
 jozeiat_kharidha;
end;

procedure Tfrm_eslah_forosh.Edit2Change(Sender: TObject);
var s:string;
begin
  if Edit2.Text='' then
    s:='0'
  else
    s:=Edit2.Text;
  DataMo_shakhs.ADOQ_kharidar.Locate('cod',s,[loPartialKey]);
  jozeiat_kharidha;

end;

procedure Tfrm_eslah_forosh.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_eslah_forosh.RadioGroup11Click(Sender: TObject);
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

procedure Tfrm_eslah_forosh.FormShow(Sender: TObject);
begin
  DataMo_shakhs.show_kharidar;
  E_tarikh.Text:=frm_main.E_tarikh.Text;
  show_kharidha;
  jozeiat_kharidha;
  //frm_eslah_forosh.WindowState:=wsMaximized;
end;

procedure Tfrm_eslah_forosh.E_tarikhChange(Sender: TObject);
begin
  show_kharidha;
  jozeiat_kharidha;
end;

procedure Tfrm_eslah_forosh.Button3Click(Sender: TObject);
begin
 if DataM_forosh.ADOQ_hame.RecordCount>0 then
 begin
  if CheckBox1.Checked then
    go_to_jozeiat('hame')
  else
  begin
    go_to_jozeiat('nothame');

    if MessageBox(Handle,pchar(' ›«ò Ê— »œÂÌ/ÿ·» Â«Ì ﬁ»·Ì œ— ’Ê—  ÊÃÊœ ° »—«Ì Œ—Ìœ«— ’«œ— ê—œœ ø'),' ÊÃÂ !' ,MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING)=id_yes then
    begin
      factor_bedeh_talab;
    end;
  end;

 end;
end;

procedure Tfrm_eslah_forosh.Button1Click(Sender: TObject);
begin
  show_kharidha;
  jozeiat_kharidha;
end;

procedure Tfrm_eslah_forosh.CheckBox1Click(Sender: TObject);
var st:string;
begin
if CheckBox1.Checked then
begin
    st:=' select sum(mande)as mande_kol,sum(daryaft_nagd)as nagd_kol,sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
    ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol,sum(geymat_kol-ojrat_az_kh-keraye_az_kh) as kh_mount,sum(keraye_az_kh)as keraye_kh,sum(ojrat_az_kh)as ojrat_kh'+
    ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol)as nakhales_kol'+
    ' from t_forosh where name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);

    DataM_forosh.ADOQuery_jam_forosh.SQL.Text:=st;
    DataM_forosh.ADOQuery_jam_forosh.Open;

    DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where  name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);
     DataM_forosh.ADOQ_forosh.Open;
end
else
  jozeiat_kharidha;
end;

procedure Tfrm_eslah_forosh.Button5Click(Sender: TObject);
begin
frm_add_kharidha.show_calculator;
end;

procedure Tfrm_eslah_forosh.Button2Click(Sender: TObject);
begin
  if CheckBox1.Checked then
    CheckBox1.Checked:=false;
  frm_nahve_pardakht_kharidar.L_nakhales_kol.Caption:=DBText5.Caption;
  sabt_sh_kh;
end;

procedure Tfrm_eslah_forosh.Button4Click(Sender: TObject);
begin
 sabt_kol;
end;

procedure Tfrm_eslah_forosh.Button6Click(Sender: TObject);
begin
   frm_nahve_pardakht_kharidar.L_cod_kharidar.Caption:=DataMo_shakhs.ADOQ_kharidarcod.AsString;
   frm_nahve_pardakht_kharidar.L_sh_kharid.Caption:=DataM_forosh.ADOQ_hamesh_kh.AsString;
   frm_nahve_pardakht_kharidar.L_tarikh.Caption:=E_tarikh.Text;
 if frm_nahve_pardakht_kharidar.exist_pardakht_for_sh_kharid then
 begin
  frm_nahve_pardakht_kharidar.print_sh_kharid(E_tarikh.Text,DataM_forosh.ADOQ_hamesh_kh.AsString,DataMo_shakhs.ADOQ_kharidarcod.AsString);
    Sleep(200);
    if DataM_final.ADOQ_t_checkha_sh_kharid.RecordCount>0 then
      Frm_print_nahve_pardakht.QuickRep1.Preview
    else
      Frm_print_nahve_pardakht_bedon_check.QuickRep1.Preview;
 end
 else
  MessageBox(Handle,'œ—  «—ÌŒ «‰ Œ«» ‘œÂ ° »—«Ì ‘„«—Â Œ—Ìœ «‰ Œ«»Ì Å—œ«Œ Ì À»  ‰‘œÂ «” .','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;


procedure Tfrm_eslah_forosh.Button7Click(Sender: TObject);
begin
   frm_nahve_pardakht_kharidar.L_cod_kharidar.Caption:=DataMo_shakhs.ADOQ_kharidarcod.AsString;
   frm_nahve_pardakht_kharidar.L_tarikh.Caption:=E_tarikh.Text;
  if frm_nahve_pardakht_kharidar.exist_pardakht_for_kol_kharid then
  begin

   frm_nahve_pardakht_kharidar.print_kol_kharid(E_tarikh.Text,DataMo_shakhs.ADOQ_kharidarcod.AsString);
     DataM_final.ADOQ_jam_bedeh_kharidar.SQL.Text:='select sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as jam_nakhales_kol '+
  ' from t_forosh where name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarname.AsString)+
  ' and family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarfamily.AsString)+
  ' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_jam_bedeh_kharidar.Open;
   Sleep(200);
   if DataM_final.ADOQ_t_checkha_kol_kharid.RecordCount >0 then
     frm_print_nahve_pardakht_kol.QuickRep1.Preview
   else
     frm_print_nahve_pardakht_kol_bedon_check.QuickRep1.Preview;
  end
  else
    MessageBox(Handle,'œ—  «—ÌŒ «‰ Œ«» ‘œÂ ° Å—œ«Œ  ò·Ì ° À»  ‰‘œÂ «” .','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;

procedure Tfrm_eslah_forosh.Button8Click(Sender: TObject);
begin
  DataM_final.ADOQ_index_sh_kh.SQL.Text:='select * from T_index_sh_kharid where tarikh='+QuotedStr(E_tarikh.Text)+
  ' and cod_sh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and sh_kh='+QuotedStr(DataM_forosh.ADOQ_hamesh_kh.AsString);
  DataM_final.ADOQ_index_sh_kh.Open;
  sleep(1000); 

  if DataM_final.ADOQ_index_sh_kh.RecordCount>0 then
  begin
     frm_eslah_nahve_pardakht.show_checkhaye_sh_kh;
     frm_eslah_nahve_pardakht.show_nagd_sh_kh;
     frm_eslah_nahve_pardakht.sum_nagd_check_kh;

     if CheckBox1.Checked then
        CheckBox1.Checked:=false;

      frm_eslah_nahve_pardakht.L_sh_kharid_eslah.Caption:=DataM_forosh.ADOQ_hamesh_kh.AsString;

      frm_eslah_nahve_pardakht.L_id_sh_kh.Caption:=DataM_final.ADOQ_index_sh_khid.AsString;

      frm_eslah_nahve_pardakht.L_tarikh.Caption:=E_tarikh.Text;

      frm_eslah_nahve_pardakht.L_nakhales_sh_kh.Caption:=DBText5.Caption;

      frm_eslah_nahve_pardakht.l_type_kh.Caption:='sh_kh';

      frm_eslah_nahve_pardakht.l_type.Caption:='«’·«Õ »—«Ì Œ—Ìœ ‘„«—Â '+DataM_forosh.ADOQ_hamesh_kh.AsString+
      ' '+DataMo_shakhs.ADOQ_kharidarname.AsString+' '+DataMo_shakhs.ADOQ_kharidarfamily.AsString+
      ' œ—  «—ÌŒ '+E_tarikh.Text;

      frm_eslah_nahve_pardakht.L_bedeh.Caption:=' „»·€ ò· ‰«Œ«·’ »—«Ì Œ—Ìœ ‘„«—Â '+DataM_forosh.ADOQ_hamesh_kh.AsString+'= '+DBText5.Caption;

      frm_eslah_nahve_pardakht.ShowModal;
  end
  else
  MessageBox(Handle,'œ—  «—ÌŒ «‰ Œ«» ‘œÂ ° »—«Ì ‘„«—Â Œ—Ìœ «‰ Œ«»Ì Å—œ«Œ Ì À»  ‰‘œÂ «” .','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;


procedure Tfrm_eslah_forosh.Button9Click(Sender: TObject);
begin

  frm_eslah_nahve_pardakht.L_tarikh.Caption:=E_tarikh.Text;
  frm_eslah_nahve_pardakht.l_type_kh.Caption:='kol_kh';


   DataM_final.ADOQ_index_kol_kh.SQL.Text:='select * from T_index_kol_kharid where tarikh='+QuotedStr(E_tarikh.Text)+
   ' and cod_sh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString);
   DataM_final.ADOQ_index_kol_kh.Open;

 if DataM_final.ADOQ_index_kol_kh.RecordCount>0 then
  begin

  DataM_final.ADOQ_jam_bedeh_kharidar.SQL.Text:='select sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol) as jam_nakhales_kol '+
  ' from t_forosh where name_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarname.AsString)+
  ' and family_kh='+QuotedStr(DataMo_shakhs.ADOQ_kharidarfamily.AsString)+
  ' and tarikh='+QuotedStr(E_tarikh.Text);

   DataM_final.ADOQ_jam_bedeh_kharidar.Open;

   sleep(1000);  
      frm_eslah_nahve_pardakht.show_checkhaye_kol_kh;
      frm_eslah_nahve_pardakht.show_nagd_kol_kh;
      frm_eslah_nahve_pardakht.sum_nagd_check_kol;
      
    frm_eslah_nahve_pardakht.L_id_kol_kharid.Caption:=DataM_final.ADOQ_index_kol_khid.AsString;

      frm_eslah_nahve_pardakht.L_bedeh.Caption:=' „»·€ ò· ‰«Œ«·’ »—«Ì Â„Â Œ—ÌœÂ«'+
      ' = '+DataM_final.ADOQ_jam_bedeh_kharidarjam_nakhales_kol.AsString;   

      frm_eslah_nahve_pardakht.L_nakhales_kol_kh.Caption:=DataM_final.ADOQ_jam_bedeh_kharidarjam_nakhales_kol.AsString;


      frm_eslah_nahve_pardakht.l_type.Caption:='«’·«Õ »—«Ì Â„Â Œ—ÌœÂ«Ì '+
      ' '+DataMo_shakhs.ADOQ_kharidarname.AsString+' '+DataMo_shakhs.ADOQ_kharidarfamily.AsString+
      ' œ—  «—ÌŒ '+E_tarikh.Text;
      if frm_eslah_nahve_pardakht.l_type_kh.Caption='sh_kh' then
      begin
        frm_eslah_nahve_pardakht.sum_nagd_check_kh;
      end;

      if frm_eslah_nahve_pardakht.l_type_kh.Caption='kol_kh' then
      begin
        frm_eslah_nahve_pardakht.sum_nagd_check_kol;
      end;
      frm_eslah_nahve_pardakht.ShowModal;
  end
  else
    MessageBox(Handle,'œ—  «—ÌŒ «‰ Œ«» ‘œÂ ° Å—œ«Œ  ò·Ì ° À»  ‰‘œÂ «” .','Œÿ« !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
end;

end.
