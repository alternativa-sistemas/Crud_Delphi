object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'CrudAgenda'
  ClientHeight = 442
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 80
    Width = 51
    Height = 25
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 128
    Width = 71
    Height = 25
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 176
    Width = 46
    Height = 25
    Caption = 'Email'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 32
    Width = 16
    Height = 25
    Caption = 'Id'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 224
    Width = 107
    Height = 25
    Caption = 'Observa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Conexao: TLabel
    Left = 687
    Top = 32
    Width = 74
    Height = 25
    Caption = 'Conexao'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 535
    Top = 66
    Width = 82
    Height = 55
    Caption = 'BUSCAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object txt_Id: TEdit
    Left = 152
    Top = 29
    Width = 185
    Height = 33
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object txt_Nome: TEdit
    Left = 152
    Top = 77
    Width = 185
    Height = 33
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object txt_telefone: TEdit
    Left = 152
    Top = 125
    Width = 185
    Height = 33
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object txt_email: TEdit
    Left = 152
    Top = 173
    Width = 185
    Height = 33
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object txt_Obs: TMemo
    Left = 152
    Top = 221
    Width = 185
    Height = 148
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    TabOrder = 4
  end
  object Btn_Salvar: TButton
    Left = 416
    Top = 96
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Btn_SalvarClick
  end
  object Btn_Fechar: TButton
    Left = 416
    Top = 34
    Width = 75
    Height = 25
    Caption = 'FECHAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Btn_FecharClick
  end
  object Btn_Novo: TButton
    Left = 416
    Top = 65
    Width = 75
    Height = 25
    Caption = 'NOVO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Btn_NovoClick
  end
  object Btn_anterior: TButton
    Left = 416
    Top = 127
    Width = 34
    Height = 25
    Caption = '<'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Btn_anteriorClick
  end
  object Btn_proximo: TButton
    Left = 456
    Top = 127
    Width = 35
    Height = 25
    Caption = '>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Btn_proximoClick
  end
  object Btn_carregar: TButton
    Left = 416
    Top = 259
    Width = 193
    Height = 33
    Caption = 'Carregar Todos os Contatos'
    TabOrder = 10
    OnClick = Btn_carregarClick
  end
  object Btn_delete: TButton
    Left = 416
    Top = 158
    Width = 75
    Height = 25
    Caption = 'EXCLUIR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    OnClick = Btn_deleteClick
  end
  object Btn_Editar: TButton
    Left = 416
    Top = 189
    Width = 75
    Height = 25
    Caption = 'EDITAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    OnClick = Btn_EditarClick
  end
  object Btn_Cancelar: TButton
    Left = 416
    Top = 220
    Width = 97
    Height = 25
    Caption = 'CANCELAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    OnClick = Btn_CancelarClick
  end
  object Procurar: TEdit
    Left = 513
    Top = 39
    Width = 121
    Height = 23
    TabOrder = 14
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Aline\Documents\Embarcadero\Studio\Projects\Wi' +
        'n32\Debug\Assets\Contatos.mdb'
      'DriverID=MSAcc')
    Left = 56
    Top = 384
  end
  object FDContatos: TFDTable
    BeforePost = FDContatosBeforePost
    Connection = FDConnection1
    Left = 160
    Top = 384
  end
  object DataSource1: TDataSource
    DataSet = FDContatos
    Left = 248
    Top = 384
  end
  object FDQueryContatos: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'CREATE TABLE Contatos ('
      '  ID COUNTER,'
      '  NOME VARCHAR,'
      '  TELEFONE VARCHAR,'
      '  OBSERVACOES VARCHAR,'
      '  EMAIL VARCHAR,'
      '  CONSTRAINT PK PRIMARY KEY (Id)'
      ')')
    Left = 344
    Top = 384
  end
  object FDMSAccessService1: TFDMSAccessService
    DriverLink = FDPhysMSAccessDriverLink1
    Left = 688
    Top = 320
  end
  object FDPhysMSAccessDriverLink1: TFDPhysMSAccessDriverLink
    Left = 688
    Top = 376
  end
end
