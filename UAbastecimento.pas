unit UAbastecimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFormularioPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB,
  Vcl.Grids, Vcl.DBGrids, System.Math;

type
  TFrmAbastecimento = class(TFrmFormularioPadrao)
    Label1: TLabel;
    edtAbastecimentoId: TDBEdit;
    Label2: TLabel;
    edtLitros: TDBEdit;
    Label3: TLabel;
    edtValor: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label4: TLabel;
    edtInseridoEm: TDBEdit;
    cbbFuncionario: TDBLookupComboBox;
    lblFuncnionario: TLabel;
    dbtxtCargo: TDBText;
    cbbBomba: TDBLookupComboBox;
    lblBomba: TLabel;
    dbtxtCombustivel: TDBText;
    lblImposto: TLabel;
    dbtxtValorCombustivel: TDBText;
    dbgAbastecimento: TDBGrid;
    cbbImposto: TDBLookupComboBox;
    dbtxtTaxa: TDBText;
    cbbFormaPagamento: TDBLookupComboBox;
    lblFormaPagamento: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtValorEnter(Sender: TObject);
    procedure edtLitrosEnter(Sender: TObject);
    procedure edtLitrosChange(Sender: TObject);
    procedure edtValorChange(Sender: TObject);
    procedure cbbBombaClick(Sender: TObject);
    procedure cbbImpostoClick(Sender: TObject);
  private
    { Private declarations }
    function ValidarRegistro: Boolean;
    procedure PreencherValorELitros;
  public
    { Public declarations }
  end;

var
  FrmAbastecimento: TFrmAbastecimento;

implementation

uses
  UGlobalSistema, UAcoesBanco;

var
  QuemFoiAlterado : Integer;
const
  Litros = 1;
  Valor = 2;

{$R *.dfm}

procedure TFrmAbastecimento.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryAbastecimento.State in [dsInsert, dsEdit] then
  begin
    QuemFoiAlterado := 0;
    if Confirme('Você deseja realmente cancelar esse registro?') then
      dtmAcoesBanco.qryAbastecimento.Cancel;
  end;
end;

procedure TFrmAbastecimento.btnEditarClick(Sender: TObject);
begin
  inherited;
  QuemFoiAlterado := 0;
  dtmAcoesBanco.qryAbastecimento.Edit;
  cbbFuncionario.SetFocus;
end;

procedure TFrmAbastecimento.btnGravarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryAbastecimento.State in [dsInsert, dsEdit] then
  begin
    if ValidarRegistro then
    begin
      dtmAcoesBanco.qryAbastecimentoValorCombustivelId.Value := dtmAcoesBanco.qryValorCombustivelValorCombustivelId.Value;
      dtmAcoesBanco.qryAbastecimento.Post;
      QuemFoiAlterado := 0;
    end;
  end;
end;

procedure TFrmAbastecimento.btnNovoClick(Sender: TObject);
begin
  inherited;
  QuemFoiAlterado := 0;
  dtmAcoesBanco.qryAbastecimento.Append;
  dtmAcoesBanco.qryAbastecimentoFuncionarioId.Value := dtmAcoesBanco.qryFuncionarioFuncionarioId.Value;
  dtmAcoesBanco.qryAbastecimentoBombaId.Value := dtmAcoesBanco.qryBombaBombaId.Value;
  dtmAcoesBanco.qryAbastecimentoImpostoId.Value := dtmAcoesBanco.qryImpostoImpostoId.Value;
  dtmAcoesBanco.qryAbastecimentoFormaPagamentoTiposId.Value := dtmAcoesBanco.qryFormaPagamentoTiposId.Value;
  cbbFuncionario.KeyValue := dtmAcoesBanco.qryFuncionarioFuncionarioId.Value;
  cbbBomba.KeyValue := dtmAcoesBanco.qryBombaBombaId.Value;
  cbbImposto.KeyValue := dtmAcoesBanco.qryImpostoImpostoId.Value;
  cbbFormaPagamento.KeyValue := dtmAcoesBanco.qryFormaPagamentoTiposId.Value;

  cbbFuncionario.SetFocus;
end;

procedure TFrmAbastecimento.cbbBombaClick(Sender: TObject);
begin
  inherited;
  PreencherValorELitros;
end;

procedure TFrmAbastecimento.cbbImpostoClick(Sender: TObject);
begin
  inherited;
  PreencherValorELitros;
end;

procedure TFrmAbastecimento.edtLitrosChange(Sender: TObject);
begin
  inherited;
  PreencherValorELitros;
end;

procedure TFrmAbastecimento.edtLitrosEnter(Sender: TObject);
begin
  inherited;
  QuemFoiAlterado := Litros;
end;

procedure TFrmAbastecimento.edtValorChange(Sender: TObject);
begin
  inherited;
  PreencherValorELitros;
end;

procedure TFrmAbastecimento.edtValorEnter(Sender: TObject);
begin
  inherited;
  QuemFoiAlterado := Valor;
end;

procedure TFrmAbastecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmAcoesBanco.qryTipos.Close;
  dtmAcoesBanco.qryBomba.Close;
  dtmAcoesBanco.qryTanque.Close;
  dtmAcoesBanco.qryFuncionario.Close;
  dtmAcoesBanco.qryImposto.Close;
  dtmAcoesBanco.qryAbastecimento.Close;
  dtmAcoesBanco.qryFormaPagamento.Close;
  dtmAcoesBanco.qryValorCombustivel.Close;
  dtmAcoesBanco.DesconectarBanco;
end;

procedure TFrmAbastecimento.FormShow(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.ConectarBanco;
  dtmAcoesBanco.qryTipos.Open;
  dtmAcoesBanco.qryBomba.Open;
  dtmAcoesBanco.qryTanque.Open;
  dtmAcoesBanco.qryFuncionario.Open;
  dtmAcoesBanco.qryImposto.Open;
  dtmAcoesBanco.qryAbastecimento.Open;
  dtmAcoesBanco.qryFormaPagamento.Open;
  dtmAcoesBanco.qryValorCombustivel.Open;

  dtmAcoesBanco.qryBomba.Filter := 'Ativo = 1';
  dtmAcoesBanco.qryBomba.Filtered := True;
  dtmAcoesBanco.qryTanque.Filter := 'Ativo = 1';
  dtmAcoesBanco.qryTanque.Filtered := True;
  dtmAcoesBanco.qryFuncionario.Filter := 'Ativo = 1';
  dtmAcoesBanco.qryFuncionario.Filtered := True;
  dtmAcoesBanco.qryImposto.Filter := 'Ativo = 1';
  dtmAcoesBanco.qryImposto.Filtered := True;
  dtmAcoesBanco.qryValorCombustivel.Filter := 'Ativo = 1';
  dtmAcoesBanco.qryValorCombustivel.Filtered := True;

  QuemFoiAlterado := 0;

  dtmAcoesBanco.qryFuncionario.Open;
end;

procedure TFrmAbastecimento.PreencherValorELitros;
var
  Calculo : Double;
begin
  if (QuemFoiAlterado = Litros) and (edtLitros.text <> '') and (StrToInt(edtLitros.text) > 0) then
  begin
    Calculo := dtmAcoesBanco.qryAbastecimentoValorCombustivel.Value * StrToInt(edtLitros.text);
    Calculo := Calculo * (1+dtmAcoesBanco.qryAbastecimentoImpostoTaxa.Value);
    dtmAcoesBanco.qryAbastecimentoValor.Value := RoundTo(Calculo, -2);
  end
  else if (QuemFoiAlterado = Valor) and (edtValor.text <> '') and (StrToFloat(edtValor.text) > 0) then
  begin
    Calculo := dtmAcoesBanco.qryAbastecimentoValorCombustivel.Value * (1+dtmAcoesBanco.qryAbastecimentoImpostoTaxa.Value);
    Calculo := StrToFloat(edtValor.text)/Calculo;
    dtmAcoesBanco.qryAbastecimentoLitros.Value := Calculo;
  end;

end;

function TFrmAbastecimento.ValidarRegistro: Boolean;
begin
  Result := True;
  if trim(edtLitros.Text) = '' then
  begin
    Informacao('O campo Litros não foi preencido.');
    Result := False;
  end
  else if trim(edtValor.Text) = '' then
  begin
    Informacao('O campo Valor não foi preencido.');
    Result := False;
  end;
end;

end.
