unit uDBCreate;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmDBCreate = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    Function CreateTB_CONFIG:Boolean;
  end;

var
  dmDBCreate: TdmDBCreate;

implementation

uses
  uDataBase;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmDBCreate }

function TdmDBCreate.CreateTB_CONFIG: Boolean;
var
  stSql : string;
begin
  stSql := 'Create Table TB_CONFIG(';
  stSql := stSql + ' GROUP_CODE varchar(10) DEFAULT ''1234567890'' NOT NULL,';
  stSql := stSql + ' CO_CONFIGGROUP varchar(20) NOT NULL,';
  stSql := stSql + ' CO_CONFIGCODE varchar(30) NOT NULL,';
  stSql := stSql + ' CO_CONFIGVALUE varchar(50),';
  stSql := stSql + ' CO_CONFIGDETAIL nvarchar(100),';
  stSql := stSql + ' PRIMARY KEY (GROUP_CODE,CO_CONFIGGROUP,CO_CONFIGCODE) ';
  stSql := stSql + ' ) ';

  stSql := StringReplace(stSql,'varchar','text',[rfReplaceAll]);
  stSql := StringReplace(stSql,'char','text',[rfReplaceAll]);
  result := dmDataBase.ProcessExecSQL(stSql);
end;

end.
