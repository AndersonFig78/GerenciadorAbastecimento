inherited FrmBombas: TFrmBombas
  Caption = 'Bombas'
  ClientWidth = 669
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 685
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 8
    Top = 40
    Width = 36
    Height = 13
    Caption = 'Tanque'
  end
  object dbtxtCombustivel: TDBText [1]
    Left = 253
    Top = 40
    Width = 65
    Height = 17
    DataField = 'CombustivelDescricao'
    DataSource = dtmAcoesBanco.dsTanque
  end
  object Label1: TLabel [2]
    Left = 8
    Top = 68
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = edtBombaId
  end
  object Label3: TLabel [3]
    Left = 8
    Top = 95
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = edtDescricao
  end
  object Label4: TLabel [4]
    Left = 8
    Top = 122
    Width = 56
    Height = 13
    Caption = 'Inserido Em'
    FocusControl = edtInseridoEm
  end
  inherited tlbComandos: TToolBar
    Width = 669
    ExplicitWidth = 669
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
  object cbbTanque: TDBLookupComboBox
    Left = 94
    Top = 37
    Width = 145
    Height = 21
    KeyField = 'TanqueId'
    ListField = 'Descricao'
    ListSource = dtmAcoesBanco.dsTanque
    TabOrder = 1
    OnClick = cbbTanqueClick
  end
  object chkFiltro: TCheckBox
    Left = 336
    Top = 39
    Width = 61
    Height = 17
    Caption = 'Filtrar'
    TabOrder = 2
    OnClick = chkFiltroClick
  end
  object edtBombaId: TDBEdit
    Left = 94
    Top = 64
    Width = 55
    Height = 21
    Color = clBtnFace
    DataField = 'BombaId'
    DataSource = dtmAcoesBanco.dsBomba
    ReadOnly = True
    TabOrder = 3
  end
  object edtDescricao: TDBEdit
    Left = 94
    Top = 91
    Width = 495
    Height = 21
    DataField = 'Descricao'
    DataSource = dtmAcoesBanco.dsBomba
    TabOrder = 4
  end
  object chkAtivo: TDBCheckBox
    Left = 236
    Top = 120
    Width = 97
    Height = 17
    Caption = 'Ativo'
    DataField = 'Ativo'
    DataSource = dtmAcoesBanco.dsBomba
    TabOrder = 5
  end
  object edtInseridoEm: TDBEdit
    Left = 94
    Top = 118
    Width = 111
    Height = 21
    Color = clBtnFace
    DataField = 'InseridoEm'
    DataSource = dtmAcoesBanco.dsBomba
    ReadOnly = True
    TabOrder = 6
  end
  object dbgBombas: TDBGrid
    Left = 8
    Top = 145
    Width = 653
    Height = 304
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtmAcoesBanco.dsBomba
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BombaId'
        Title.Alignment = taCenter
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 161
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TanqueDescricao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CombustivelDescricao'
        Width = 76
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
