program prjExercicio2;

uses
  Vcl.Forms,
  Exercicio2View in 'Exercicio2View.pas' {Form1},
  Exercicio2Controller in 'Exercicio2Controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
