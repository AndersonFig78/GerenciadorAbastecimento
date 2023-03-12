unit UTiposMestre;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFormularioPadrao, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.DBCtrls, Vcl.Mask;

type
  TFrmTiposMestre = class(TfrmFormularioPadrao)
    dbgTiposMestre: TDBGrid;
    Label1: TLabel;
    edtTiposMestreId: TDBEdit;
    Label2: TLabel;
    edtDescricao: TDBEdit;
    chkAtivo: TDBCheckBox;
    Label3: TLabel;
    edtInseridoEm: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
    function ValidarRegistro : Boolean;
  public
    { Public declarations }
  end;

var
  FrmTiposMestre: TFrmTiposMestre;

implementation

uses
  UAcoesBanco, UGlobalSistema;

{$R *.dfm}

procedure TFrmTiposMestre.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryTiposMestre.State in [dsInsert, dsEdit] then
  begin
    if Confirme('Você deseja realmente cancelar esse registro?') then
      dtmAcoesBanco.qryTiposMestre.Cancel;
  end;
end;

procedure TFrmTiposMestre.btnEditarClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryTiposMestre.Edit;
  edtDescricao.SetFocus;
end;

procedure TFrmTiposMestre.btnGravarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryTiposMestre.State in [dsInsert, dsEdit] then
  begin
    if ValidarRegistro then
      dtmAcoesBanco.qryTiposMestre.Post;
  end;
end;

procedure TFrmTiposMestre.btnNovoClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryTiposMestre.Append;
  edtDescricao.SetFocus;
end;

procedure TFrmTiposMestre.btnSairClick(Sender: TObject);
begin
  btnCancelar.Click;
  inherited;
end;

procedure TFrmTiposMestre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmAcoesBanco.qryTiposMestre.Close;
  dtmAcoesBanco.DesconectarBanco;
end;

procedure TFrmTiposMestre.FormShow(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.ConectarBanco;
  dtmAcoesBanco.qryTiposMestre.Open;
end;

function TFrmTiposMestre.ValidarRegistro: Boolean;
begin
  Result := True;
  if trim(edtDescricao.Text) = '' then
  begin
    Informacao('O campo Descrição não foi preencido.');
    Result := False;
  end;
end;

end.
