object FrmFormularioPadrao: TFrmFormularioPadrao
  Left = 0
  Top = 0
  Caption = 'FrmFormularioPadrao'
  ClientHeight = 457
  ClientWidth = 604
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
  object tlbComandos: TToolBar
    Left = 0
    Top = 0
    Width = 604
    Height = 29
    ButtonHeight = 29
    ButtonWidth = 73
    Caption = 'tlbComandos'
    TabOrder = 0
    object btnNovo: TBitBtn
      Left = 0
      Top = 0
      Width = 57
      Height = 29
      Caption = '&Novo'
      TabOrder = 0
    end
    object btnEditar: TBitBtn
      Left = 57
      Top = 0
      Width = 57
      Height = 29
      Caption = '&Editar'
      TabOrder = 4
    end
    object btnCancelar: TBitBtn
      Left = 114
      Top = 0
      Width = 57
      Height = 29
      Caption = '&Cancelar'
      TabOrder = 1
    end
    object btnGravar: TBitBtn
      Left = 171
      Top = 0
      Width = 57
      Height = 29
      Caption = '&Gravar'
      TabOrder = 2
    end
    object btnSair: TButton
      Left = 228
      Top = 0
      Width = 57
      Height = 29
      Caption = '&Sair'
      TabOrder = 3
      OnClick = btnSairClick
    end
  end
end
