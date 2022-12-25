object Form1: TForm1
  Left = 370
  Top = 244
  Width = 247
  Height = 83
  Caption = 'what are you doing?'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 82
    Top = 12
    Width = 75
    Height = 25
    Caption = 'maintenace'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=anjir.mdb;Persist S' +
      'ecurity Info=False;Jet OLEDB:Database Password=803702414549'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 48
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from t_login')
    Left = 168
    Top = 8
    object ADOQuery1login_public: TWideStringField
      FieldName = 'login_public'
      Size = 50
    end
    object ADOQuery1login_user: TWideStringField
      FieldName = 'login_user'
      Size = 50
    end
    object ADOQuery1back: TWideStringField
      FieldName = 'back'
      Size = 255
    end
    object ADOQuery1pic: TWideStringField
      FieldName = 'pic'
      Size = 255
    end
    object ADOQuery1bug_tarikh: TWideStringField
      FieldName = 'bug_tarikh'
      Size = 10
    end
    object ADOQuery1bug_forosh: TWideStringField
      FieldName = 'bug_forosh'
    end
    object ADOQuery1serial: TWideStringField
      FieldName = 'serial'
      Size = 50
    end
    object ADOQuery1record_count: TWideStringField
      FieldName = 'record_count'
    end
  end
end
