unit Exercicio05View;

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
  Exercicio05Controller,
  Vcl.Buttons,
  Vcl.ExtDlgs;

type
  TForm1 = class(TForm)
    edtPalavra: TEdit;
    btnVerificar: TButton;
    lbl1: TLabel;
    opendlg: TOpenTextFileDialog;
    edtCaminhoDLL: TEdit;
    btnCarregarDll: TSpeedButton;
    procedure btnVerificarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCarregarDllClick(Sender: TObject);
    procedure edtCaminhoDLLChange(Sender: TObject);
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

procedure TForm1.btnVerificarClick(Sender: TObject);
begin
  if edtPalavra.Text <> '' then
  begin
    if Controller.Verificar(AnsiUpperCase(edtPalavra.Text), edtCaminhoDLL.Text) then
      ShowMessage('É um palindromo!')
    else
      ShowMessage('Não é um palindromo');
  end
  else
  ShowMessage('Digite algo!');
end;

procedure TForm1.edtCaminhoDLLChange(Sender: TObject);
begin
  btnVerificar.Enabled := edtCaminhoDLL.Text <> '';
end;

procedure TForm1.btnCarregarDllClick(Sender: TObject);
begin
  opendlg.InitialDir := ExtractFileDir(ParamStr(0));
  if opendlg.Execute then
    edtCaminhoDLL.Text := opendlg.FileName;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Controller := TController.Create;
end;

end.

