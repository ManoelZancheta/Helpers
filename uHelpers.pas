{================================================================================
 Descri��o     : C�digo Referente � V�deo Aula 93 - Class e Record Helpers
 Local V�deo   : YouTube - Conte�do Delphi - Canal do Zanca
          Link : https://www.youtube.com/watch?v=MCZeHWbKzmM&t=56s
 Elaborado Por : Manoel Zancheta
================================================================================}
unit uHelpers;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uHelperEhPar, uHelperEstaVazio, uHelperDataset,
  Data.DB, Vcl.Grids, Vcl.DBGrids, System.JSON, Datasnap.DBClient, REST.Response.Adapter;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label6: TLabel;
    Button2: TButton;
    Edit2: TEdit;
    Label7: TLabel;
    Button3: TButton;
    Label8: TLabel;
    Memo1: TMemo;
    Label9: TLabel;
    Button4: TButton;
    dsClientes: TDataSource;
    DBGrid1: TDBGrid;
    cdsClientes: TClientDataSet;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
  end;


  TCurrencyHelper = record helper for Currency
    function formatarMoeda: string;
  end;


var
  Form2: TForm2;

implementation

{$R *.dfm}


procedure TForm2.Button1Click(Sender: TObject);
begin
   if edit1.estaVazio then
     showmessage('Est� vazio...')
   else
     showmessage('N�o est� vazio...');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
   {if edit2.EhPar then
      showmessage('Este n�mero � par')
   else
      showmessage('Este n�mero � �mpar...');
   }
end;

procedure TForm2.Button3Click(Sender: TObject);
var
   curValor: Currency;
begin
   curValor := strtocurr(edit3.Text);
   ShowMessage(curValor.formatarMoeda);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
   cdsClientes.jsonToDataset(cdsClientes, memo1.Text);
end;


{ TCurrencyHelper }
function TCurrencyHelper.formatarMoeda: string;
begin
   result := FormatCurr('R$ ###,##0.00', Self);
end;

end.
