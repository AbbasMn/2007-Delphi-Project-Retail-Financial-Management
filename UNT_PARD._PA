unit unt_pardakht_be_foroshande;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, dxCore, dxButtons, DBCtrls, Grids, DBGrids,
  ExtCtrls, SUIForm;

type
  Tfrm_pardakht_be_foroshande = class(TForm)
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
    DBText4: TDBText;
    Label8: TLabel;
    DBText6: TDBText;
    DataSource4: TDataSource;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Ed: TEdit;
    DBGrid3: TDBGrid;
    dxToolButton2: TdxToolButton;
    DataSource2: TDataSource;
    GroupBox_tarikh: TGroupBox;
    RadioGroup11: TRadioGroup;
    E_tarikh: TEdit;
    DataSource1: TDataSource;
    DataSource3: TDataSource;
    Label7: TLabel;
    DBText5: TDBText;
    Label9: TLabel;
    DBText7: TDBText;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label10: TLabel;
    Edit2: TEdit;
    RadioGroup1: TRadioGroup;
    G_hame: TGroupBox;
    DBGrid4: TDBGrid;
    DataSource5: TDataSource;
    Button4: TButton;
    Label6: TLabel;
    DBText8: TDBText;
    Button5: TButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    Label15: TLabel;
    DBText13: TDBText;
    DataSource6: TDataSource;
    Button6: TButton;
    Button7: TButton;
    procedure FormShow(Sender: TObject);
    procedure EdChange(Sender: TObject);
    procedure find;
    procedure E_tarikhChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure type_;
    procedure RadioGroup11Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure hame;
    procedure jozeiat_hame;
    procedure joziat_taki;
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure jadid;
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_pardakht_be_foroshande: Tfrm_pardakht_be_foroshande;

implementation

uses unt_DataMo_shakhs, unt_login, unt_main, Taghvim, unt_DataM_forosh,
  unt_sabt_pardakht, unt_print_fo, unt_sabt_pardakht_koli,
  unt_add_kharidha, unt_print_pardakht_be_foroshande_jam,
  unt_joziat_pardakht_Be_foroshande;

{$R *.dfm}
procedure Tfrm_pardakht_be_foroshande.jadid;
begin
  DataM_forosh.ADOQ_jam_forosh2.SQL.Text:='select sum(ojrat_az_kh_kol)as  o_az_kh_kol,'+
  'sum(keraye_az_kh_kol)as kre_bein_kol,sum(keraye_kol) as kre_daron_kol,sum(ojrat_kol) as ojrat_kol,' +
  'sum(ojrat_az_kh_kol+keraye_az_kh_kol+keraye_kol+ojrat_kol) as jam_kol from t_forosh'+
  ' where sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+
  ' and name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);

   DataM_forosh.ADOQ_jam_forosh2.Open;
end;

procedure Tfrm_pardakht_be_foroshande.joziat_taki;
var st:string;
begin
if DataM_forosh.ADOQ_hame.RecordCount >0 then
begin
      DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+
    ' and name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);
     DataM_forosh.ADOQ_forosh.Open;

     st:=' select sum(mande)as mande_kol,sum(daryaft_nagd)as nagd_kol,sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
  ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol,sum(geymat_kol-ojrat_az_kh-keraye_az_kh) as kh_mount'+
  ',sum(keraye_az_kh)as keraye_kh,sum(ojrat_az_kh)as ojrat_kh'+
  ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol)as nakhales_kol'+
  ' from t_forosh where cod='+DataM_forosh.ADOQ_foroshcod.AsString;
  //  ' and name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);
  DataM_forosh.ADOQuery_jam_forosh.SQL.Text:=st;
  DataM_forosh.ADOQuery_jam_forosh.Open;
end
else
  begin
       st:=' select sum(mande)as mande_kol,sum(daryaft_nagd)as nagd_kol,sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
  ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol,sum(geymat_kol-ojrat_az_kh-keraye_az_kh) as kh_mount'+
  ',sum(keraye_az_kh)as keraye_kh,sum(ojrat_az_kh)as ojrat_kh'+
  ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol)as nakhales_kol'+
  ' from t_forosh where sh_kh<0';
  DataM_forosh.ADOQuery_jam_forosh.SQL.Text:=st;
  DataM_forosh.ADOQuery_jam_forosh.Open;
    DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where sh_kh<0';
    DataM_forosh.ADOQ_forosh.Open;
  end;
end;
procedure Tfrm_pardakht_be_foroshande.jozeiat_hame;
var st:string;
begin
if DataM_forosh.ADOQ_hame.RecordCount >0 then
begin
      DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+
    ' and name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);
     DataM_forosh.ADOQ_forosh.Open;

     st:=' select sum(mande)as mande_kol,sum(daryaft_nagd)as nagd_kol,sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
  ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol,sum(geymat_kol-ojrat_az_kh-keraye_az_kh) as kh_mount'+
  ',sum(keraye_az_kh)as keraye_kh,sum(ojrat_az_kh)as ojrat_kh'+
  ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol)as nakhales_kol'+
  ' from t_forosh where sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+
    ' and name_kh='+QuotedStr(DataM_forosh.ADOQ_hamename_kh.AsString)+' and family_kh='+QuotedStr(DataM_forosh.ADOQ_hamefamily_kh.AsString)+' and tarikh='+QuotedStr(DataM_forosh.ADOQ_hametarikh.AsString);
  DataM_forosh.ADOQuery_jam_forosh.SQL.Text:=st;
  DataM_forosh.ADOQuery_jam_forosh.Open;
  jadid;
end
else
  begin
       st:=' select sum(mande)as mande_kol,sum(daryaft_nagd)as nagd_kol,sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
  ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol,sum(geymat_kol-ojrat_az_kh-keraye_az_kh) as kh_mount'+
  ',sum(keraye_az_kh)as keraye_kh,sum(ojrat_az_kh)as ojrat_kh'+
  ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol)as nakhales_kol'+
  ' from t_forosh where sh_kh<0';
  DataM_forosh.ADOQuery_jam_forosh.SQL.Text:=st;
  DataM_forosh.ADOQuery_jam_forosh.Open;
    DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where sh_kh<0';
    DataM_forosh.ADOQ_forosh.Open;


      DataM_forosh.ADOQ_jam_forosh2.SQL.Text:='select sum(ojrat_az_kh_kol)as  o_az_kh_kol,'+
  'sum(keraye_az_kh_kol)as kre_bein_kol,sum(keraye_kol) as kre_daron_kol,sum(ojrat_kol) as ojrat_kol,'+
  'sum(ojrat_az_kh_kol+keraye_az_kh_kol+keraye_kol+ojrat_kol) as jam_kol from t_forosh'+
  '  where sh_kh<0';
     DataM_forosh.ADOQ_jam_forosh2.Open;
  end;

   frm_print_pardakht_be_foroshande_jam.QRL_type.Caption:=' ÎÑíÏ ÔãÇÑå'+DataM_forosh.ADOQ_hamesh_kh.AsString+' ÔÎÕ '+DataMo_shakhs.ADOQ_kharidarname.AsString+' '+
   DataMo_shakhs.ADOQ_kharidarfamily.AsString+' ÏÑ ÊÇÑíÎ '+E_tarikh.Text;
end;
procedure Tfrm_pardakht_be_foroshande.hame;
begin
if DataMo_shakhs.ADOQ_kharidar.RecordCount>0 then
begin
  DataM_forosh.ADOQ_hame.SQL.Text:='select sh_kh,tarikh,name_kh,family_kh from t_forosh where cod_kh='+DataMo_shakhs.ADOQ_kharidarcod.AsString+
  ' and tarikh='+QuotedStr(E_tarikh.Text)+' group by tarikh,sh_kh,name_kh,family_kh';
  DataM_forosh.ADOQ_hame.Open;
end;
end;
procedure Tfrm_pardakht_be_foroshande.type_;
begin
if RadioGroup1.ItemIndex=1 then
begin
    hame;
   jozeiat_hame;

end
else
begin
     hame;
     jozeiat_hame;
end;

end;

procedure Tfrm_pardakht_be_foroshande.find;
var st:string;
begin
  DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where tarikh='+QuotedStr(E_tarikh.Text)+
  ' and cod_kh='+DataMo_shakhs.ADOQ_kharidarcod.AsString+' and sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString+' order by tarikh,sh_kh,cod';
   DataM_forosh.ADOQ_forosh.Open;
 if  DataM_forosh.ADOQ_forosh.RecordCount>0 then
 begin

  st:=' select sum(mande)as mande_kol,sum(daryaft_nagd)as nagd_kol,sum(geymat_kol) as g_kol,sum(ojrat_kol) as ojrat_kol'+
  ', sum(keraye_kol) as keraye_kol , sum(remain) as  remain_kol,sum(goni) as goni_kol,sum(vazn) as vazn_kol'+
  ',sum(geymat_kol-ojrat_az_kh-keraye_az_kh) as kh_mount,sum(keraye_az_kh)as keraye_kh,sum(ojrat_az_kh)as ojrat_kh'+
  ',sum(geymat_kol+ojrat_az_kh_kol+keraye_az_kh_kol)as nakhales_kol'+
  '  from t_forosh where tarikh='+QuotedStr(E_tarikh.Text)+
  ' and cod_kh='+DataMo_shakhs.ADOQ_kharidarcod.AsString+' and sh_kh='+DataM_forosh.ADOQ_hamesh_kh.AsString;
  DataM_forosh.ADOQuery_jam_forosh.SQL.Text:=st;
  DataM_forosh.ADOQuery_jam_forosh.Open;
 end;
end;

procedure Tfrm_pardakht_be_foroshande.FormShow(Sender: TObject);
begin
 // DataMo_shakhs.show_foroshande;
  DataMo_shakhs.show_kharidar;
  E_tarikh.Text:=frm_main.E_tarikh.Text;
  type_;
  frm_pardakht_be_foroshande.WindowState:=wsMaximized;
end;



procedure Tfrm_pardakht_be_foroshande.EdChange(Sender: TObject);
begin
  DataMo_shakhs.ADOQ_kharidar.Locate('family',Ed.Text,[loPartialKey]);
  type_;
end;



procedure Tfrm_pardakht_be_foroshande.E_tarikhChange(Sender: TObject);
begin
  type_;
end;

procedure Tfrm_pardakht_be_foroshande.Button1Click(Sender: TObject);
begin
 frm_sabt_pardakht.e_pardakht.Text:='';
 if DataM_forosh.ADOQ_forosh.RecordCount<=0 then
  MessageBox(Handle,'ÏÑ ÊÇÑíÎ ÇäÊÎÇÈ ÔÏå ÎÑíÏÇÑ ãæÑÏ äÙÑ ÎÑíÏí äÏÇÔÊå ÇÓÊ.','ÊæÌå !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
  if RadioGroup1.ItemIndex=1 then
   frm_sabt_pardakht_koli.ShowModal
  else
  begin
   frm_sabt_pardakht.L_type.Caption:='pardakht';
   frm_sabt_pardakht.ShowModal;
  end
 end;
end;

procedure Tfrm_pardakht_be_foroshande.Button2Click(Sender: TObject);
begin
if RadioGroup1.ItemIndex=1 then
  MessageBox(Handle,'ÏÑ ÑÏÇÎÊ Èå åãå ÝÑæÔäÏÇä æíÑÇíÔ Ñ˜æÑÏ ÕæÑÊ äãí íÑÏ.','ÊæÌå !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
else
begin
 if DataM_forosh.ADOQ_forosh.RecordCount<=0 then
  MessageBox(Handle,'ÏÑ ÊÇÑíÎ ÇäÊÎÇÈ ÔÏå ÎÑíÏÇÑ ãæÑÏ äÙÑ ÎÑíÏí äÏÇÔÊå ÇÓÊ.','ÊæÌå !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
   frm_sabt_pardakht.L_type.Caption:='update';
   frm_sabt_pardakht.e_pardakht.Text:=DataM_forosh.ADOQ_foroshdaryaft_nagd.AsString;
   frm_sabt_pardakht.ShowModal;
 end;
end;
end;

procedure Tfrm_pardakht_be_foroshande.Button3Click(Sender: TObject);
var s:string;
begin
 if DataM_forosh.ADOQ_forosh.RecordCount<=0 then
  MessageBox(Handle,'ÏÑ ÊÇÑíÎ ÇäÊÎÇÈ ÔÏå ÎÑíÏÇÑ ãæÑÏ äÙÑ ÎÑíÏí äÏÇÔÊå ÇÓÊ.','ÊæÌå !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING)
 else
 begin
    if RadioGroup1.ItemIndex=0 then
    begin
      s:=DataM_forosh.ADOQ_foroshcod.AsString;
      DataM_forosh.ADOQ_forosh.SQL.Text:='select * from t_forosh where cod='+s;
      DataM_forosh.ADOQ_forosh.Open;
      Frm_print_fo.QuickRep1.Preview;
      type_;
    end
    else
      Frm_print_fo.QuickRep1.Preview;
  end;
end;





procedure Tfrm_pardakht_be_foroshande.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_pardakht_be_foroshande.Edit2KeyPress(Sender: TObject;
  var Key: Char);
begin
   if not (key in['0'..'9',#8]) then
   key:=#0;
end;

procedure Tfrm_pardakht_be_foroshande.Edit1Change(Sender: TObject);
var s:string;
begin


end;

procedure Tfrm_pardakht_be_foroshande.Edit2Change(Sender: TObject);
var s:string;
begin
  if Edit2.Text='' then
    s:='0'
  else
    s:=Edit2.Text;
  DataMo_shakhs.ADOQ_kharidar.Locate('cod',s,[loPartialKey]);
  type_;
end;

procedure Tfrm_pardakht_be_foroshande.RadioGroup11Click(Sender: TObject);
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

procedure Tfrm_pardakht_be_foroshande.RadioGroup1Click(Sender: TObject);
begin
  type_;
end;

procedure Tfrm_pardakht_be_foroshande.Button4Click(Sender: TObject);
begin
 type_;
end;

procedure Tfrm_pardakht_be_foroshande.Button5Click(Sender: TObject);
begin
frm_add_kharidha.show_calculator;
end;

procedure Tfrm_pardakht_be_foroshande.Button6Click(Sender: TObject);
begin
     frm_print_pardakht_be_foroshande_jam.QuickRep1.Preview;
end;

procedure Tfrm_pardakht_be_foroshande.Button7Click(Sender: TObject);
begin
  Frm_joziat_pardakht_Be_foroshande.ShowModal;
end;

end.
