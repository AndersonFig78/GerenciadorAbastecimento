unit UAcoesBanco;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Dialogs, FireDAC.Comp.UI;

type
  TdtmAcoesBanco = class(TDataModule)
    cnnBanco: TFDConnection;
    qryTiposMestre: TFDQuery;
    qryTipos: TFDQuery;
    qryTiposTiposId: TFDAutoIncField;
    qryTiposTiposMestreId: TIntegerField;
    qryTiposDescricao: TStringField;
    qryTiposAtivo: TBooleanField;
    qryTiposInseridoEm: TDateTimeField;
    qryImposto: TFDQuery;
    qryImpostoImpostoId: TFDAutoIncField;
    qryImpostoDescricao: TStringField;
    qryImpostoTaxa: TBCDField;
    qryImpostoFormula: TStringField;
    qryImpostoAtivo: TBooleanField;
    qryImpostoInseridoEm: TDateTimeField;
    qryValorCombustivel: TFDQuery;
    qryValorCombustivelValorCombustivelId: TFDAutoIncField;
    qryValorCombustivelCombustivelTiposId: TIntegerField;
    qryValorCombustivelValorLitro: TBCDField;
    qryValorCombustivelAtivo: TBooleanField;
    qryValorCombustivelInseridoEm: TDateTimeField;
    qryTanque: TFDQuery;
    qryTanqueTanqueId: TFDAutoIncField;
    qryTanqueDescricao: TStringField;
    qryTanqueCombustivelTiposId: TIntegerField;
    qryTanqueCapacidade: TIntegerField;
    qryTanqueSituacaoAtual: TIntegerField;
    qryTanqueAtivo: TBooleanField;
    qryTanqueInseridoEm: TDateTimeField;
    qryFuncionario: TFDQuery;
    qryFuncionarioFuncionarioId: TFDAutoIncField;
    qryFuncionarioNome: TStringField;
    qryFuncionarioCargoTiposId: TIntegerField;
    qryFuncionarioAtivo: TBooleanField;
    qryFuncionarioInseridoEm: TDateTimeField;
    qryBomba: TFDQuery;
    qryBombaBombaId: TFDAutoIncField;
    qryBombaDescricao: TStringField;
    qryBombaTanqueId: TIntegerField;
    qryBombaAtivo: TBooleanField;
    qryBombaInseridoEm: TDateTimeField;
    qryAbastecimento: TFDQuery;
    qryAbastecimentoAbastecimentoId: TFDAutoIncField;
    qryAbastecimentoFuncionarioId: TIntegerField;
    qryAbastecimentoBombaId: TIntegerField;
    qryAbastecimentoFormaPagamentoTiposId: TIntegerField;
    qryAbastecimentoValorCombustivelId: TIntegerField;
    qryAbastecimentoImpostoId: TIntegerField;
    qryAbastecimentoValor: TBCDField;
    qryAbastecimentoAtivo: TBooleanField;
    qryAbastecimentoInseridoEm: TDateTimeField;
    dsAbastecimento: TDataSource;
    dsBomba: TDataSource;
    dsFuncionario: TDataSource;
    dsTanque: TDataSource;
    dsValorCombustivel: TDataSource;
    dsImposto: TDataSource;
    dsTipos: TDataSource;
    dsTiposMestre: TDataSource;
    SQLiteDriverLink: TFDPhysSQLiteDriverLink;
    WaitCursor: TFDGUIxWaitCursor;
    qryTiposMestreTiposMestreId: TFDAutoIncField;
    qryTiposMestreDescricao: TStringField;
    qryTiposMestreAtivo: TBooleanField;
    qryTiposMestreInseridoEm: TDateTimeField;
    qryTiposTiposMestreDescricao: TStringField;
    qryCombusiveis: TFDQuery;
    qryCombusiveisTiposId: TFDAutoIncField;
    qryCombusiveisDescricao: TStringField;
    dsCombusiveis: TDataSource;
    qryValorCombustivelCombustivelDescrical: TStringField;
    qryTanqueCombustivelDescricao: TStringField;
    strngfldBombaTanqueDescricao: TStringField;
    qryBombaCombustivelDescricao: TStringField;
    qryCargos: TFDQuery;
    dsCargos: TDataSource;
    qryFuncionarioCargoDescicao: TStringField;
    qryCargosTiposId: TFDAutoIncField;
    qryCargosDescricao: TStringField;
    qryAbastecimentoFuncionarioNome: TStringField;
    qryAbastecimentoFuncionarioCargo: TStringField;
    qryAbastecimentoBombaDescricao: TStringField;
    qryAbastecimentoBombaCombustivel: TStringField;
    qryAbastecimentoImpostoDescricao: TStringField;
    qryAbastecimentoFormaPagamentoDescicao: TStringField;
    qryAbastecimentoTanquelId: TIntegerField;
    qryAbastecimentoCombustivelId: TIntegerField;
    qryAbastecimentoValorCombustivel: TFloatField;
    qryAbastecimentoImpostoTaxa: TFloatField;
    qryFormaPagamento: TFDQuery;
    qryFormaPagamentoTiposId: TFDAutoIncField;
    qryFormaPagamentoDescricao: TStringField;
    qryAbastecimentoLitros: TBCDField;
    dsFormaPagamento: TDataSource;
    qryRelAbastecimento: TFDQuery;
    qryRelAbastecimentoAbastecimentoId: TFDAutoIncField;
    qryRelAbastecimentoFuncionarioId: TIntegerField;
    qryRelAbastecimentoNomeFuncionario: TStringField;
    qryRelAbastecimentoBombaId: TIntegerField;
    qryRelAbastecimentoBomba: TStringField;
    qryRelAbastecimentoTanque: TStringField;
    qryRelAbastecimentoCombustivel: TStringField;
    qryRelAbastecimentoFormaPagamentoTiposId: TIntegerField;
    qryRelAbastecimentoValorCombustivelId: TIntegerField;
    qryRelAbastecimentoLitros: TBCDField;
    qryRelAbastecimentoImpostoId: TIntegerField;
    qryRelAbastecimentoImposto: TStringField;
    qryRelAbastecimentoTaxa: TBCDField;
    qryRelAbastecimentoValor: TBCDField;
    qryRelAbastecimentoAtivo: TBooleanField;
    dsRelAbastecimento: TDataSource;
    qryRelAbastecimentoData: TWideStringField;
    qryRelAbastecimentoFormaPagamento: TStringField;
    qryRelAbastecimentoHora: TWideStringField;
    procedure qryTiposMestreAfterInsert(DataSet: TDataSet);
    procedure qryTiposAfterInsert(DataSet: TDataSet);
    procedure qryImpostoAfterInsert(DataSet: TDataSet);
    procedure qryValorCombustivelAfterInsert(DataSet: TDataSet);
    procedure qryTanqueAfterInsert(DataSet: TDataSet);
    procedure qryFuncionarioAfterInsert(DataSet: TDataSet);
    procedure qryBombaAfterInsert(DataSet: TDataSet);
    procedure qryAbastecimentoAfterInsert(DataSet: TDataSet);
    procedure qryTiposAfterClose(DataSet: TDataSet);
    procedure qryValorCombustivelAfterClose(DataSet: TDataSet);
    procedure qryTanqueAfterClose(DataSet: TDataSet);
    procedure qryFuncionarioAfterClose(DataSet: TDataSet);
    procedure qryBombaAfterClose(DataSet: TDataSet);
    procedure qryAbastecimentoAfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ConectarBanco;
    procedure DesconectarBanco;
  end;

var
  dtmAcoesBanco: TdtmAcoesBanco;

implementation

uses
  UGlobalSistema;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdtmAcoesBanco }

procedure TdtmAcoesBanco.ConectarBanco;
var
  CaminhoBase : string;
begin
  try
    DesconectarBanco;
    CaminhoBase := ExtractFileDir(GetCurrentDir);
    CaminhoBase := Copy(CaminhoBase, 0, Pos('GerenciadorAbastecimento', CaminhoBase)+Length('GerenciadorAbastecimento'));
    CaminhoBase := CaminhoBase +'banco\dbAbastecimento.db';
    cnnBanco.Params.Database := CaminhoBase;
    cnnBanco.Connected := True;
  except on E: Exception do
    Advertencia('Erro ao conectar no banco de dados.');
  end;
end;

procedure TdtmAcoesBanco.DesconectarBanco;
begin
  cnnBanco.Connected := False;
end;

procedure TdtmAcoesBanco.qryAbastecimentoAfterClose(DataSet: TDataSet);
begin
  qryAbastecimento.Filtered := False;
end;

procedure TdtmAcoesBanco.qryAbastecimentoAfterInsert(DataSet: TDataSet);
begin
  qryAbastecimentoAtivo.Value := True;
  qryAbastecimentoInseridoEm.Value := Now;
end;

procedure TdtmAcoesBanco.qryBombaAfterClose(DataSet: TDataSet);
begin
  qryBomba.Filtered := False;
end;

procedure TdtmAcoesBanco.qryBombaAfterInsert(DataSet: TDataSet);
begin
  qryBombaAtivo.Value := True;
  qryBombaInseridoEm.Value := Now;
end;

procedure TdtmAcoesBanco.qryFuncionarioAfterClose(DataSet: TDataSet);
begin
  qryFuncionario.Filtered := False;
end;

procedure TdtmAcoesBanco.qryFuncionarioAfterInsert(DataSet: TDataSet);
begin
  qryFuncionarioAtivo.Value := True;
  qryFuncionarioInseridoEm.Value := Now;
end;

procedure TdtmAcoesBanco.qryImpostoAfterInsert(DataSet: TDataSet);
begin
  qryImpostoAtivo.Value := True;
  qryImpostoInseridoEm.Value := Now;
end;

procedure TdtmAcoesBanco.qryTanqueAfterClose(DataSet: TDataSet);
begin
  qryTanque.Filtered := False;
end;

procedure TdtmAcoesBanco.qryTanqueAfterInsert(DataSet: TDataSet);
begin
  qryTanqueAtivo.Value := True;
  qryTanqueInseridoEm.Value := Now;
end;

procedure TdtmAcoesBanco.qryTiposAfterClose(DataSet: TDataSet);
begin
  qryTipos.Filtered := False;
end;

procedure TdtmAcoesBanco.qryTiposAfterInsert(DataSet: TDataSet);
begin
  qryTiposAtivo.Value := True;
  qryTiposInseridoEm.Value := Now;
end;

procedure TdtmAcoesBanco.qryTiposMestreAfterInsert(DataSet: TDataSet);
begin
  qryTiposMestreInseridoEm.Value := Now;
  qryTiposMestreAtivo.Value := True;
end;

procedure TdtmAcoesBanco.qryValorCombustivelAfterClose(DataSet: TDataSet);
begin
  qryValorCombustivel.Filtered := False;
end;

procedure TdtmAcoesBanco.qryValorCombustivelAfterInsert(DataSet: TDataSet);
begin
  qryValorCombustivelAtivo.Value := True;
  qryValorCombustivelInseridoEm.Value := Now;
end;

end.
