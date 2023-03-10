unit UAcoesBanco;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TdtmAcoesBanco = class(TDataModule)
    cnnBanco: TFDConnection;
    qryTiposMestre: TFDQuery;
    qryTiposMestreTiposMestreId: TFDAutoIncField;
    qryTiposMestreDescricao: TStringField;
    qryTiposMestreAtivo: TBooleanField;
    qryTiposMestreInseridoEm: TDateTimeField;
    qryTipos: TFDQuery;
    qryTiposTiposId: TFDAutoIncField;
    qryTiposTiposMestreId: TIntegerField;
    qryTiposDescricao: TStringField;
    qryTiposAtivo: TBooleanField;
    qryTiposInseridoEm: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtmAcoesBanco: TdtmAcoesBanco;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
