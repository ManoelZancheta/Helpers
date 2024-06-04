object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 673
  ClientWidth = 1308
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 440
    Top = 32
    Width = 366
    Height = 25
    Caption = 'Helpers (Class Helper e Record Helper)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 171
    Top = 65
    Width = 642
    Height = 23
    Caption = 
      '-> introduz comportamentos ou atributos adicionais '#224' uma classe ' +
      'ou record;'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label3: TLabel
    Left = 171
    Top = 94
    Width = 322
    Height = 23
    Caption = '-> n'#227'o utiliza heran'#231'a ou composi'#231#227'o;'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label4: TLabel
    Left = 171
    Top = 125
    Width = 354
    Height = 23
    Caption = '-> n'#227'o se aplica somente a componentes;'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label5: TLabel
    Left = 171
    Top = 154
    Width = 640
    Height = 46
    Caption = 
      '-> permite modificar classes criadas pelo desenvolvedor, adicion' +
      'ar m'#233'todos e estruturas do tipo record e tipos primitivos '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16744448
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    WordWrap = True
  end
  object Label6: TLabel
    Left = 163
    Top = 261
    Width = 348
    Height = 19
    Caption = 'a) Class Helper - Testa se o TEdit '#233' Vazio ou N'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4227327
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 163
    Top = 341
    Width = 349
    Height = 19
    Caption = 'b) Class Helper - Testa se o TEdit '#233' Par ou '#205'mpar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4227327
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 163
    Top = 485
    Width = 222
    Height = 19
    Caption = 'd) Importar JSON para DataSet'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4227327
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 163
    Top = 421
    Width = 360
    Height = 19
    Caption = 'c) Record Helper - Formata um Valor Como Moeda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 4227327
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 163
    Top = 284
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 290
    Top = 284
    Width = 98
    Height = 25
    Caption = 'Vazio?'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 290
    Top = 366
    Width = 98
    Height = 25
    Caption = 'Par ou '#205'mpar?'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 163
    Top = 366
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '10'
  end
  object Button3: TButton
    Left = 290
    Top = 442
    Width = 98
    Height = 25
    Caption = 'Formatar Moeda'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 400
    Top = 487
    Width = 217
    Height = 155
    Lines.Strings = (
      '['
      '  {'
      '    "nome": "Manoel Am'#233'rico Zancheta",'
      '    "cidade": "Leme",'
      '    "altura": 1.74'
      '  },'
      '  {'
      '    "nome": "Nicholas Moscardi Zancheta",'
      '    "cidade": "Leme",'
      '    "altura": 1.8'
      '  }'
      ']')
    TabOrder = 5
  end
  object Button4: TButton
    Left = 184
    Top = 510
    Width = 75
    Height = 25
    Caption = 'Importar'
    TabOrder = 6
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 623
    Top = 485
    Width = 434
    Height = 157
    DataSource = dsClientes
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit3: TEdit
    Left = 163
    Top = 442
    Width = 121
    Height = 21
    TabOrder = 8
    Text = '100,1'
  end
  object dsClientes: TDataSource
    DataSet = cdsClientes
    Left = 680
    Top = 416
  end
  object cdsClientes: TClientDataSet
    PersistDataPacket.Data = {
      4E0000009619E0BD0100000018000000020000000000030000004E00046E6F6D
      6501004900000001000557494454480200020032000663696461646501004900
      00000100055749445448020002001E000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 744
    Top = 416
  end
end
