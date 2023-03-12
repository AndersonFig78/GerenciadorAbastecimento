unit UValorCombustivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFormularioPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmValorCombustivel = class(TFrmFormularioPadrao)
    Label2: TLabel;
    cbbCombustivel: TDBLookupComboBox;
    chkFiltro: TCheckBox;
    Label1: TLabel;
    edtValorCombustivelId: TDBEdit;
    Label4: TLabel;
    edtValorLitro: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    dbgCombustivel: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chkFiltroClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure cbbCombustivelClick(Sender: TObject);
  private
    { Private declarations }
    function ValidarRegistro : Boolean;
    procedure FiltroCombustivel;
  public
    { Public declarations }
  end;

var
  FrmValorCombustivel: TFrmValorCombustivel;

implementation

uses
  UAcoesBanco, UGlobalSistema;

{$R *.dfm}

procedure TFrmValorCombustivel.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryValorCombustivel.State in [dsInsert, dsEdit] then
  begin
    if Confirme('Você deseja realmente cancelar esse registro?') then
      dtmAcoesBanco.qryValorCombustivel.Cancel;
  end;
end;

procedure TFrmValorCombustivel.btnEditarClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryValorCombustivel.Edit;
  cbbCombustivel.KeyValue := dtmAcoesBanco.qryValorCombustivelCombustivelTiposId.Value;
  edtValorLitro.SetFocus;
end;

procedure TFrmValorCombustivel.btnGravarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryValorCombustivel.State in [dsInsert, dsEdit] then
  begin
    if ValidarRegistro then
    begin
      dtmAcoesBanco.qryValorCombustivelCombustivelTiposId.Value := cbbCombustivel.KeyValue;
      dtmAcoesBanco.qryValorCombustivel.Post;
    end;
  end;
end;

procedure TFrmValorCombustivel.btnNovoClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryValorCombustivel.Append;
  dtmAcoesBanco.qryValorCombustivelCombustivelTiposId.Value := cbbCombustivel.KeyValue;
  edtValorLitro.SetFocus;
end;

procedure TFrmValorCombustivel.btnSairClick(Sender: TObject);
begin
  btnCancelar.Click;
  inherited;
end;

procedure TFrmValorCombustivel.cbbCombustivelClick(Sender: TObject);
begin
  inherited;
  FiltroCombustivel;
end;

procedure TFrmValorCombustivel.chkFiltroClick(Sender: TObject);
begin
  inherited;
  FiltroCombustivel;
end;

procedure TFrmValorCombustivel.FiltroCombustivel;
begin
  dtmAcoesBanco.qryValorCombustivel.Filter := 'CombustivelTiposId = ' + IntToStr(cbbCombustivel.KeyValue);
  dtmAcoesBanco.qryValorCombustivel.Filtered := chkFiltro.Checked;
end;

procedure TFrmValorCombustivel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dtmAcoesBanco.qryValorCombustivel.Close;
  dtmAcoesBanco.qryCombusiveis.Close;
  dtmAcoesBanco.qryTipos.Close;
  dtmAcoesBanco.DesconectarBanco;
end;

procedure TFrmValorCombustivel.FormShow(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.ConectarBanco;
  dtmAcoesBanco.qryValorCombustivel.Open;
  dtmAcoesBanco.qryCombusiveis.Open;
  dtmAcoesBanco.qryTipos.Open;
  cbbCombustivel.KeyValue := dtmAcoesBanco.qryCombusiveisTiposId.Value;
end;

function TFrmValorCombustivel.ValidarRegistro: Boolean;
begin
  Result := True;
  if trim(edtValorLitro.Text) = '' then
  begin
    Informacao('O campo Valor do Litro não foi preencido.');
    Result := False;
  end;
end;

end.
