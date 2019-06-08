unit Exercicio04View;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Exercicio04Controller;

type
  TForm1 = class(TForm)
    btnSelecionar: TButton;
    btnVerificar: TButton;
    dlgOpen: TOpenDialog;
    mmo1: TMemo;
    procedure btnSelecionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnVerificarClick(Sender: TObject);
  private
    { Private declarations }
    Controller: IController;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSelecionarClick(Sender: TObject);
begin
  dlgOpen.InitialDir := ExtractFileDir(ParamStr(0));
  dlgOpen.Execute
end;

procedure TForm1.btnVerificarClick(Sender: TObject);
begin
  Controller.Verificar(dlgOpen, mmo1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Controller := TController.Create;
end;

end.

