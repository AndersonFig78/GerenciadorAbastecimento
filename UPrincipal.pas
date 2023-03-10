unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfrmPrincipal = class(TForm)
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  UAcoesBanco;

{$R *.dfm}

var
  dtmAcoesBanco : TdtmAcoesBanco;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(dtmAcoesBanco);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  dtmAcoesBanco.Create(Self);
end;

end.
