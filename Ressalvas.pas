{================================================================================
 Descri��o     : C�digo Referente � V�deo Aula 93 - Class e Record Helpers
 Local V�deo   : YouTube - Conte�do Delphi - Canal do Zanca
          Link : https://www.youtube.com/watch?v=MCZeHWbKzmM&t=56s
 Elaborado Por : Manoel Zancheta
================================================================================}
unit Ressalvas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DateUtils, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TCarro = class
     private
       FAnoFabricacao: TDate;
     public
       property AnoFabricacao : TDate read FAnoFabricacao write FAnoFabricacao;
  end;

  TCarroHelper = class helper for TCarro
     private
        function GetTempoVida: integer;
     public
        property TempoVida : integer read GetTempoVida;
  end;

   TCarroConversivelHelper = class helper(TCarroHelper) for TCarro
     public
        function EhConversivel: Boolean;
   end;

   TCarroAutomaticoHelper = class helper(TCarroConversivelHelper) for TCarro
      public
         function EhAutomatico():Boolean;
   end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TCarroHelper }
function TCarroHelper.GetTempoVida: integer;
begin
   result := YearsBetween(Self.AnoFabricacao, Now);
end;

{ TCarroConversivelHelper }
function TCarroConversivelHelper.EhConversivel: Boolean;
begin
   showmessage('Verificando se � Convers�vel!');
end;

{ TCarroAutomaticoHelper }
function TCarroAutomaticoHelper.EhAutomatico: Boolean;
begin
   showmessage('Verificando se � Autom�tico!');
end;

procedure TForm2.Button1Click(Sender: TObject);
var
   carro : TCarro;
begin
   carro := TCarro.Create;
   try
      carro.AnoFabricacao := strtodate('01/01/2015');
      showmessage(inttostr(carro.TempoVida));
      carro.ehConversivel;
      carro.EhAutomatico;
   finally
      FreeAndNil(carro);
   end;
end;

end.
