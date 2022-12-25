unit unt__forosh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, SUIForm, DB, DBCtrls;

type
  TFrm_forosh = class(TForm)
    suiForm1: TsuiForm;
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    E_search: TEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    L_moshakhasat: TLabel;
    Button3: TButton;
    DataSource2: TDataSource;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit; procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure from_temp_to_forosh;
    procedure Button2Click(Sender: TObject);
    procedure forosh;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure E_searchChange(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure factor_bedeh_talab;

    private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_forosh: TFrm_forosh;

implementation

uses unt_DataMo_shakhs, unt_DataMod_kharid, Taghvim, unt_main,
  unt_DataM_forosh, unt_sel_kharid, unt_add_kharidha,
  unt_print_resid_forosh, UNT_PRINT_BARAYE_KHARIDAR, unt_print_fo,
  unt_DataM_final, unt_print_factor_bedeh_talab;

{$R *.dfm}
procedure TFrm_forosh.factor_bedeh_talab;
var jam_kol_kharid,bede_ya_talab_koli,jam_nahaeee:string;
begin

   DataM_final.adoq_T_temp_factor_bedeh_talab.SQL.Text:='delete from T_temp_factor_bedeh_talab';
   DataM_final.adoq_T_temp_factor_bedeh_talab.ExecSQL;

  DataM_final.ADOQ_T_bedeh_talab_sh_kharid.SQL.Text:='select * from T_bedeh_talab_sh_kharid where cod_sh='+
  QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and (bedeh>0 or talab>0)';

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
  QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+' and (bedeh>0 or talab>0)';

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
    ' from T_temp_factor_bedeh_talab';
     DataM_final.ADOQ_sum_temp_factor_bedeh_talab.Open;

    jam_kol_kharid:=DataM_forosh.ADOQ_print_khkh_mount.AsString;

    bede_ya_talab_koli:=DataM_final.ADOQ_sum_temp_factor_bedeh_talabkol.AsString;


    if (StrToFloat(bede_ya_talab_koli)<0) then
    begin
        //bedehkar
       jam_nahaeee:=FloatToStr((StrToFloat(bede_ya_talab_koli)*-1)+StrToFloat(jam_kol_kharid));
       frm_print_factor_bedeh_talab.QRL_gabl_natije.Caption:='»œÂò«— ';

      frm_print_factor_bedeh_talab.QRL_natije_nahaei.Caption:=jam_nahaeee+'     '+'»œÂò«— ';

      frm_print_factor_bedeh_talab.QRL_kol.Caption:=FloatToStr(StrToFloat(bede_ya_talab_koli)*-1);

     end;


    if (StrToFloat(bede_ya_talab_koli)> 0) then
    begin
        //talabkar
        frm_print_factor_bedeh_talab.QRL_kol.Caption:=bede_ya_talab_koli;
        
       frm_print_factor_bedeh_talab.QRL_gabl_natije.Caption:='ÿ·»ò«— ';

        if  StrToFloat(jam_kol_kharid) > StrToFloat(bede_ya_talab_koli) then
        begin

          jam_nahaeee:=FloatToStr(StrToFloat(jam_kol_kharid)-StrToFloat(bede_ya_talab_koli));

          frm_print_factor_bedeh_talab.QRL_natije_nahaei.Caption:=jam_nahaeee+'     '+'»œÂò«— ';
      end;

       if  StrToFloat(jam_kol_kharid) < StrToFloat(bede_ya_talab_koli) then
       begin
         jam_nahaeee:=FloatToStr(StrToFloat(bede_ya_talab_koli)-StrToFloat(jam_kol_kharid));
         frm_print_factor_bedeh_talab.QRL_natije_nahaei.Caption:=jam_nahaeee+'     '+'ÿ·»ò«— ';
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
       frm_print_factor_bedeh_talab.QRL_natije_nahaei.Caption:=jam_nahaeee+'     '+'»œÂò«— ';
       end;

    frm_print_factor_bedeh_talab.QuickRep1.Preview;
  end;

end;
procedure TFrm_forosh.forosh;
var name_kh,family_kh,cod_kh,id:string;
begin

  if DataM_forosh.ADO_temp.RecordCount<=0 then
    MessageBox(Handle,pchar('Œ—ÌœÌ »—«Ì ¬ﬁ« / Œ«‰„ << '+name_kh+'---' +family_kh+' >> Ê«—œ ‰‘œÂ «” .'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
  else
  begin
    if frm_add_kharidha.E_ojrat.Text='' then
    begin
      MessageBox(Handle,pchar('„»·€ «Ã—  »—«Ì œ—Ì«›  «“ Œ—Ìœ«— Ê«—œ ‰‘œÂ «” .'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      frm_add_kharidha.ShowModal;
    end
    else
    begin
      from_temp_to_forosh;
      cod_kh:=DataMo_shakhs.ADOQ_kharidar.Fields[3].AsString;
      id:=DataMo_shakhs.ADOQ_kharidar.Fields[6].AsString;
      name_kh:=DataMo_shakhs.ADOQ_kharidar.Fields[0].AsString;
      family_kh:=DataMo_shakhs.ADOQ_kharidar.Fields[1].AsString;
      
      DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where sh_kh='+id+'  and cod_kh='+cod_kh;
      DataM_forosh.ADOQ_forosh.Open;

      DataM_forosh.ADOQ_vazn_goni.SQL.Text:='select sum(goni) as  goni_kol,sum(vazn) as vazn_kol from t_forosh'+
      '  where sh_kh='+id+' and cod_kh='+cod_kh;
      DataM_forosh.ADOQ_vazn_goni.Open;

      DataM_forosh.ADOQ_vazn_bedon_keraye.SQL.Text:='select sum(vazn) as vazn_kol from t_forosh'+
      '  where sh_kh='+id+' and cod_kh='+cod_kh+ ' and keraye_az_kh>0';
      DataM_forosh.ADOQ_vazn_bedon_keraye.Open;

      DataM_forosh.ADOQ_vazn_bedon_ojrat.SQL.Text:='select sum(vazn) as vazn_kol from t_forosh'+
      '  where sh_kh='+id+' and cod_kh='+cod_kh+ ' and ojrat_az_kh>0';
      DataM_forosh.ADOQ_vazn_bedon_ojrat.Open;

      DataM_forosh.ADOQ_oj_for_factor_kh.SQL.Text:='select ojrat_az_kh from t_forosh'+
      '  where sh_kh='+id+' and cod_kh='+cod_kh+ ' and  ojrat_az_kh>0' ;
      DataM_forosh.ADOQ_oj_for_factor_kh.Open;

      DataM_forosh.ADOQ_ker_for_factor_kh.SQL.Text:='select keraye_az_kh  from t_forosh'+
      '  where sh_kh='+id+' and cod_kh='+cod_kh+ ' and  keraye_az_kh>0 ';
      DataM_forosh.ADOQ_ker_for_factor_kh.Open;

      DataM_forosh.ADOQ_print_kh.SQL.Text:='select  sum(mount_kh) as kh_mount,round(sum(mount_kh)/sum(vazn),0) as miangin from t_forosh'+      
     '   where sh_kh='+id+' and cod_kh='+cod_kh;
     DataM_forosh.ADOQ_print_kh.Open;

     DataM_forosh.ADOQ_print_kh2.SQL.Text:='select  sum(keraye_az_kh_kol)as keraye_kh,sum(ojrat_az_kh_kol)as ojrat_kh from t_forosh'+
     '   where sh_kh='+id+' and cod_kh='+cod_kh;
     DataM_forosh.ADOQ_print_kh2.Open;
     
      MessageBox(Handle,pchar('Œ—ÌœÂ« »—«Ì ¬ﬁ« / Œ«‰„ << '+DataMo_shakhs.ADOQ_kharidar.Fields[0].AsString+'---' +DataMo_shakhs.ADOQ_kharidar.Fields[1].AsString+' >> À»  ê—œÌœ.'),' ÊÃÂ !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      FRM_PRINT_BARAYE_KHARIDAR.QRL_type.Caption:=frm_main.E_tarikh.Text;
      if MessageBox(Handle,pchar('›«ò Ê— »—«Ì Œ—Ìœ«— ’«œ— ê—œœ ø'),' ÊÃÂ !' ,MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING)=id_yes then
      begin
        FRM_PRINT_BARAYE_KHARIDAR.QuickRep1.Preview;
      end;
      frm_add_kharidha.delete_all;


      if MessageBox(Handle,pchar(' ›«ò Ê— »œÂÌ/ÿ·» Â«Ì ﬁ»·Ì œ— ’Ê—  ÊÃÊœ ° »—«Ì Œ—Ìœ«— ’«œ— ê—œœ ø'),' ÊÃÂ !' ,MB_YESNO or MB_ICONQUESTION or MB_RIGHT or MB_RTLREADING)=id_yes then
      begin
        factor_bedeh_talab;
      end;

      //DataMo_shakhs.show_kharidar;
    end;

  end;
end;

procedure TFrm_forosh.from_temp_to_forosh;
var id,name_kh,family_kh,time_:string;
begin
  name_kh:=DataMo_shakhs.ADOQ_kharidar.Fields[0].AsString;
  family_kh:=DataMo_shakhs.ADOQ_kharidar.Fields[1].AsString;

  DataMo_shakhs.ADOQ_kharidar.SQL.Text:='update t_kharidar set sh_kh=sh_kh+1 where name='+QuotedStr(name_kh)+' and family='+QuotedStr(family_kh);
  DataMo_shakhs.ADOQ_kharidar.ExecSQL;

  DataMo_shakhs.ADOQ_kharidar.SQL.Text:='select * from t_kharidar where name='+QuotedStr(name_kh)+' and family='+QuotedStr(family_kh);
  DataMo_shakhs.ADOQ_kharidar.Open;

  time_:=frm_main.LMDClock1.Digital.Caption;

  DataM_final.ADOQ_timr_of_forosh.SQL.Text:='insert into t_time_of_forosh values('+

  QuotedStr(DataMo_shakhs.ADOQ_kharidarcod.AsString)+','+
  QuotedStr(DataMo_shakhs.ADOQ_kharidar.Fields[6].AsString)+','+
  QuotedStr(time_)+')'; 

  DataM_final.ADOQ_timr_of_forosh.ExecSQL;


  DataM_forosh.ADO_temp.SQL.Text:='update t_temp set sh_kh='+DataMo_shakhs.ADOQ_kharidar.Fields[6].AsString;
  DataM_forosh.ADO_temp.ExecSQL;

  DataM_forosh.ADOQ_forosh.SQL.Text:='insert into t_forosh select * from t_temp';
  DataM_forosh.ADOQ_forosh.ExecSQL;



end;


procedure tfrm_forosh.FormShow(Sender: TObject);
begin
  DataMo_shakhs.show_kharidar;
  frm_add_kharidha.show_temp;
  L_moshakhasat.Caption:=DataMo_shakhs.ADOQ_kharidar.Fields[0].AsString+'   ' +DataMo_shakhs.ADOQ_kharidar.Fields[1].AsString;
  frm_add_kharidha.E_ojrat.Text:='';
  frm_add_kharidha.E_keraye.Text:='';
end;




procedure TFrm_forosh.Button3Click(Sender: TObject);
begin
  frm_add_kharidha.L_name.Caption:='À»  Œ—ÌœÂ« »—«Ì ¬ﬁ« / Œ«‰„  '+Frm_forosh.L_moshakhasat.Caption;
  frm_add_kharidha.L_name_kh.Caption:=DataMo_shakhs.ADOQ_kharidarname.AsString;
  frm_add_kharidha.L_family_kh.Caption:=DataMo_shakhs.ADOQ_kharidarfamily.AsString;
  frm_add_kharidha.ShowModal;

end;

procedure TFrm_forosh.Button1Click(Sender: TObject);
begin
  forosh;
end;

procedure TFrm_forosh.Button2Click(Sender: TObject);
begin
 close;
end;

procedure TFrm_forosh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frm_add_kharidha.E_ojrat.Enabled:=true;
  frm_add_kharidha.E_keraye.Enabled:=true;
end;

procedure TFrm_forosh.Edit1Change(Sender: TObject);
var s:string;
begin
  if Edit1.Text='' then
    s:='0'
  else
    s:=Edit1.Text;
   DataMo_shakhs.ADOQ_kharidar.Locate('cod',s,[loPartialKey]);
end;

procedure TFrm_forosh.E_searchChange(Sender: TObject);
begin
   DataMo_shakhs.ADOQ_kharidar.Locate('family',E_search.Text,[loPartialKey]);
end;

procedure TFrm_forosh.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

end.
