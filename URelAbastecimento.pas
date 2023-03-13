unit URelAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TRelAbastecimento = class(TForm)
    prtAbastecimento: TRLReport;
    grpData: TRLGroup;
    bndTitulo: TRLBand;
    lblTitulo: TRLLabel;
    bndSumario: TRLBand;
    lblTotal: TRLLabel;
    rsltTotalGeral: TRLDBResult;
    bndData: TRLBand;
    lblData: TRLLabel;
    txtData: TRLDBText;
    grpTanque: TRLGroup;
    bndTanque: TRLBand;
    RLLabel1: TRLLabel;
    txtTanque: TRLDBText;
    grpBomba: TRLGroup;
    bndBomba: TRLBand;
    lblBomba: TRLLabel;
    txtBomba: TRLDBText;
    lblCombustivel: TRLLabel;
    txtCombustivel: TRLDBText;
    lblFormaPagamento: TRLLabel;
    lblHora: TRLLabel;
    lblVlrLitro: TRLLabel;
    lblQtdLitros: TRLLabel;
    lblImposto: TRLLabel;
    lblTaxa: TRLLabel;
    Valor: TRLLabel;
    bndDetalhe: TRLBand;
    txtHora: TRLDBText;
    txtFormaPagamento: TRLDBText;
    txtVlrLitro: TRLDBText;
    txtQtdLitros: TRLDBText;
    txtImposto: TRLDBText;
    txtTaxa: TRLDBText;
    txtValor: TRLDBText;
    bndTotalBomba: TRLBand;
    rsltValorBomba: TRLDBResult;
    bndTotalBomba1: TRLBand;
    rsltValor: TRLDBResult;
    lblTotal1: TRLLabel;
    lblTotal2: TRLLabel;
    RLBand1: TRLBand;
    RLLabel2: TRLLabel;
    rsltValor1: TRLDBResult;
    RLLabel3: TRLLabel;
    RLDBResult1: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelAbastecimento: TRelAbastecimento;

implementation

uses
  UAcoesBanco;

{$R *.dfm}

end.
