unit Exercicio2Controller;

interface

type
  TNumDivisor = class
  private
  public
    function EncontrarDivisores(Value: Integer): Integer;
  end;

  TNumPrimo = class(TNumDivisor)
  private
    FValue: integer;
  public
    constructor Create(Value: integer); reintroduce;
    function IsNumeroPrimo: Boolean;
  end;

implementation

{ TNumDivisor }

function TNumDivisor.EncontrarDivisores(Value: Integer): Integer;
var
  i: Integer;
begin
  Result := 0;
  for i := 1 to Value do
    if (Value mod i = 0) then
      Inc(Result);

end;

{ TNumPrimo }

constructor TNumPrimo.Create(Value: integer);
begin
  FValue := Value;
end;

function TNumPrimo.IsNumeroPrimo: Boolean;
var
  i, j: integer;
begin
  Result := False;
  j := 0;
  for i := 1 to FValue do
    if (FValue mod i = 0) then
      j := j + 1;
  if (j = 2) then
    Result := True;

end;

end.

