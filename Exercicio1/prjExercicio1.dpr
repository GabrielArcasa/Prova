program prjExercicio1;

uses
  Vcl.Forms,
  ExercicioView in 'ExercicioView.pas' {Form1},
  ExercicioController in 'ExercicioController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
