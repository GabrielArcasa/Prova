unit ExercicioView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls,ExercicioController;

type
  TForm1 = class(TForm)
    pnl1: TPanel;
    mmo1: TMemo;
    btnExecutar: TSpeedButton;
    procedure btnExecutarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Controller : IController;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExecutarClick(Sender: TObject);
begin
Controller.Executar(mmo1);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Controller := TController.Create;
end;

end.
