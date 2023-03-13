inherited FrmAbastecimento: TFrmAbastecimento
  Caption = 'Abastecimento'
  ClientHeight = 461
  ClientWidth = 884
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 900
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 40
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = edtAbastecimentoId
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 130
    Width = 26
    Height = 13
    Caption = 'Litros'
    FocusControl = edtLitros
  end
  object Label3: TLabel [2]
    Left = 399
    Top = 130
    Width = 24
    Height = 13
    Caption = 'Valor'
    FocusControl = edtValor
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 157
    Width = 56
    Height = 13
    Caption = 'Inserido Em'
    FocusControl = edtInseridoEm
  end
  object lblFuncnionario: TLabel [4]
    Left = 8
    Top = 71
    Width = 55
    Height = 13
    Caption = 'Funcion'#225'rio'
    FocusControl = edtInseridoEm
  end
  object dbtxtCargo: TDBText [5]
    Left = 252
    Top = 69
    Width = 65
    Height = 17
    DataField = 'FuncionarioCargo'
    DataSource = dtmAcoesBanco.dsAbastecimento
  end
  object lblBomba: TLabel [6]
    Left = 8
    Top = 103
    Width = 32
    Height = 13
    Caption = 'Bomba'
    FocusControl = edtInseridoEm
  end
  object dbtxtCombustivel: TDBText [7]
    Left = 252
    Top = 101
    Width = 65
    Height = 17
    DataField = 'BombaCombustivel'
    DataSource = dtmAcoesBanco.dsAbastecimento
  end
  object lblImposto: TLabel [8]
    Left = 164
    Top = 130
    Width = 39
    Height = 13
    Caption = 'Imposto'
    FocusControl = edtLitros
  end
  object dbtxtValorCombustivel: TDBText [9]
    Left = 332
    Top = 101
    Width = 65
    Height = 17
    DataField = 'ValorCombustivel'
    DataSource = dtmAcoesBanco.dsAbastecimento
  end
  object dbtxtTaxa: TDBText [10]
    Left = 320
    Top = 128
    Width = 65
    Height = 17
    DataField = 'ImpostoTaxa'
    DataSource = dtmAcoesBanco.dsAbastecimento
  end
  object lblFormaPagamento: TLabel [11]
    Left = 336
    Top = 71
    Width = 102
    Height = 13
    Caption = 'Forma de Pagamento'
    FocusControl = edtInseridoEm
  end
  inherited tlbComandos: TToolBar
    Width = 884
    ExplicitWidth = 884
    inherited btnNovo: TBitBtn
      OnClick = btnNovoClick
    end
    inherited btnEditar: TBitBtn
      OnClick = btnEditarClick
    end
    inherited btnCancelar: TBitBtn
      OnClick = btnCancelarClick
    end
    inherited btnGravar: TBitBtn
      OnClick = btnGravarClick
    end
  end
  object edtAbastecimentoId: TDBEdit
    Left = 94
    Top = 35
    Width = 54
    Height = 21
    Color = clBtnFace
    DataField = 'AbastecimentoId'
    DataSource = dtmAcoesBanco.dsAbastecimento
    ReadOnly = True
    TabOrder = 1
  end
  object edtLitros: TDBEdit
    Left = 94
    Top = 126
    Width = 54
    Height = 21
    DataField = 'Litros'
    DataSource = dtmAcoesBanco.dsAbastecimento
    TabOrder = 2
    OnChange = edtLitrosChange
    OnEnter = edtLitrosEnter
  end
  object edtValor: TDBEdit
    Left = 435
    Top = 125
    Width = 82
    Height = 21
    DataField = 'Valor'
    DataSource = dtmAcoesBanco.dsAbastecimento
    TabOrder = 3
    OnChange = edtValorChange
    OnEnter = edtValorEnter
  end
  object DBCheckBox1: TDBCheckBox
    Left = 236
    Top = 155
    Width = 97
    Height = 17
    Caption = 'Ativo'
    DataField = 'Ativo'
    DataSource = dtmAcoesBanco.dsAbastecimento
    TabOrder = 4
  end
  object edtInseridoEm: TDBEdit
    Left = 94
    Top = 153
    Width = 111
    Height = 21
    Color = clBtnFace
    DataField = 'InseridoEm'
    DataSource = dtmAcoesBanco.dsAbastecimento
    ReadOnly = True
    TabOrder = 5
  end
  object cbbFuncionario: TDBLookupComboBox
    Left = 94
    Top = 67
    Width = 145
    Height = 21
    DataField = 'FuncionarioId'
    DataSource = dtmAcoesBanco.dsAbastecimento
    KeyField = 'FuncionarioId'
    ListField = 'Nome'
    ListSource = dtmAcoesBanco.dsFuncionario
    TabOrder = 6
  end
  object cbbBomba: TDBLookupComboBox
    Left = 94
    Top = 99
    Width = 145
    Height = 21
    DataField = 'BombaId'
    DataSource = dtmAcoesBanco.dsAbastecimento
    KeyField = 'BombaId'
    ListField = 'Descricao'
    ListSource = dtmAcoesBanco.dsBomba
    TabOrder = 7
    OnClick = cbbBombaClick
  end
  object dbgAbastecimento: TDBGrid
    Left = 8
    Top = 180
    Width = 868
    Height = 273
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtmAcoesBanco.dsAbastecimento
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AbastecimentoId'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FuncionarioNome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FuncionarioCargo'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BombaDescricao'
        Title.Caption = 'Bomba'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FormaPagamentoDescicao'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ValorCombustivel'
        Title.Caption = 'Valor Combust'#237'vel'
        Width = 64
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Litros'
        Title.Alignment = taCenter
        Width = 47
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ImpostoDescricao'
        Width = 83
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ImpostoTaxa'
        Title.Alignment = taCenter
        Title.Caption = 'Taxa'
        Width = 56
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ativo'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InseridoEm'
        Width = 64
        Visible = True
      end>
  end
  object cbbImposto: TDBLookupComboBox
    Left = 211
    Top = 126
    Width = 96
    Height = 21
    DataField = 'ImpostoId'
    DataSource = dtmAcoesBanco.dsAbastecimento
    KeyField = 'ImpostoId'
    ListField = 'Descricao'
    ListSource = dtmAcoesBanco.dsImposto
    TabOrder = 9
    OnClick = cbbImpostoClick
  end
  object cbbFormaPagamento: TDBLookupComboBox
    Left = 444
    Top = 67
    Width = 145
    Height = 21
    DataField = 'FormaPagamentoTiposId'
    DataSource = dtmAcoesBanco.dsAbastecimento
    KeyField = 'TiposId'
    ListField = 'Descricao'
    ListSource = dtmAcoesBanco.dsFormaPagamento
    TabOrder = 10
  end
end
