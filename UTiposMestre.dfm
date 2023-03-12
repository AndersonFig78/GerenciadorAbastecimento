inherited FrmTiposMestre: TFrmTiposMestre
  Caption = 'Tipos Mestre'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 40
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = edtTiposMestreId
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 66
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = edtDescricao
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 95
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
  object dbgTiposMestre: TDBGrid
    Left = 8
    Top = 124
    Width = 588
    Height = 150
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtmAcoesBanco.dsTiposMestre
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TiposMestreId'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
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
  object edtTiposMestreId: TDBEdit
    Left = 94
    Top = 35
    Width = 55
    Height = 21
    Color = clBtnFace
    DataField = 'TiposMestreId'
    DataSource = dtmAcoesBanco.dsTiposMestre
    ReadOnly = True
    TabOrder = 2
  end
  object edtDescricao: TDBEdit
    Left = 94
    Top = 62
    Width = 495
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    DataField = 'Descricao'
    DataSource = dtmAcoesBanco.dsTiposMestre
    TabOrder = 3
  end
  object chkAtivo: TDBCheckBox
    Left = 216
    Top = 93
    Width = 73
    Height = 17
    Caption = 'Ativo'
    DataField = 'Ativo'
    DataSource = dtmAcoesBanco.dsTiposMestre
    TabOrder = 4
  end
  object edtInseridoEm: TDBEdit
    Left = 94
    Top = 91
    Width = 111
    Height = 21
    Color = clBtnFace
    DataField = 'InseridoEm'
    DataSource = dtmAcoesBanco.dsTiposMestre
    ReadOnly = True
    TabOrder = 5
  end
end
