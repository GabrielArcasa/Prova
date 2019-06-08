unit Exercicio2View;

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
  Vcl.Buttons,
  Exercicio2Controller;

type
  TForm1 = class(TForm)
    edtNumero: TEdit;
    edtDivisores: TEdit;
    edtNumeroPrimo: TEdit;
    edtValidoPrimo: TEdit;
    btnDivisores: TSpeedButton;
    btn1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btnDivisoresClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    NumDivisor: TNumDivisor;
    NumPrimo: TNumPrimo;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  if not (edtNumeroPrimo.Text = '') then
  begin

    if not Assigned(NumPrimo) then
      NumPrimo := TNumPrimo.Create(StrToInt(edtNumeroPrimo.Text));
    try
      if NumPrimo.IsNumeroPrimo then
        edtValidoPrimo.Text := 'É um numero primo!'
      else
        edtValidoPrimo.Text := 'Não é um numero primo!';
    finally
      FreeAndNil(NumPrimo);
    end;
  end;
end;

procedure TForm1.btnDivisoresClick(Sender: TObject);
begin
  if not (edtNumero.Text = '') then
    edtDivisores.Text := IntToStr(NumDivisor.EncontrarDivisores(StrToInt(edtNumero.Text)));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  NumDivisor := TNumDivisor.Create;

end;

end.

