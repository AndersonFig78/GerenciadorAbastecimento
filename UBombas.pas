unit UBombas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFormularioPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmBombas = class(TFrmFormularioPadrao)
    Label2: TLabel;
    cbbTanque: TDBLookupComboBox;
    chkFiltro: TCheckBox;
    dbtxtCombustivel: TDBText;
    Label1: TLabel;
    edtBombaId: TDBEdit;
    Label3: TLabel;
    edtDescricao: TDBEdit;
    chkAtivo: TDBCheckBox;
    Label4: TLabel;
    edtInseridoEm: TDBEdit;
    dbgBombas: TDBGrid;
    procedure cbbTanqueClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure chkFiltroClick(Sender: TObject);
  private
    { Private declarations }
    function ValidarRegistro : Boolean;
    procedure FiltroTanque;
  public
    { Public declarations }
  end;

var
  FrmBombas: TFrmBombas;

implementation

uses
  UGlobalSistema, UAcoesBanco;

{$R *.dfm}

{ TFrmBombas }

procedure TFrmBombas.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryBomba.State in [dsInsert, dsEdit] then
  begin
    if Confirme('Você deseja realmente cancelar esse registro?') then
      dtmAcoesBanco.qryBomba.Cancel;
  end;
end;

procedure TFrmBombas.btnEditarClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryBomba.Edit;
  cbbTanque.KeyValue := dtmAcoesBanco.qryBombaTanqueId.Value;
  edtDescricao.SetFocus;
end;

procedure TFrmBombas.btnGravarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryBomba.State in [dsInsert, dsEdit] then
  begin
    if ValidarRegistro then
    begin
      dtmAcoesBanco.qryBombaTanqueId.Value := cbbTanque.KeyValue;
      dtmAcoesBanco.qryBomba.Post;
    end;
  end;
end;

procedure TFrmBombas.btnNovoClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryBomba.Append;
  dtmAcoesBanco.qryBombaTanqueId.Value := cbbTanque.KeyValue;
  edtDescricao.SetFocus;
end;

procedure TFrmBombas.btnSairClick(Sender: TObject);
begin
  btnCancelar.Click;
  inherited;
 end;

procedure TFrmBombas.cbbTanqueClick(Sender: TObject);
begin
  inherited;
  FiltroTanque;
end;

procedure TFrmBombas.chkFiltroClick(Sender: TObject);
begin
  inherited;
  FiltroTanque;
end;

procedure TFrmBombas.FiltroTanque;
begin
  dtmAcoesBanco.qryBomba.Filter := 'TanqueId = ' + IntToStr(cbbTanque.KeyValue);
  dtmAcoesBanco.qryBomba.Filtered := chkFiltro.Checked;
end;


procedure TFrmBombas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmAcoesBanco.qryTipos.Close;
  dtmAcoesBanco.qryTanque.Close;
  dtmAcoesBanco.qryBomba.Close;
  dtmAcoesBanco.DesconectarBanco;
end;

procedure TFrmBombas.FormShow(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.ConectarBanco;
  dtmAcoesBanco.qryTipos.Open;
  dtmAcoesBanco.qryTanque.Open;
  cbbTanque.KeyValue := dtmAcoesBanco.qryTanqueTanqueId.Value;
  dtmAcoesBanco.qryBomba.Open;
end;

function TFrmBombas.ValidarRegistro: Boolean;
begin
  Result := True;
  if trim(edtDescricao.Text) = '' then
  begin
    Informacao('O campo Descrição não foi preencido.');
    Result := False;
  end;
end;

end.
