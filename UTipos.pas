unit UTipos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFormularioPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmTipos = class(TFrmFormularioPadrao)
    Label1: TLabel;
    edtTiposId: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtDescricao: TDBEdit;
    chkAtivo: TDBCheckBox;
    Label4: TLabel;
    edtInseridoEm: TDBEdit;
    cbbTiposMestreId: TDBLookupComboBox;
    dbg1: TDBGrid;
    chkFiltro: TCheckBox;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure chkFiltroClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure cbbTiposMestreIdClick(Sender: TObject);
  private
    { Private declarations }
    function ValidarRegistro : Boolean;
    procedure FiltroTipo;
  public
    { Public declarations }
  end;

var
  FrmTipos: TFrmTipos;

implementation

uses
  UAcoesBanco, UGlobalSistema;

{$R *.dfm}

procedure TFrmTipos.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryTipos.State in [dsInsert, dsEdit] then
  begin
    if Confirme('Você deseja realmente cancelar esse registro?') then
      dtmAcoesBanco.qryTipos.Cancel;
  end;
end;

procedure TFrmTipos.btnEditarClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryTipos.Edit;
  cbbTiposMestreId.KeyValue := dtmAcoesBanco.qryTiposTiposMestreId.Value;
  edtDescricao.SetFocus;
end;

procedure TFrmTipos.btnGravarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryTipos.State in [dsInsert, dsEdit] then
  begin
    if ValidarRegistro then
    begin
      dtmAcoesBanco.qryTiposTiposMestreId.Value := cbbTiposMestreId.KeyValue;
      dtmAcoesBanco.qryTipos.Post;
    end;
  end;
end;

procedure TFrmTipos.btnNovoClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryTipos.Append;
  dtmAcoesBanco.qryTiposTiposMestreId.Value := cbbTiposMestreId.KeyValue;
  edtDescricao.SetFocus;
end;

procedure TFrmTipos.btnSairClick(Sender: TObject);
begin
  btnCancelar.Click;
  inherited;
end;

procedure TFrmTipos.cbbTiposMestreIdClick(Sender: TObject);
begin
  inherited;
  FiltroTipo;
end;

procedure TFrmTipos.chkFiltroClick(Sender: TObject);
begin
  inherited;
  FiltroTipo;
end;

procedure TFrmTipos.FiltroTipo;
begin
  dtmAcoesBanco.qryTipos.Filter := 'TiposMestreId = ' + IntToStr(cbbTiposMestreId.KeyValue);
  dtmAcoesBanco.qryTipos.Filtered := chkFiltro.Checked;
end;

procedure TFrmTipos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmAcoesBanco.qryTiposMestre.Close;
  dtmAcoesBanco.qryTipos.Close;
  dtmAcoesBanco.DesconectarBanco;
end;

procedure TFrmTipos.FormShow(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.ConectarBanco;
  dtmAcoesBanco.qryTiposMestre.Open;
  cbbTiposMestreId.KeyValue := dtmAcoesBanco.qryTiposMestreTiposMestreId.Value;
  dtmAcoesBanco.qryTipos.Open;
end;

function TFrmTipos.ValidarRegistro: Boolean;
begin
  Result := True;
  if trim(edtDescricao.Text) = '' then
  begin
    Informacao('O campo Descrição não foi preencido.');
    Result := False;
  end;
end;

end.
