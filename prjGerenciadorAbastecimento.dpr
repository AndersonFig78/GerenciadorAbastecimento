program prjGerenciadorAbastecimento;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UAcoesBanco in 'UAcoesBanco.pas' {dtmAcoesBanco: TDataModule},
  UGlobalSistema in 'UGlobalSistema.pas',
  UFormularioPadrao in 'UFormularioPadrao.pas' {FrmFormularioPadrao},
  UTipos in 'UTipos.pas' {FrmTipos},
  UTiposMestre in 'UTiposMestre.pas' {FrmTiposMestre},
  UValorCombustivel in 'UValorCombustivel.pas' {FrmValorCombustivel},
  UTanque in 'UTanque.pas' {FrmTanque},
  UImposto in 'UImposto.pas' {FrmImposto},
  UBombas in 'UBombas.pas' {FrmBombas},
  UFuncionarios in 'UFuncionarios.pas' {FrmFuncionarios},
  UAbastecimento in 'UAbastecimento.pas' {FrmAbastecimento};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdtmAcoesBanco, dtmAcoesBanco);
  Application.CreateForm(TFrmAbastecimento, FrmAbastecimento);
  Application.Run;
end.
