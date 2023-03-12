unit UTanque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFormularioPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmTanque = class(TFrmFormularioPadrao)
    Label2: TLabel;
    cbbCombustivel: TDBLookupComboBox;
    chkFiltro: TCheckBox;
    Label1: TLabel;
    edtTanqueId: TDBEdit;
    Label3: TLabel;
    edtDescricao: TDBEdit;
    Label4: TLabel;
    edtCapacidade: TDBEdit;
    Label5: TLabel;
    edtSituacaoAtual: TDBEdit;
    chkAtivo: TDBCheckBox;
    Label6: TLabel;
    edtInseridoEm: TDBEdit;
    dbgTanque: TDBGrid;
    procedure chkFiltroClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cbbCombustivelClick(Sender: TObject);
  private
    { Private declarations }
    function ValidarRegistro : Boolean;
    procedure FiltroCombustivel;
  public
    { Public declarations }
  end;

var
  FrmTanque: TFrmTanque;

implementation

uses
  UGlobalSistema, UAcoesBanco;

{$R *.dfm}

procedure TFrmTanque.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryTanque.State in [dsInsert, dsEdit] then
  begin
    if Confirme('Você deseja realmente cancelar esse registro?') then
      dtmAcoesBanco.qryTanque.Cancel;
  end;
end;

procedure TFrmTanque.btnEditarClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryTanque.Edit;
  cbbCombustivel.KeyValue := dtmAcoesBanco.qryTanqueCombustivelTiposId.Value;
  edtDescricao.SetFocus;
end;

procedure TFrmTanque.btnGravarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryTanque.State in [dsInsert, dsEdit] then
  begin
    if ValidarRegistro then
    begin
      dtmAcoesBanco.qryTanqueCombustivelTiposId.Value := cbbCombustivel.KeyValue;
      dtmAcoesBanco.qryTanque.Post;
    end;
  end;
end;

procedure TFrmTanque.btnNovoClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryTanque.Append;
  dtmAcoesBanco.qryTanqueCombustivelTiposId.Value := cbbCombustivel.KeyValue;
  edtDescricao.SetFocus;
end;

procedure TFrmTanque.cbbCombustivelClick(Sender: TObject);
begin
  inherited;
  FiltroCombustivel;
end;

procedure TFrmTanque.chkFiltroClick(Sender: TObject);
begin
  inherited;
  FiltroCombustivel;
end;

procedure TFrmTanque.FiltroCombustivel;
begin
  dtmAcoesBanco.qryTanque.Filter := 'CombustivelTiposId = ' + IntToStr(cbbCombustivel.KeyValue);
  dtmAcoesBanco.qryTanque.Filtered := chkFiltro.Checked;
end;

procedure TFrmTanque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmAcoesBanco.qryCombusiveis.Close;
  dtmAcoesBanco.qryTipos.Close;
  dtmAcoesBanco.qryTanque.Close;
  dtmAcoesBanco.DesconectarBanco;
end;

procedure TFrmTanque.FormShow(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.ConectarBanco;
  dtmAcoesBanco.qryCombusiveis.Open;
  dtmAcoesBanco.qryTipos.Open;
  dtmAcoesBanco.qryTanque.Open;
  cbbCombustivel.KeyValue := dtmAcoesBanco.qryCombusiveisTiposId.Value;
end;

function TFrmTanque.ValidarRegistro: Boolean;
begin
  Result := True;
  if trim(edtDescricao.Text) = '' then
  begin
    Informacao('O campo Valor do Litro não foi preencido.');
    Result := False;
  end
  else if trim(edtCapacidade.Text) = '' then
  begin
    Informacao('O campo Capacidade não foi preencido.');
    Result := False;
  end
  else if trim(edtSituacaoAtual.Text) = '' then
  begin
    Informacao('O campo Situação Atual não foi preencido.');
    Result := False;
  end;

end;

end.
