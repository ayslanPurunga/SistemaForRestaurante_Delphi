unit modulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Data.FMTBcd, Data.SqlExpr;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    Driver: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    tb_cargo: TFDTable;
    dsCargo: TDataSource;
    tb_cargoid: TFDAutoIncField;
    tb_cargonome: TStringField;
    dsFuncionarios: TDataSource;
    tb_funcionarios: TFDTable;
    tb_funcionariosid: TFDAutoIncField;
    tb_funcionariosnome: TStringField;
    tb_funcionarioscpf: TStringField;
    tb_funcionariostelefone: TStringField;
    tb_funcionariosendereco: TStringField;
    tb_funcionarioscargo: TStringField;
    tb_funcionariosusuario: TStringField;
    tb_funcionariossenha: TStringField;
    tb_funcionariosdata: TDateField;
    queryFunc: TFDQuery;
    queryConFunc: TFDQuery;
    dsConFuncionarios: TDataSource;
    queryConFuncid: TFDAutoIncField;
    queryConFuncnome: TStringField;
    queryConFunccpf: TStringField;
    queryConFunctelefone: TStringField;
    queryConFuncendereco: TStringField;
    queryConFunccargo: TStringField;
    queryConFuncusuario: TStringField;
    queryConFuncsenha: TStringField;
    queryConFuncdata: TDateField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;
  nomeUsuario: String;
  nomeFuncionario: String;
  cargoFuncionario: String;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin

  {CONECTANDO AO BANCO DE DADOS LOCAL}

  FDConnection1.Params.Database := 'restaurante';
  FDConnection1.Params.UserName := 'root';
  FDConnection1.Params.Password := '';

  Driver.VendorLib := GetCurrentDir + '\lib\libmySQL.dll';

  FDConnection1.Connected := True;


   {INFORMA��ES DAS TABELAS - ASSOCIA��O VIA C�DIGO}
   {tb_cargo.TableName := 'cargo';
   tb_cargo.Active := True;   }


end;

end.
