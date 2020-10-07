program SistemaRestaurante;

uses
  Vcl.Forms,
  Login in 'Login.pas' {FrmLogin},
  Principal in 'Principal.pas' {FrmPrincipal},
  Funcionarios in 'Cadastros\Funcionarios.pas' {FrmFuncionarios},
  Produtos in 'Produtos\Produtos.pas' {FrmProdutos},
  Cargo in 'Cadastros\Cargo.pas' {FrmCargo},
  modulo in 'modulo.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmFuncionarios, FrmFuncionarios);
  Application.CreateForm(TFrmProdutos, FrmProdutos);
  Application.CreateForm(TFrmCargo, FrmCargo);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
