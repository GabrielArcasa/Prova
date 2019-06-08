unit ProperEdit;

interface

uses
  System.SysUtils,
  System.Classes,
  Vcl.Controls,
  Vcl.StdCtrls;

type
  TProperEdit = class(TEdit)
  private
  { Private declarations }
  protected
    { Protected declarations }
    procedure MeuKeyPress(Sender: TObject; var Key: Char);
  public
    { Public declarations }
  constructor Create(AOwner: TComponent); override;
  published
  property OnKeyPress;
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Sabium', [TProperEdit]);
end;

{ TProperEdit }

constructor TProperEdit.Create(AOwner: TComponent);
begin
  inherited;
 Self.OnKeyPress := Self.MeuKeyPress;
end;

procedure TProperEdit.MeuKeyPress(Sender: TObject; var Key: Char);
begin
 Key := UpCase(Key);
end;


end.

