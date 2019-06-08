unit Exercicio04Controller;

interface

uses
  Vcl.Dialogs,
  System.SysUtils,
  System.Classes,
  System.Threading,
  System.IOUtils,
  Vcl.StdCtrls;

type
  IController = interface(IInterface)
    ['{9D06DA48-7424-47BD-A15B-6E0F11A7384A}']
    procedure Verificar(OpenDlg: TOpenDialog; memo: Tmemo);
  end;

  TController = class(TInterfacedObject, IController)
    procedure Verificar(OpenDlg: TOpenDialog; memo: Tmemo);
  end;

implementation

{ TController }

procedure TController.Verificar(OpenDlg: TOpenDialog; memo: Tmemo);
var
  palavras: TStringList;
  arquivo: TFile;
  i: Integer;
begin
  TParallel.for (0, Pred(OpenDlg.Files.Count),
    procedure(i: integer)
    begin
      TThread.Queue(TThread.CurrentThread,
        procedure
        begin
          palavras := TStringList.Create;
          palavras.Delimiter := ' ';
          palavras.DelimitedText :=  arquivo.ReadAllText(OpenDlg.Files[i]);
          memo.Lines.Add(OpenDlg.Files[i] + ': ' + intToStr(palavras.Count) + ' palavras');
        end)
    end);
end;

end.

