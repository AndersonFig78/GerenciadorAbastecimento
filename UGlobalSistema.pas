unit UGlobalSistema;

interface

uses
  SysUtils, vcl.Dialogs, Vcl.Controls, Classes, Forms;

function Advertencia(Msg: String): Boolean;
procedure Cancela(Msg: String);
function Informacao(Msg: String): Boolean;
function Confirme(Msg: String): Boolean;
procedure ChamarFormulario(lo_obj_formulario: TComponentClass; var Reference);
implementation
function Advertencia(Msg: string): Boolean;
begin
  Result := MessageDlg(Msg, mtWarning, [mbOK], 0) = mrOK;
end;
procedure Cancela(Msg: string);
begin
  MessageDlg(Msg, mtWarning, [mbOK], 0);
  Abort;
end;
function Informacao(Msg: string): Boolean;
begin
  Result := MessageDlg(Msg, mtInformation, [mbOK], 0) = mrOK;
end;
function Confirme(Msg: string): Boolean;
begin
  Result := MessageDlg(Msg, mtConfirmation, [mbYes, mbNo], 0) = mrYes;
end;
procedure ChamarFormulario(lo_obj_formulario: TComponentClass;
  var Reference);
begin
  Application.CreateForm(lo_obj_formulario, Reference);
  with TForm(Reference) do
    begin
      try
        ShowModal;
      finally
        Release;
      end;
      Destroy;
    end;
end;
end.
