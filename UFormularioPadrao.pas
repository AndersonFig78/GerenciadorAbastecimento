unit UFormularioPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ToolWin,
  Vcl.ComCtrls;

type
  TFrmFormularioPadrao = class(TForm)
    tlbComandos: TToolBar;
    btnNovo: TBitBtn;
    btnCancelar: TBitBtn;
    btnGravar: TBitBtn;
    btnSair: TButton;
    btnEditar: TBitBtn;
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFormularioPadrao: TFrmFormularioPadrao;

implementation

{$R *.dfm}

procedure TFrmFormularioPadrao.btnSairClick(Sender: TObject);
begin
  Close;
end;

end.
