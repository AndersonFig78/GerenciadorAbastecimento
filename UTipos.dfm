inherited FrmTipos: TFrmTipos
  Caption = 'Tipos'
  ClientWidth = 639
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 655
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 69
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = edtTiposId
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 40
    Width = 56
    Height = 13
    Caption = 'Tipo Mestre'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 96
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = edtDescricao
  end
  object Label4: TLabel [3]
    Left = 4
    Top = 124
    Width = 56
    Height = 13
    Caption = 'Inserido Em'
    FocusControl = edtInseridoEm
  end
  inherited tlbComandos: TToolBar
    Width = 639
    ExplicitWidth = 639
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
  object edtTiposId: TDBEdit
    Left = 94
    Top = 65
    Width = 55
    Height = 21
    Color = clBtnFace
    DataField = 'TiposId'
    DataSource = dtmAcoesBanco.dsTipos
    ReadOnly = True
    TabOrder = 2
  end
  object edtDescricao: TDBEdit
    Left = 94
    Top = 92
    Width = 495
    Height = 21
    DataField = 'Descricao'
    DataSource = dtmAcoesBanco.dsTipos
    TabOrder = 3
  end
  object chkAtivo: TDBCheckBox
    Left = 228
    Top = 122
    Width = 97
    Height = 17
    Caption = 'Ativo'
    DataField = 'Ativo'
    DataSource = dtmAcoesBanco.dsTipos
    TabOrder = 4
  end
  object edtInseridoEm: TDBEdit
    Left = 94
    Top = 120
    Width = 111
    Height = 21
    Color = clBtnFace
    DataField = 'InseridoEm'
    DataSource = dtmAcoesBanco.dsTipos
    ReadOnly = True
    TabOrder = 5
  end
  object cbbTiposMestreId: TDBLookupComboBox
    Left = 94
    Top = 37
    Width = 145
    Height = 21
    KeyField = 'TiposMestreId'
    ListField = 'Descricao'
    ListSource = dtmAcoesBanco.dsTiposMestre
    TabOrder = 1
    OnClick = cbbTiposMestreIdClick
  end
  object dbg1: TDBGrid
    Left = 4
    Top = 147
    Width = 620
    Height = 302
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtmAcoesBanco.dsTipos
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TiposId'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TiposMestreDescricao'
        Title.Caption = 'Mestre'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Caption = 'Descri'#231#227'o'
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
        Title.Caption = 'Inserido Em'
        Visible = True
      end>
  end
  object chkFiltro: TCheckBox
    Left = 252
    Top = 39
    Width = 61
    Height = 17
    Caption = 'Filtrar'
    TabOrder = 7
    OnClick = chkFiltroClick
  end
end
