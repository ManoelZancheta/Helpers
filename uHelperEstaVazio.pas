unit uHelperEstaVazio;

interface

uses Vcl.StdCtrls, System.SysUtils;

type
  TEditHelper = class helper for TEdit
     function estaVazio: boolean;
  end;


implementation

{ TEditHelper }
function TEditHelper.estaVazio: boolean;
begin
  result := Trim(Self.Text) = EmptyStr;
end;

end.
