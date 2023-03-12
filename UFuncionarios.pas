unit UFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFormularioPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmFuncionarios = class(TFrmFormularioPadrao)
    Label2: TLabel;
    cbbCargos: TDBLookupComboBox;
    chkFiltro: TCheckBox;
    Label1: TLabel;
    edtFuncionarioId: TDBEdit;
    Label3: TLabel;
    edtNome: TDBEdit;
    chkAtivo: TDBCheckBox;
    Label4: TLabel;
    edtInseridoEm: TDBEdit;
    dbgFuncionarios: TDBGrid;
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure chkFiltroClick(Sender: TObject);
    procedure cbbCargosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    function ValidarRegistro : Boolean;
    procedure FiltroCargo;
  public
    { Public declarations }
  end;

var
  FrmFuncionarios: TFrmFuncionarios;

implementation

uses
  UAcoesBanco, UGlobalSistema;

{$R *.dfm}

procedure TFrmFuncionarios.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryFuncionario.State in [dsInsert, dsEdit] then
  begin
    if Confirme('Você deseja realmente cancelar esse registro?') then
      dtmAcoesBanco.qryFuncionario.Cancel;
  end;
end;

procedure TFrmFuncionarios.btnEditarClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryFuncionario.Edit;
  cbbCargos.KeyValue := dtmAcoesBanco.qryFuncionarioCargoTiposId.Value;
  edtNome.SetFocus;
end;

procedure TFrmFuncionarios.btnGravarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryFuncionario.State in [dsInsert, dsEdit] then
  begin
    if ValidarRegistro then
    begin
      dtmAcoesBanco.qryFuncionarioCargoTiposId.Value := cbbCargos.KeyValue;
      dtmAcoesBanco.qryFuncionario.Post;
    end;
  end;
end;

procedure TFrmFuncionarios.btnNovoClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryFuncionario.Append;
  dtmAcoesBanco.qryFuncionarioCargoTiposId.Value := cbbCargos.KeyValue;
  edtNome.SetFocus;
end;

procedure TFrmFuncionarios.btnSairClick(Sender: TObject);
begin
  btnCancelar.Click;
  inherited;
end;

procedure TFrmFuncionarios.cbbCargosClick(Sender: TObject);
begin
  inherited;
  FiltroCargo;
end;

procedure TFrmFuncionarios.chkFiltroClick(Sender: TObject);
begin
  inherited;
  FiltroCargo;
end;

procedure TFrmFuncionarios.FiltroCargo;
begin
  dtmAcoesBanco.qryFuncionario.Filter := 'CargoTiposId = ' + IntToStr(cbbCargos.KeyValue);
  dtmAcoesBanco.qryFuncionario.Filtered := chkFiltro.Checked;
end;

procedure TFrmFuncionarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmAcoesBanco.qryTipos.Close;
  dtmAcoesBanco.qryCargos.Close;
  dtmAcoesBanco.qryFuncionario.Close;
  dtmAcoesBanco.DesconectarBanco;
end;

procedure TFrmFuncionarios.FormShow(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.ConectarBanco;
  dtmAcoesBanco.qryTipos.Open;
  dtmAcoesBanco.qryCargos.Open;
  cbbCargos.KeyValue := dtmAcoesBanco.qryCargosTiposId.Value;
  dtmAcoesBanco.qryFuncionario.Open;
end;

function TFrmFuncionarios.ValidarRegistro: Boolean;
begin
  Result := True;
  if trim(edtNome.Text) = '' then
  begin
    Informacao('O campo Nome não foi preencido.');
    Result := False;
  end;
end;

end.
