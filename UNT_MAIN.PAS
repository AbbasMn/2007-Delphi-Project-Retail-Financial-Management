unit unt_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, te_controls, te_extended, LMDCustomComponent,
  LMDWndProcComponent, lmdformA, LMDCustomFormFill, LMDFormFill,
  LMDFormShadow, SUIMgr, ExtCtrls, SUIForm, Menus, SUIMainMenu, ImgList,
  StdCtrls, te_dialogs, jpeg, ExtDlgs, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDLEDCustomLabel, LMDLEDLabel,
  LMDClock, LMDScrollText;

type
  Tfrm_main = class(TForm)
    suiForm1: TsuiForm;
    TeMenuBar1: TTeMenuBar;
    CustomItem1: TTeItem;
    CustomItem2: TTeItem;
    CustomItem3: TTeItem;
    CustomItem6: TTeItem;
    ImageList1: TImageList;
    CustomItem7: TTeItem;
    E_tarikh: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button3: TButton;
    Button7: TButton;
    Button8: TButton;
    TeDirectoryDialog1: TTeDirectoryDialog;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    CustomItem4: TTeItem;
    CustomItem8: TTeItem;
    CustomItem9: TTeItem;
    CustomItem10: TTeItem;
    CustomItem11: TTeItem;
    CustomItem12: TTeItem;
    CustomItem15: TTeItem;
    CustomItem16: TTeItem;
    CustomItem17: TTeItem;
    CustomItem18: TTeItem;
    LMDClock1: TLMDClock;
    Button_1: TButton;
    Button_12: TButton;
    Button9: TButton;
    Button14: TButton;
    Button15: TButton;
    CustomItem5: TTeItem;
    CustomItem13: TTeItem;
    CustomItem14: TTeItem;
    CustomItem19: TTeItem;
    CustomItem20: TTeItem;
    CustomItem21: TTeItem;
    CustomItem22: TTeItem;
    CustomItem23: TTeItem;
    CustomItem24: TTeItem;
    CustomItem25: TTeItem;
    CustomItem26: TTeItem;
    Button10: TButton;
    CustomItem27: TTeItem;
    Button11: TButton;
    CustomItem28: TTeItem;
    CustomItem30: TTeItem;
    Button12: TButton;
    Timer1: TTimer;
    L_roze_hafte: TLabel;
    L_tarikh: TLabel;
    CustomItem29: TTeItem;
    CustomItem31: TTeItem;
    procedure CustomItem6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button_12Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure back_up;
    procedure Button12Click(Sender: TObject);
    procedure Timer_backTimer(Sender: TObject);
    procedure pic;
    procedure Button13Click(Sender: TObject);
    procedure CustomItem7Click(Sender: TObject);
    procedure CustomItem12Click(Sender: TObject);
    procedure CustomItem9Click(Sender: TObject);
    procedure CustomItem10Click(Sender: TObject);
    procedure CustomItem4Click(Sender: TObject);
    procedure CustomItem5Click(Sender: TObject);
    procedure CustomItem16Click(Sender: TObject);
    procedure CustomItem11Click(Sender: TObject);
    procedure CustomItem17Click(Sender: TObject);
    procedure change_back;
    procedure CustomItem18Click(Sender: TObject);
    procedure Button_1Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure CustomItem13Click(Sender: TObject);
    procedure CustomItem14Click(Sender: TObject);
    procedure CustomItem19Click(Sender: TObject);
    procedure CustomItem20Click(Sender: TObject);
    procedure CustomItem21Click(Sender: TObject);
    procedure CustomItem22Click(Sender: TObject);
    procedure CustomItem23Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure CustomItem24Click(Sender: TObject);
    procedure CustomItem25Click(Sender: TObject);
    procedure CustomItem26Click(Sender: TObject);
    procedure CustomItem27Click(Sender: TObject);
    procedure CustomItem28Click(Sender: TObject);
    procedure CustomItem30Click(Sender: TObject);
    function format_for_naming_backup_file:string;
    procedure autobackup;
    procedure Timer1Timer(Sender: TObject);
    procedure CustomItem29Click(Sender: TObject);
    procedure CustomItem31Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;

implementation

uses unt_sh_jadid, unt_kharid, unt_search, Taghvim, unt__forosh,
  unt_search_forosh, unt_view_shakhs, unt_koli_kharidar,
  unt_koli_foroshande, unt_add_sal_fi, unt_add_sal_noe_fi, unt_login,
  unt_chang_public_login, unt_hasanpor, unt_hasanpor_login,
  unt_DataMo_shakhs, DB, UNT_PRINT_BARAYE_KHARIDAR,
  unt_pardakht_be_foroshande, unt_add_ranande, unt_search_for_ranande,
  unt_eslah_forosh, unt_eslah_asli, unt_dabare, Unt_add_bank,
  unt_search_bank, unt_frm_eslah_bank, unt_search_ranande_daron,
  Unt_search_intarikh, unt_gozaresh, unt_koli_login, unt_bank_jadid;

{$R *.dfm}
procedure Tfrm_main.autobackup;
var path,s,nn,time_:string;
begin
  time_:=LMDClock1.Digital.Caption;

  time_[3]:='-';
  time_[6]:='-';

 DataMo_shakhs.ADOQ_login.SQL.Text:='select * from  t_login';
 DataMo_shakhs.ADOQ_login.Open;
 if DataMo_shakhs.ADOQ_loginback.AsString='' then
 begin
  if TeDirectoryDialog1.Execute then
    s:=TeDirectoryDialog1.Directory;
    if StrLen(pchar(s))>=255 then
    begin
      MessageBox(Handle,pchar('??? ???? ??????? << '+s +' >> ????? ?? 255 ??????? ?? ???? ? ???? ????? ?? ?????? ??????.'),'??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      s:='no';
    end;
      DataMo_shakhs.ADOQ_login.SQL.Text:='update t_login set back='+QuotedStr(s);
      DataMo_shakhs.ADOQ_login.ExecSQL;
 end
  else
    s:=DataMo_shakhs.ADOQ_loginback.AsString;
    
  if s<> 'no' then
  begin
    Path:=ExtractFilePath(Application.ExeName);
    
    Path:=Path+'anjir.mdb';

    nn:=format_for_naming_backup_file;

    CreateDirectory(pchar('\\?\'+s+'\'+nn),0);
    
    nn:=nn+'\'+' ???? '+time_;

    CreateDirectory(pchar('\\?\'+s+'\'+nn),0);
    
    s:=s+'\'+nn+'\anjir.mdb';

    CopyFile(PChar(Path),PChar(s),LongBool(0));
  end;
 end;
//////////////////////////////////////////////
function Tfrm_main.format_for_naming_backup_file:string;
var tarikh,time_:string;
begin
  tarikh:=L_tarikh.Caption;
  tarikh[5]:='-';
  tarikh[8]:='-';
  format_for_naming_backup_file:=L_roze_hafte.Caption+' '+tarikh;

end;



////////////////////////////////////////////


procedure Tfrm_main.change_back;
var s:string;
begin
 if TeDirectoryDialog1.Execute then
    s:=TeDirectoryDialog1.Directory;
    if StrLen(pchar(s))>=255 then
    begin
      MessageBox(Handle,pchar('??? ???? ??????? << '+s +' >> ????? ?? 255 ??????? ?? ???? ? ???? ????? ?? ?????? ??????.'),'??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      s:='no';
    end;
    if s<>'' then
    begin
      DataMo_shakhs.ADOQ_login.SQL.Text:='update t_login set back='+QuotedStr(s);
      DataMo_shakhs.ADOQ_login.ExecSQL;
    end
    else
       MessageBox(Handle,pchar('???? ?????? ???? ???.'),'??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);

end;
procedure Tfrm_main.pic;
var path :string;
begin
  path:=ExtractFilePath(Application.ExeName);
  path:=path+'/pic';
  OpenPictureDialog1.InitialDir:=path;
  If OpenPictureDialog1.Execute then
   begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    DataMo_shakhs.ADOQ_login.SQL.Text:='update t_login set pic='+QuotedStr(OpenPictureDialog1.FileName);
    DataMo_shakhs.ADOQ_login.ExecSQL;
   end;
end;
procedure Tfrm_main.back_up;
var path,s:string;
begin
 DataMo_shakhs.ADOQ_login.SQL.Text:='select * from  t_login';
 DataMo_shakhs.ADOQ_login.Open;
 if DataMo_shakhs.ADOQ_login.Fields[2].AsString='no' then
 begin
  if TeDirectoryDialog1.Execute then
    s:=TeDirectoryDialog1.Directory;
    if StrLen(pchar(s))>=255 then
    begin
      MessageBox(Handle,pchar('??? ???? ??????? << '+s +' >> ????? ?? 255 ??????? ?? ???? ? ???? ????? ?? ?????? ??????.'),'??? !',MB_OK or MB_ICONEXCLAMATION or MB_RIGHT or MB_RTLREADING);
      s:='no';
    end;
      DataMo_shakhs.ADOQ_login.SQL.Text:='update t_login set back='+QuotedStr(s);
      DataMo_shakhs.ADOQ_login.ExecSQL;
 end
  else
    s:=DataMo_shakhs.ADOQ_login.Fields[2].AsString;
  if s<> 'no' then
  begin
    Path:=ExtractFilePath(Application.ExeName);
    Path:=Path+'anjir.mdb';
    s:=s+'\anjir.mdb';
    CopyFile(PChar(Path),PChar(s),LongBool(0));
  end;
end;

procedure Tfrm_main.CustomItem6Click(Sender: TObject);
begin
  frm_foroshande_jadid.e_name.Text:='';
  frm_foroshande_jadid.E_family.Text:='';
  frm_foroshande_jadid.e_telephon_hamrah.Text:='';
  frm_foroshande_jadid.E_telephon_kar.Text:='';
  frm_foroshande_jadid.E_telephon_manzel.Text:='';
  frm_foroshande_jadid.suiForm1.Caption:=pchar('?????? ????');
  frm_foroshande_jadid.l_type.Caption:='kharid';
  frm_foroshande_jadid.L_edit.Caption:='notedit';
  frm_foroshande_jadid.e_name.Enabled:=true;
  frm_foroshande_jadid.E_family.Enabled:=true;
  frm_foroshande_jadid.ShowModal;
end;

procedure Tfrm_main.FormShow(Sender: TObject);
begin
  while E_tarikh.Text='' do
  begin
     _taghvim.Label1.Caption:='bbbbb';
    _taghvim.ShowModal;
    E_tarikh.Text:=_taghvim._str_date;

    L_tarikh.Caption:=_Taghvim._str_date;

    L_roze_hafte.Caption:=_Taghvim.roz_hafte;
       _taghvim.Label1.Caption:='';
  end;
  frm_login.ShowModal;
  while frm_login.L_click.Caption='no' do
    frm_login.ShowModal;


  DataMo_shakhs.ADOQ_login.SQL.Text:='select * from t_login';
  DataMo_shakhs.ADOQ_login.Open;
  //Image1.Picture.LoadFromFile(DataMo_shakhs.ADOQ_login.Fields[3].AsString);
  Timer1.Enabled:=true;
  frm_main.WindowState:=wsMaximized;
end;

procedure Tfrm_main.Button1Click(Sender: TObject);
begin
  frm_view_shakhs.ShowModal;
end;



procedure Tfrm_main.Button2Click(Sender: TObject);
begin
  frm_foroshande_jadid.e_name.Text:='';
  frm_foroshande_jadid.E_family.Text:='';
  frm_foroshande_jadid.e_telephon_hamrah.Text:='';
  frm_foroshande_jadid.E_telephon_kar.Text:='';
  frm_foroshande_jadid.E_telephon_manzel.Text:='';
  frm_foroshande_jadid.suiForm1.Caption:=pchar('??????? ????');
  frm_foroshande_jadid.l_type.Caption:='forosh';
  frm_foroshande_jadid.L_edit.Caption:='notedit';
  frm_foroshande_jadid.e_name.Enabled:=true;
  frm_foroshande_jadid.E_family.Enabled:=true;
  frm_foroshande_jadid.ShowModal;
end;

procedure Tfrm_main.Button4Click(Sender: TObject);
begin
  Frm_forosh.ShowModal;
end;

procedure Tfrm_main.Button5Click(Sender: TObject);
begin
  Frm_search_forosh.ShowModal;
end;

procedure Tfrm_main.Button6Click(Sender: TObject);
begin
  frm_foroshande_jadid.e_name.Text:='';
  frm_foroshande_jadid.E_family.Text:='';
  frm_foroshande_jadid.e_telephon_hamrah.Text:='';
  frm_foroshande_jadid.E_telephon_kar.Text:='';
  frm_foroshande_jadid.E_telephon_manzel.Text:='';
  frm_foroshande_jadid.suiForm1.Caption:=pchar('?????? ????');
  frm_foroshande_jadid.l_type.Caption:='kharid';
  frm_foroshande_jadid.L_edit.Caption:='notedit';
  frm_foroshande_jadid.e_name.Enabled:=true;
  frm_foroshande_jadid.E_family.Enabled:=true;
  frm_foroshande_jadid.ShowModal;
end;

procedure Tfrm_main.Button3Click(Sender: TObject);
begin
  frm_koli_kharidar.ShowModal;
end;

procedure Tfrm_main.Button7Click(Sender: TObject);
begin
 frm_koli_foroshande.ShowModal;
end;

procedure Tfrm_main.Button8Click(Sender: TObject);
begin
  frm_add_sal_fi.ShowModal;
end;

procedure Tfrm_main.Button_12Click(Sender: TObject);
begin
  frm_add_ranande.ShowModal;
end;

procedure Tfrm_main.Button10Click(Sender: TObject);
begin
  frm_search_ranande_daron.ShowModal; 
end;

procedure Tfrm_main.Button11Click(Sender: TObject);
begin
  Frm_search_intarikh.ShowModal;
end;

procedure Tfrm_main.Button12Click(Sender: TObject);
begin
  frm_bank_jadid.ShowModal;
end;

procedure Tfrm_main.Timer_backTimer(Sender: TObject);
begin
  back_up;
end;

procedure Tfrm_main.Button13Click(Sender: TObject);
begin
  pic;
end;

procedure Tfrm_main.CustomItem7Click(Sender: TObject);
begin
  frm_foroshande_jadid.e_name.Text:='';
  frm_foroshande_jadid.E_family.Text:='';
  frm_foroshande_jadid.e_telephon_hamrah.Text:='';
  frm_foroshande_jadid.E_telephon_kar.Text:='';
  frm_foroshande_jadid.E_telephon_manzel.Text:='';
  frm_foroshande_jadid.suiForm1.Caption:=pchar('??????? ????');
  frm_foroshande_jadid.l_type.Caption:='forosh';
  frm_foroshande_jadid.L_edit.Caption:='notedit';
  frm_foroshande_jadid.e_name.Enabled:=true;
  frm_foroshande_jadid.E_family.Enabled:=true;
  frm_foroshande_jadid.ShowModal;
end;

procedure Tfrm_main.CustomItem12Click(Sender: TObject);
begin
frm_view_shakhs.ShowModal;
end;

procedure Tfrm_main.CustomItem9Click(Sender: TObject);
begin
frm_koli_kharidar.ShowModal;
end;

procedure Tfrm_main.CustomItem10Click(Sender: TObject);
begin
frm_koli_foroshande.ShowModal;
end;

procedure Tfrm_main.CustomItem4Click(Sender: TObject);
begin
frm_add_sal_fi.ShowModal;
end;

procedure Tfrm_main.CustomItem5Click(Sender: TObject);
begin
frm_add_ranande.ShowModal;
end;

procedure Tfrm_main.CustomItem16Click(Sender: TObject);
begin
frm_chang_public_login.ShowModal;
end;

procedure Tfrm_main.CustomItem11Click(Sender: TObject);
begin
Frm_hasanpor_login.ShowModal;
end;

procedure Tfrm_main.CustomItem17Click(Sender: TObject);
begin
 pic;
end;

procedure Tfrm_main.CustomItem18Click(Sender: TObject);
begin
change_back;
end;

procedure Tfrm_main.Button_1Click(Sender: TObject);
begin
// FRM_PRINT_BARAYE_KHARIDAR.QuickRep1.Print;
  frm_pardakht_be_foroshande.ShowModal;
end;

procedure Tfrm_main.Button9Click(Sender: TObject);
begin
  frm_search_for_ranande.ShowModal;
end;

procedure Tfrm_main.Button14Click(Sender: TObject);
begin
////
  frm_eslah_forosh.ShowModal;
end;

procedure Tfrm_main.Button15Click(Sender: TObject);
begin
  frm_eslah_asli.ShowModal;
end;

procedure Tfrm_main.CustomItem13Click(Sender: TObject);
begin
  Frm_forosh.ShowModal;
end;

procedure Tfrm_main.CustomItem14Click(Sender: TObject);
begin
  frm_pardakht_be_foroshande.ShowModal;
end;

procedure Tfrm_main.CustomItem19Click(Sender: TObject);
begin
frm_eslah_asli.ShowModal;
end;

procedure Tfrm_main.CustomItem20Click(Sender: TObject);
begin
  frm_eslah_forosh.ShowModal;
end;

procedure Tfrm_main.CustomItem21Click(Sender: TObject);
begin
Frm_search_forosh.ShowModal;
end;

procedure Tfrm_main.CustomItem22Click(Sender: TObject);
begin
frm_search_for_ranande.ShowModal;
end;

procedure Tfrm_main.CustomItem23Click(Sender: TObject);
begin
  frm_dabare.ShowModal;
end;

procedure Tfrm_main.Button16Click(Sender: TObject);
begin
  frm_add_bank.ShowModal;
end;

procedure Tfrm_main.Button17Click(Sender: TObject);
begin
Frm_search_bank.ShowModal;
end;

procedure Tfrm_main.CustomItem24Click(Sender: TObject);
begin
  frm_add_bank.ShowModal;
end;

procedure Tfrm_main.CustomItem25Click(Sender: TObject);
begin
Frm_search_bank.ShowModal;
end;

procedure Tfrm_main.CustomItem26Click(Sender: TObject);
begin
frm_eslah_bank.ShowModal;
end;

procedure Tfrm_main.CustomItem27Click(Sender: TObject);
begin
  frm_search_ranande_daron.ShowModal; 
end;

procedure Tfrm_main.CustomItem28Click(Sender: TObject);
begin
 Frm_search_intarikh.ShowModal;
end;

procedure Tfrm_main.CustomItem30Click(Sender: TObject);
begin
 frm_koli_login.ShowModal;
end;





procedure Tfrm_main.Timer1Timer(Sender: TObject);
begin
 autobackup;
end;

procedure Tfrm_main.CustomItem29Click(Sender: TObject);
begin
   _taghvim.Label1.Caption:='bbbbb';
_Taghvim.ShowModal;
if _taghvim._str_date<>'' then
begin
  L_tarikh.Caption:=_Taghvim._str_date;
  E_tarikh.Text:=_taghvim._str_date;
  L_roze_hafte.Caption:=_Taghvim.roz_hafte;
  _taghvim.Label1.Caption:='';  
end;
end;

procedure Tfrm_main.CustomItem31Click(Sender: TObject);
begin
 autobackup;
 MessageBox(Handle,'?????? ??????? ???? ?? ?????? ???? ????? ??','Back Up',MB_OK or MB_ICONINFORMATION or MB_RIGHT or MB_RTLREADING);
end;

end.
