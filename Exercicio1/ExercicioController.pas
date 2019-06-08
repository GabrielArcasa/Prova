unit ExercicioController;

interface

uses
  System.SysUtils,
  System.StrUtils,
  Vcl.StdCtrls,
  System.IOUtils;

type
  IController = interface
    ['{F77CCF5A-6FE7-40C9-8561-DD353813E842}']
    procedure Executar(memo: TMemo);
  end;

  TController = class(TInterfacedObject, IController)
  private
    arquivo: TFile;
    texto: string;
    procedure LerArquivo;
    function CalcularPorcentagem(Qtd, QtdTotal: Integer): Double;
  public
    procedure Executar(memo: TMemo);
  end;

resourcestring
  sTextoPadrao = 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam eget ligula eu lectus lobortis' + 'condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et' + 'netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis' + 'ac, posuere eu, lectus. Nam mattis, felis ut adipiscing. ';

const
  xExcluir: array[0..3] of string = ('.', ',', '', ' ');
  totalLetras: array[0..26] of string = ('q', 'w', 'e', 'r', 't', 'y', 'u', 'i', 'o', 'p', 'a', 's', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'ç', 'z', 'x', 'c', 'v', 'b', 'n', 'm');

implementation

{ TController }

function TController.CalcularPorcentagem(Qtd, QtdTotal: Integer): Double;
begin
  Result := 0;
  if Qtd > 0 then
    Result := StrToFloat(FormatFloat('0.##', (Qtd / QtdTotal) * 100));

end;

procedure TController.Executar(memo: TMemo);
var
  letra: string;
  vLetraQTD: array[0..26] of integer;
  tamanho, i, j, k, l, qtd, qtdTotal: integer;
begin
  Self.LerArquivo;
  tamanho := Length(texto);
  memo.Lines.Add('Total de letras :' + IntToStr(tamanho));
  for i := 0 to tamanho - 1 do
  begin
    letra := Texto[i];
    qtd := 0;

    for j := 0 to Length(totalLetras) - 1 do
      if AnsiUpperCase(letra) = AnsiUpperCase(totalLetras[j]) then
      begin
        inc(qtd);
        if vLetraQTD[j] > tamanho then
          vLetraQTD[j] := 0;
        vLetraQTD[j] := vLetraQTD[j] + qtd;

      end;
  end;

  for i := 0 to Length(vLetraQTD) - 1 do
    if vLetraQTD[i] < tamanho then
      memo.Lines.Add(QuotedStr(totalletras[i]) + ' = ' + FloatToStr(Self.CalcularPorcentagem(vLetraQTD[i], tamanho)) + ' % ');
end;

procedure TController.LerArquivo;
var
  i: integer;
  caminho : string;
begin
caminho := ExtractFileDir(ParamStr(0)) + '\Arquivo.txt' ;
  if not arquivo.Exists(caminho) then
  begin
    arquivo.WriteAllText(caminho, sTextoPadrao);
  end;
  try
    texto := arquivo.ReadAllText(caminho);
    for i := 0 to Length(xExcluir) - 1 do
    begin

      texto := StringReplace(texto, xExcluir[i], '', [rfReplaceAll]);

    end;
  except
    raise Exception.Create('Ocorreu um erro na leitura!');

  end;

end;

end.

