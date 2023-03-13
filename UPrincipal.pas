unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    mniArquivo: TMenuItem;
    mniAbastecimento: TMenuItem;
    mniParametros: TMenuItem;
    mniTipos: TMenuItem;
    mniSeparador1: TMenuItem;
    mniSair: TMenuItem;
    mniValorLitro: TMenuItem;
    mniTanque: TMenuItem;
    mniImposto: TMenuItem;
    mniBombas: TMenuItem;
    mniFuncionario: TMenuItem;
    mniRelaAbastecimentos: TMenuItem;
    procedure mniSairClick(Sender: TObject);
    procedure mniTiposClick(Sender: TObject);
    procedure mniTiposMestreClick(Sender: TObject);
    procedure mniValorLitroClick(Sender: TObject);
    procedure mniTanqueClick(Sender: TObject);
    procedure mniImpostoClick(Sender: TObject);
    procedure mniBombasClick(Sender: TObject);
    procedure mniFuncionarioClick(Sender: TObject);
    procedure mniAbastecimentoClick(Sender: TObject);
    procedure mniRelaAbastecimentosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UAcoesBanco, UTipos, UTiposMestre, UGlobalSistema, UValorCombustivel, UTanque, UImposto, UBombas, UFuncionarios, UAbastecimento, URelAbastecimento;

{$R *.dfm}

procedure TfrmPrincipal.mniAbastecimentoClick(Sender: TObject);
begin
  ChamarFormulario(TFrmAbastecimento, FrmAbastecimento);
end;

procedure TfrmPrincipal.mniBombasClick(Sender: TObject);
begin
  ChamarFormulario(TFrmBombas, FrmBombas);
end;

procedure TfrmPrincipal.mniFuncionarioClick(Sender: TObject);
begin
  ChamarFormulario(TFrmFuncionarios, FrmFuncionarios);
end;

procedure TfrmPrincipal.mniImpostoClick(Sender: TObject);
begin
  ChamarFormulario(TFrmImposto, FrmImposto);
end;

procedure TfrmPrincipal.mniRelaAbastecimentosClick(Sender: TObject);
begin
  try
    dtmAcoesBanco.ConectarBanco;
    dtmAcoesBanco.qryRelAbastecimento.Open;
    RelAbastecimento := TRelAbastecimento.Create(Self);
    RelAbastecimento.prtAbastecimento.Preview;
  finally
    RelAbastecimento.Free;
    dtmAcoesBanco.qryRelAbastecimento.Close;
    dtmAcoesBanco.DesconectarBanco;
  end;

end;

procedure TfrmPrincipal.mniSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.mniTanqueClick(Sender: TObject);
begin
  ChamarFormulario(TFrmTanque, FrmTanque);
end;

procedure TfrmPrincipal.mniTiposClick(Sender: TObject);
begin
  ChamarFormulario(TFrmTipos, FrmTipos);
end;

procedure TfrmPrincipal.mniTiposMestreClick(Sender: TObject);
begin
  ChamarFormulario(TFrmTiposMestre, FrmTiposMestre);
end;

procedure TfrmPrincipal.mniValorLitroClick(Sender: TObject);
begin
  ChamarFormulario(TFrmValorCombustivel, FrmValorCombustivel);
end;

end.
