program WordCount;

uses
  Vcl.Forms,
  Exercicio04View in 'Exercicio04View.pas' {Form1},
  Exercicio04Controller in 'Exercicio04Controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
