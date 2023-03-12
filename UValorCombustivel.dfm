inherited FrmValorCombustivel: TFrmValorCombustivel
  Caption = 'Valor do Combust'#237'vel'
  ClientHeight = 334
  OnClose = FormClose
  OnShow = FormShow
  ExplicitHeight = 373
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 41
    Width = 58
    Height = 13
    Caption = 'Combust'#237'vel'
  end
  object Label1: TLabel [1]
    Left = 8
    Top = 68
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = edtValorCombustivelId
  end
  object Label4: TLabel [2]
    Left = 8
    Top = 95
    Width = 63
    Height = 13
    Caption = 'Valor do Litro'
    FocusControl = edtValorLitro
  end
  object Label5: TLabel [3]
    Left = 8
    Top = 123
    Width = 53
    Height = 13
    Caption = 'InseridoEm'
    FocusControl = DBEdit4
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
  object cbbCombustivel: TDBLookupComboBox
    Left = 98
    Top = 35
    Width = 145
    Height = 21
    KeyField = 'TiposId'
    ListField = 'Descricao'
    ListSource = dtmAcoesBanco.dsCombusiveis
    TabOrder = 1
    OnClick = cbbCombustivelClick
  end
  object chkFiltro: TCheckBox
    Left = 256
    Top = 37
    Width = 61
    Height = 17
    Caption = 'Filtrar'
    TabOrder = 2
    OnClick = chkFiltroClick
  end
  object edtValorCombustivelId: TDBEdit
    Left = 98
    Top = 64
    Width = 55
    Height = 21
    Color = clBtnFace
    DataField = 'ValorCombustivelId'
    DataSource = dtmAcoesBanco.dsValorCombustivel
    ReadOnly = True
    TabOrder = 3
  end
  object edtValorLitro: TDBEdit
    Left = 98
    Top = 91
    Width = 69
    Height = 21
    DataField = 'ValorLitro'
    DataSource = dtmAcoesBanco.dsValorCombustivel
    TabOrder = 4
  end
  object DBCheckBox1: TDBCheckBox
    Left = 230
    Top = 121
    Width = 97
    Height = 17
    Caption = 'Ativo'
    DataField = 'Ativo'
    DataSource = dtmAcoesBanco.dsValorCombustivel
    TabOrder = 5
  end
  object DBEdit4: TDBEdit
    Left = 98
    Top = 119
    Width = 111
    Height = 21
    Color = clBtnFace
    DataField = 'InseridoEm'
    DataSource = dtmAcoesBanco.dsValorCombustivel
    ReadOnly = True
    TabOrder = 6
  end
  object dbgCombustivel: TDBGrid
    Left = 8
    Top = 150
    Width = 588
    Height = 176
    DataSource = dtmAcoesBanco.dsValorCombustivel
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ValorCombustivelId'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CombustivelDescrical'
        Title.Caption = 'Combust'#237'vel'
        Visible = True
      end
      item
        Alignment = taLeftJustify
        Expanded = False
        FieldName = 'ValorLitro'
        Title.Alignment = taCenter
        Title.Caption = 'Valor do Litro'
        Visible = True
      end
      item
        Alignment = taCenter
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
