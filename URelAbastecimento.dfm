object RelAbastecimento: TRelAbastecimento
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Abastecimento'
  ClientHeight = 532
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object prtAbastecimento: TRLReport
    Left = 8
    Top = 20
    Width = 794
    Height = 1123
    DataSource = dtmAcoesBanco.dsRelAbastecimento
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object grpData: TRLGroup
      Left = 38
      Top = 77
      Width = 718
      Height = 292
      DataFields = 'Data'
      object bndData: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 35
        BandType = btHeader
        object lblData: TRLLabel
          Left = 16
          Top = 12
          Width = 45
          Height = 16
          Caption = 'Data : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object txtData: TRLDBText
          Left = 86
          Top = 12
          Width = 31
          Height = 16
          DataField = 'Data'
          DataSource = dtmAcoesBanco.dsRelAbastecimento
          Text = ''
        end
      end
      object grpTanque: TRLGroup
        Left = 0
        Top = 35
        Width = 718
        Height = 210
        DataFields = 'Tanque'
        object bndTanque: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 37
          BandType = btHeader
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          Borders.FixedBottom = True
          object RLLabel1: TRLLabel
            Left = 16
            Top = 11
            Width = 64
            Height = 16
            Caption = 'Tanque : '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object txtTanque: TRLDBText
            Left = 86
            Top = 11
            Width = 46
            Height = 16
            DataField = 'Tanque'
            DataSource = dtmAcoesBanco.dsRelAbastecimento
            Text = ''
          end
        end
        object grpBomba: TRLGroup
          Left = 0
          Top = 37
          Width = 718
          Height = 132
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataFields = 'Bomba'
          object bndBomba: TRLBand
            Left = 0
            Top = 0
            Width = 718
            Height = 53
            BandType = btHeader
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = False
            Borders.DrawBottom = True
            Borders.FixedBottom = True
            object lblBomba: TRLLabel
              Left = 16
              Top = 6
              Width = 61
              Height = 16
              Caption = 'Bomba : '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object txtBomba: TRLDBText
              Left = 86
              Top = 6
              Width = 45
              Height = 16
              DataField = 'Bomba'
              DataSource = dtmAcoesBanco.dsRelAbastecimento
              Text = ''
            end
            object lblCombustivel: TRLLabel
              Left = 212
              Top = 6
              Width = 98
              Height = 16
              Caption = 'Combustivel  : '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object txtCombustivel: TRLDBText
              Left = 308
              Top = 6
              Width = 74
              Height = 16
              DataField = 'Combustivel'
              DataSource = dtmAcoesBanco.dsRelAbastecimento
              Text = ''
            end
            object lblFormaPagamento: TRLLabel
              Left = 79
              Top = 33
              Width = 142
              Height = 16
              Caption = 'Forma de Pagamento'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblHora: TRLLabel
              Left = 16
              Top = 33
              Width = 34
              Height = 16
              Caption = 'Hora'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblVlrLitro: TRLLabel
              Left = 232
              Top = 33
              Width = 91
              Height = 16
              Caption = 'Valor do Litro'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblQtdLitros: TRLLabel
              Left = 348
              Top = 33
              Width = 65
              Height = 16
              Caption = 'Qtd Litros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblImposto: TRLLabel
              Left = 435
              Top = 33
              Width = 54
              Height = 16
              Caption = 'Imposto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblTaxa: TRLLabel
              Left = 516
              Top = 33
              Width = 36
              Height = 16
              Caption = 'Taxa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Valor: TRLLabel
              Left = 627
              Top = 33
              Width = 38
              Height = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
          object bndDetalhe: TRLBand
            Left = 0
            Top = 53
            Width = 718
            Height = 27
            object txtHora: TRLDBText
              Left = 17
              Top = 6
              Width = 31
              Height = 16
              Alignment = taCenter
              DataField = 'Hora'
              DataSource = dtmAcoesBanco.dsRelAbastecimento
              Text = ''
            end
            object txtFormaPagamento: TRLDBText
              Left = 79
              Top = 6
              Width = 107
              Height = 16
              DataField = 'FormaPagamento'
              DataSource = dtmAcoesBanco.dsRelAbastecimento
              Text = ''
            end
            object txtVlrLitro: TRLDBText
              Left = 232
              Top = 6
              Width = 91
              Height = 16
              Alignment = taRightJustify
              DataField = 'ValorCombustivelId'
              DataSource = dtmAcoesBanco.dsRelAbastecimento
              Text = ''
            end
            object txtQtdLitros: TRLDBText
              Left = 362
              Top = 6
              Width = 36
              Height = 16
              DataField = 'Litros'
              DataSource = dtmAcoesBanco.dsRelAbastecimento
              Text = ''
            end
            object txtImposto: TRLDBText
              Left = 437
              Top = 6
              Width = 50
              Height = 16
              DataField = 'Imposto'
              DataSource = dtmAcoesBanco.dsRelAbastecimento
              Text = ''
            end
            object txtTaxa: TRLDBText
              Left = 518
              Top = 6
              Width = 32
              Height = 16
              DataField = 'Taxa'
              DataSource = dtmAcoesBanco.dsRelAbastecimento
              Text = ''
            end
            object txtValor: TRLDBText
              Left = 631
              Top = 6
              Width = 34
              Height = 16
              Alignment = taRightJustify
              DataField = 'Valor'
              DataSource = dtmAcoesBanco.dsRelAbastecimento
              DisplayMask = '###,###,##0.00'
              Text = ''
            end
          end
          object bndTotalBomba: TRLBand
            Left = 0
            Top = 80
            Width = 718
            Height = 33
            BandType = btFooter
            object rsltValorBomba: TRLDBResult
              Left = 552
              Top = 10
              Width = 113
              Height = 16
              Alignment = taRightJustify
              DataField = 'Valor'
              DataSource = dtmAcoesBanco.dsRelAbastecimento
              DisplayMask = '###,###,##0.00'
              Info = riSum
              ResetAfterPrint = True
              Text = ''
            end
            object lblTotal1: TRLLabel
              Left = 497
              Top = 10
              Width = 48
              Height = 16
              Alignment = taRightJustify
              Caption = 'Total : '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object bndTotalBomba1: TRLBand
          Left = 0
          Top = 169
          Width = 718
          Height = 33
          BandType = btFooter
          object rsltValor: TRLDBResult
            Left = 348
            Top = 6
            Width = 73
            Height = 16
            Alignment = taRightJustify
            DataField = 'Litros'
            DataSource = dtmAcoesBanco.dsRelAbastecimento
            Info = riSum
            ResetAfterPrint = True
            Text = ''
          end
          object lblTotal2: TRLLabel
            Left = 255
            Top = 6
            Width = 87
            Height = 16
            Alignment = taRightJustify
            Caption = 'Total Litros : '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object RLBand1: TRLBand
        Left = 0
        Top = 245
        Width = 718
        Height = 29
        BandType = btFooter
        object RLLabel2: TRLLabel
          Left = 440
          Top = 6
          Width = 81
          Height = 16
          Alignment = taRightJustify
          Caption = 'Total Data : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object rsltValor1: TRLDBResult
          Left = 592
          Top = 6
          Width = 73
          Height = 16
          Alignment = taRightJustify
          DataField = 'Valor'
          DataSource = dtmAcoesBanco.dsRelAbastecimento
          DisplayMask = '###,###,##0.00'
          Info = riSum
          Text = ''
        end
      end
    end
    object bndTitulo: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 39
      BandType = btHeader
      object lblTitulo: TRLLabel
        Left = 220
        Top = 7
        Width = 278
        Height = 24
        Align = faCenter
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Abastecimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -20
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object bndSumario: TRLBand
      Left = 38
      Top = 369
      Width = 718
      Height = 29
      BandType = btSummary
      object lblTotal: TRLLabel
        Left = 434
        Top = 6
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total Geral : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rsltTotalGeral: TRLDBResult
        Left = 556
        Top = 6
        Width = 109
        Height = 16
        Alignment = taRightJustify
        DataField = 'Valor'
        DataSource = dtmAcoesBanco.dsRelAbastecimento
        DisplayMask = '###,###,##0.00'
        Info = riSum
        Text = ''
      end
      object RLLabel3: TRLLabel
        Left = 255
        Top = 6
        Width = 87
        Height = 16
        Alignment = taRightJustify
        Caption = 'Total Litros : '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 348
        Top = 6
        Width = 73
        Height = 16
        Alignment = taRightJustify
        DataField = 'Litros'
        DataSource = dtmAcoesBanco.dsRelAbastecimento
        Info = riSum
        ResetAfterPrint = True
        Text = ''
      end
    end
  end
end
