object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Gerenciador de Abastecimento'
  ClientHeight = 521
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mmPrincipal
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object mmPrincipal: TMainMenu
    Left = 320
    Top = 292
    object mniArquivo: TMenuItem
      Caption = 'Arquivo'
      object mniAbastecimento: TMenuItem
        Caption = '&Abastecimento'#13#10
        OnClick = mniAbastecimentoClick
      end
      object mniRelaAbastecimentos: TMenuItem
        Caption = '&Relat'#243'rio de Abastecimentos'
        OnClick = mniRelaAbastecimentosClick
      end
      object mniSeparador1: TMenuItem
        Caption = '-'
      end
      object mniSair: TMenuItem
        Caption = '&Sair'
        OnClick = mniSairClick
      end
    end
    object mniParametros: TMenuItem
      Caption = '&Par'#226'metros'
      object mniTiposMestre: TMenuItem
        Caption = 'Tipos &Mestre'
        OnClick = mniTiposMestreClick
      end
      object mniTipos: TMenuItem
        Caption = '&Tipos'
        OnClick = mniTiposClick
      end
      object mniValorLitro: TMenuItem
        Caption = '&Valor do Combust'#237'vel'
        OnClick = mniValorLitroClick
      end
      object mniTanque: TMenuItem
        Caption = 'Tan&que'
        OnClick = mniTanqueClick
      end
      object mniImposto: TMenuItem
        Caption = '&Imposto'
        OnClick = mniImpostoClick
      end
      object mniBombas: TMenuItem
        Caption = '&Bombas'
        OnClick = mniBombasClick
      end
      object mniFuncionario: TMenuItem
        Caption = '&Funcion'#225'rio'
        OnClick = mniFuncionarioClick
      end
    end
  end
end
