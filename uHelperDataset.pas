unit uHelperDataset;

interface

uses Datasnap.DBClient, System.JSON, System.SysUtils, REST.Response.Adapter, Data.DB;

type
  TJSONtoDataset = class helper for TClientDataSet
     procedure jsonToDataset(aDataset : TDataSet; aJSON : string);
  end;


implementation

{ TJSONtoDataset }
procedure TJSONtoDataset.jsonToDataset(aDataset : TDataSet; aJSON : string);
var
   JObj : TJSONArray;
   vConv: TCustomJSONDataSetAdapter;
begin
  if (aJSON = EmptyStr) then
     begin
        exit;
   end;

   JObj  := TJSONObject.ParseJSONValue(aJSON) as TJSONArray;
   vConv := TCustomJSONDataSetAdapter.Create(Nil);

   try
      vConv.Dataset := aDataset;
      vConv.UpdateDataSet(JObj);
   finally
      vConv.Free;
      JObj.Free;
   end;
end;

end.
