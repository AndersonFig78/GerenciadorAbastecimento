inherited FrmImposto: TFrmImposto
  Caption = 'Impostos'
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 39
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = edtImpostoId
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
    Top = 93
    Width = 24
    Height = 13
    Caption = 'Taxa'
    FocusControl = edtTaxa
  end
  object Label4: TLabel [3]
    Left = 168
    Top = 93
    Width = 38
    Height = 13
    Caption = 'F'#243'rmula'
    FocusControl = edtFormula
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 121
    Width = 53
    Height = 13
    Caption = 'InseridoEm'
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
  object edtImpostoId: TDBEdit
    Left = 94
    Top = 35
    Width = 55
    Height = 21
    Color = clBtnFace
    DataField = 'ImpostoId'
    DataSource = dtmAcoesBanco.dsImposto
    TabOrder = 1
  end
  object edtDescricao: TDBEdit
    Left = 94
    Top = 62
    Width = 495
    Height = 21
    DataField = 'Descricao'
    DataSource = dtmAcoesBanco.dsImposto
    TabOrder = 2
  end
  object edtTaxa: TDBEdit
    Left = 94
    Top = 89
    Width = 55
    Height = 21
    DataField = 'Taxa'
    DataSource = dtmAcoesBanco.dsImposto
    TabOrder = 3
  end
  object edtFormula: TDBEdit
    Left = 228
    Top = 89
    Width = 111
    Height = 21
    DataField = 'Formula'
    DataSource = dtmAcoesBanco.dsImposto
    TabOrder = 4
  end
  object chkAtivo: TDBCheckBox
    Left = 228
    Top = 119
    Width = 97
    Height = 16
    Caption = 'Ativo'
    DataField = 'Ativo'
    DataSource = dtmAcoesBanco.dsImposto
    TabOrder = 5
  end
  object edtInseridoEm: TDBEdit
    Left = 94
    Top = 117
    Width = 111
    Height = 21
    Color = clBtnFace
    DataField = 'InseridoEm'
    DataSource = dtmAcoesBanco.dsImposto
    TabOrder = 6
  end
  object dbgImposto: TDBGrid
    Left = 8
    Top = 144
    Width = 588
    Height = 130
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtmAcoesBanco.dsImposto
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ImpostoId'
        Title.Alignment = taCenter
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Width = 214
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Taxa'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Formula'
        Title.Alignment = taCenter
        Width = 109
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
        Width = 73
        Visible = True
      end>
  end
end
