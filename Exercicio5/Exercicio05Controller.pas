unit Exercicio05Controller;

interface

uses
  System.SysUtils,
  Winapi.Windows,
  Vcl.Forms;

type
  Icontroller = interface
    ['{B872A676-317B-4549-96E8-1442ABAC989C}']
    function Verificar(Palavra, caminho: string): Boolean;
  end;

  TController = class(TInterfacedObject, Icontroller)
    function Verificar(Palavra, caminho: string): Boolean;
  end;
   { Caso queira carregar diretamente }
// function IsPalindromo(palavra: WideString): Boolean; stdcall; external 'prjExercicio05DLL.dll' name 'IsPalindromo';

implementation

{ TController }

function TController.Verificar(palavra, caminho: string): Boolean;
var
  FHandle: THandle;
  IsPalindromo: function(palavra: WideString): Boolean; stdcall;
begin
{Usando Diretamente }
//  Result := IsPalindromo(Palavra);

{Usando Dinamicamente}
  FHandle := LoadLibrary(PWideChar(caminho));
  try
    IsPalindromo := GetProcAddress(FHandle, 'IsPalindromo');
    if Assigned(IsPalindromo) then
    begin
      try
        result := IsPalindromo(palavra);
      except
        on E: Exception do
          FreeLibrary(FHandle);
      end;
    end;

  finally
      FreeLibrary(FHandle);
  end;
end;

end.

