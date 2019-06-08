program PrjExercicio05Cliente;

uses
  Vcl.Forms,
  Exercicio05View in 'Exercicio05View.pas' {Form1},
  Exercicio05Controller in 'Exercicio05Controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
