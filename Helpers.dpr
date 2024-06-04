program Helpers;

uses
  Vcl.Forms,
  uHelpers in 'uHelpers.pas' {Form2},
  uHelperEstaVazio in 'uHelperEstaVazio.pas',
  uHelperEhPar in 'uHelperEhPar.pas',
  uHelperDataset in 'uHelperDataset.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
