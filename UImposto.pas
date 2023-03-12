unit UImposto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFormularioPadrao, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Mask, Data.DB,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmImposto = class(TFrmFormularioPadrao)
    Label1: TLabel;
    edtImpostoId: TDBEdit;
    Label2: TLabel;
    edtDescricao: TDBEdit;
    Label3: TLabel;
    edtTaxa: TDBEdit;
    Label4: TLabel;
    edtFormula: TDBEdit;
    chkAtivo: TDBCheckBox;
    Label5: TLabel;
    edtInseridoEm: TDBEdit;
    dbgImposto: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
    function ValidarRegistro : Boolean;
  public
    { Public declarations }
  end;

var
  FrmImposto: TFrmImposto;

implementation

uses
  UGlobalSistema, UAcoesBanco;

{$R *.dfm}

procedure TFrmImposto.btnCancelarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryImposto.State in [dsInsert, dsEdit] then
  begin
    if Confirme('Você deseja realmente cancelar esse registro?') then
      dtmAcoesBanco.qryImposto.Cancel;
  end;
end;

procedure TFrmImposto.btnEditarClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryImposto.Edit;
  edtDescricao.SetFocus;
end;

procedure TFrmImposto.btnGravarClick(Sender: TObject);
begin
  inherited;
  if dtmAcoesBanco.qryImposto.State in [dsInsert, dsEdit] then
  begin
    if ValidarRegistro then
    begin
      dtmAcoesBanco.qryImposto.Post;
    end;
  end;
end;

procedure TFrmImposto.btnNovoClick(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.qryImposto.Append;
  edtDescricao.SetFocus;
end;

procedure TFrmImposto.btnSairClick(Sender: TObject);
begin
  btnCancelar.Click;
  inherited;
end;

procedure TFrmImposto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  dtmAcoesBanco.qryImposto.Close;
  dtmAcoesBanco.DesconectarBanco;
end;

procedure TFrmImposto.FormShow(Sender: TObject);
begin
  inherited;
  dtmAcoesBanco.ConectarBanco;
  dtmAcoesBanco.qryImposto.Open;
end;

function TFrmImposto.ValidarRegistro: Boolean;
begin
  Result := True;
  if trim(edtDescricao.Text) = '' then
  begin
    Informacao('O campo Descrição não foi preencido.');
    Result := False;
  end
  else if trim(edtTaxa.Text) = '' then
  begin
    Informacao('O campo Taxa não foi preencido.');
    Result := False;
  end
  else if trim(edtFormula.Text) = '' then
  begin
    Informacao('O campo Fórmula não foi preencido.');
    Result := False;
  end;
end;

end.
