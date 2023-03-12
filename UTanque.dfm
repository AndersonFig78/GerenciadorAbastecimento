inherited FrmTanque: TFrmTanque
  Caption = 'Tanque de Combust'#237'vel'
  ClientHeight = 307
  ClientWidth = 654
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 670
  ExplicitHeight = 346
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
    Top = 67
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = edtTanqueId
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 94
    Width = 46
    Height = 13
    Caption = 'Descricao'
    FocusControl = edtDescricao
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 121
    Width = 56
    Height = 13
    Caption = 'Capacidade'
    FocusControl = edtCapacidade
  end
  object Label5: TLabel [4]
    Left = 172
    Top = 121
    Width = 66
    Height = 13
    Caption = 'SituacaoAtual'
    FocusControl = edtSituacaoAtual
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 151
    Width = 53
    Height = 13
    Caption = 'InseridoEm'
    FocusControl = edtInseridoEm
  end
  inherited tlbComandos: TToolBar
    Width = 654
    ExplicitWidth = 654
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
  object edtTanqueId: TDBEdit
    Left = 98
    Top = 63
    Width = 55
    Height = 21
    Color = clBtnFace
    DataField = 'TanqueId'
    DataSource = dtmAcoesBanco.dsTanque
    TabOrder = 3
  end
  object edtDescricao: TDBEdit
    Left = 98
    Top = 90
    Width = 495
    Height = 21
    DataField = 'Descricao'
    DataSource = dtmAcoesBanco.dsTanque
    TabOrder = 4
  end
  object edtCapacidade: TDBEdit
    Left = 98
    Top = 117
    Width = 55
    Height = 21
    DataField = 'Capacidade'
    DataSource = dtmAcoesBanco.dsTanque
    TabOrder = 5
  end
  object edtSituacaoAtual: TDBEdit
    Left = 262
    Top = 117
    Width = 55
    Height = 21
    DataField = 'SituacaoAtual'
    DataSource = dtmAcoesBanco.dsTanque
    TabOrder = 6
  end
  object chkAtivo: TDBCheckBox
    Left = 228
    Top = 149
    Width = 97
    Height = 17
    Caption = 'Ativo'
    DataField = 'Ativo'
    DataSource = dtmAcoesBanco.dsTanque
    TabOrder = 7
  end
  object edtInseridoEm: TDBEdit
    Left = 98
    Top = 147
    Width = 111
    Height = 21
    Color = clBtnFace
    DataField = 'InseridoEm'
    DataSource = dtmAcoesBanco.dsTanque
    TabOrder = 8
  end
  object dbgTanque: TDBGrid
    Left = 8
    Top = 174
    Width = 638
    Height = 127
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dtmAcoesBanco.dsTanque
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'TanqueId'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CombustivelDescricao'
        Title.Caption = 'Combust'#237'vel'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Descricao'
        Title.Caption = 'Descri'#231#227'o'
        Width = 160
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Capacidade'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'SituacaoAtual'
        Title.Alignment = taCenter
        Title.Caption = 'Situa'#231#227'o Atual'
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
        Width = 76
        Visible = True
      end>
  end
end
