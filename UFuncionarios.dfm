inherited FrmFuncionarios: TFrmFuncionarios
  Caption = 'Funcion'#225'rios'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 40
    Width = 29
    Height = 13
    Caption = 'Cargo'
  end
  object Label1: TLabel [1]
    Left = 8
    Top = 70
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = edtFuncionarioId
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 97
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = edtNome
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 124
    Width = 56
    Height = 13
    Caption = 'Inserido Em'
    FocusControl = edtInseridoEm
  end
  inherited tlbComandos: TToolBar
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
  object cbbCargos: TDBLookupComboBox
    Left = 94
    Top = 37
    Width = 145
    Height = 21
    KeyField = 'TiposId'
    ListField = 'Descricao'
    ListSource = dtmAcoesBanco.dsCargos
    TabOrder = 1
    OnClick = cbbCargosClick
  end
  object chkFiltro: TCheckBox
    Left = 252
    Top = 39
    Width = 61
    Height = 17
    Caption = 'Filtrar'
    TabOrder = 2
    OnClick = chkFiltroClick
  end
  object edtFuncionarioId: TDBEdit
    Left = 94
    Top = 66
    Width = 55
    Height = 21
    Color = clBtnFace
    DataField = 'FuncionarioId'
    DataSource = dtmAcoesBanco.dsFuncionario
    ReadOnly = True
    TabOrder = 3
  end
  object edtNome: TDBEdit
    Left = 94
    Top = 93
    Width = 495
    Height = 21
    DataField = 'Nome'
    DataSource = dtmAcoesBanco.dsFuncionario
    TabOrder = 4
  end
  object chkAtivo: TDBCheckBox
    Left = 236
    Top = 122
    Width = 97
    Height = 17
    Caption = 'Ativo'
    DataField = 'Ativo'
    DataSource = dtmAcoesBanco.dsFuncionario
    TabOrder = 5
  end
  object edtInseridoEm: TDBEdit
    Left = 94
    Top = 120
    Width = 111
    Height = 21
    Color = clBtnFace
    DataField = 'InseridoEm'
    DataSource = dtmAcoesBanco.dsFuncionario
    ReadOnly = True
    TabOrder = 6
  end
  object dbgFuncionarios: TDBGrid
    Left = 8
    Top = 147
    Width = 588
    Height = 302
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtmAcoesBanco.dsFuncionario
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'FuncionarioId'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 226
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CargoDescicao'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ativo'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'InseridoEm'
        Visible = True
      end>
  end
end
