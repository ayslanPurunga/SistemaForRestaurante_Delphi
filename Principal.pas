unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Buttons, Vcl.StdCtrls;

type
  TFrmPrincipal = class(TForm)
    ImgBack: TImage;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Produtos1: TMenuItem;
    Movimentaes1: TMenuItem;
    Pedidos1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Reservas1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Mesas1: TMenuItem;
    CadastrodeProdutos1: TMenuItem;
    EntradasdeProdutos1: TMenuItem;
    NveldoEstoque1: TMenuItem;
    NovaVenda1: TMenuItem;
    EntradaseSadas1: TMenuItem;
    Gastos1: TMenuItem;
    Pagamentos1: TMenuItem;
    eladePedidos1: TMenuItem;
    NovaReserva1: TMenuItem;
    ConsultarReservas1: TMenuItem;
    Logout1: TMenuItem;
    btnProdutos: TSpeedButton;
    btnMovimentacoes: TSpeedButton;
    btnPedidos: TSpeedButton;
    btnReservas: TSpeedButton;
    btnRelatorio: TSpeedButton;
    Pratos1: TMenuItem;
    Cargo1: TMenuItem;
    NovoPedido1: TMenuItem;
    StatusdosPedidos1: TMenuItem;
    lblUsuario: TLabel;
    lblCargo: TLabel;
    procedure Clientes1Click(Sender: TObject);
    procedure CadastrodeProdutos1Click(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Cargo1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses Funcionarios, Produtos, modulo, Login, Cargo;

procedure TFrmPrincipal.btnProdutosClick(Sender: TObject);
begin
  FrmProdutos := TFrmProdutos.Create(self);
FrmProdutos.ShowModal;
end;

procedure TFrmPrincipal.CadastrodeProdutos1Click(Sender: TObject);
begin
  FrmProdutos := TFrmProdutos.Create(self);
FrmProdutos.ShowModal;
end;

procedure TFrmPrincipal.Cargo1Click(Sender: TObject);
begin
FrmCargo := TFrmCargo.Create(self);
FrmCargo.ShowModal;
end;

procedure TFrmPrincipal.Clientes1Click(Sender: TObject);
begin
FrmFuncionarios := TFrmFuncionarios.Create(self);
FrmFuncionarios.ShowModal;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
lblUsuario.Caption := nomeFuncionario;
lblCargo.Caption := CargoFuncionario;
end;

procedure TFrmPrincipal.Logout1Click(Sender: TObject);
begin
FrmLogin := TFrmLogin.Create(self);
Hide();
FrmLogin.ShowModal;

end;

end.
