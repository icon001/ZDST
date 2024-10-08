unit uDBInsert;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmDBInsert = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    Function InsertIntoTB_CONFIG_All(aCONFIGGROUP,aCONFIGCODE,aCONFIGVALUE:string;aDetail:string=''):Boolean;
  end;

var
  dmDBInsert: TdmDBInsert;

implementation

uses
  uComonVariable,
  uDataBase;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmDBInsert }

function TdmDBInsert.InsertIntoTB_CONFIG_All(aCONFIGGROUP, aCONFIGCODE,
  aCONFIGVALUE, aDetail: string): Boolean;
var
  stSql : string;
begin
  stSql := 'Insert Into TB_CONFIG (';
  stSql := stSql + ' GROUP_CODE,';
  stSql := stSql + ' CO_CONFIGGROUP,';
  stSql := stSql + ' CO_CONFIGCODE,';
  stSql := stSql + ' CO_CONFIGVALUE,';
  stSql := stSql + ' CO_CONFIGDETAIL) ';
  stSql := stSql + ' VALUES(';
  stSql := stSql + '''' + G_stGroupCode + ''', ';
  stSql := stSql + '''' + aCONFIGGROUP + ''', ';
  stSql := stSql + '''' + aCONFIGCODE + ''', ';
  stSql := stSql + '''' + aCONFIGVALUE + ''',';
  stSql := stSql + '''' + aDetail + ''') ';

  result := dmDataBase.ProcessExecSQL(stSql);
end;

end.
