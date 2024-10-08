unit uDataBase;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.ODBC,
  FireDAC.Phys.ODBCDef,Winapi.Windows,Vcl.Dialogs,Vcl.Forms, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef,Winapi.ActiveX,
  uCommonEvent;

type
  TdmDatabase = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
  private
    class function FindSelf:TComponent;
  private
    FDBConnected: Boolean;
    FOnAdoConnected: TAdoConnectedEvent;
    procedure SetDBConnected(const Value: Boolean);
    Function TableVersionCheck:Boolean;
    Function GetTableVersion:integer;
    function Table_0001_VersionMake:Boolean;
    { Private declarations }
  public
    class Function GetObject:TdmDatabase;   //자기자신을 찾는것  class 는 폼생성전에도 사용가능
  public
    { Public declarations }
    procedure DatabaseCreate;
    Function ProcessExecSQL(aSql:String;bUpdateResult:Boolean=False): Boolean;
  published
    property DBConnected : Boolean read FDBConnected write SetDBConnected;
  published
    property OnAdoConnected:      TAdoConnectedEvent read FOnAdoConnected       write FOnAdoConnected;
  end;

  function SQLConfigDataSource(hwndParent : HWND; fRequest : WORD; lpszDriver : LPCSTR; lpszAttributes : LPCSTR) : Boolean; stdcall; external 'ODBCCP32.DLL';

var
  dmDatabase: TdmDatabase;

implementation

uses
  uCommonFunction,
  uComonVariable,
  uDBCreate,
  uDBInsert;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmDatabase }

procedure TdmDatabase.DatabaseCreate;
var
  stSql : string;
begin
  if Not FileExists(G_stExeFolder + '\KSP.mdb') then
  begin
        ChDir(G_stExeFolder);
        SQLConfigDataSource(0, 1, LPCSTR('Microsoft Access Driver (*.mdb)'), LPCSTR('CREATE_DB=KSP.mdb General'));
  end;

  Try
    with FDConnection1 do
    begin
      Connected := False;
      Try
        Params.Clear;
        Params.Add('DriverID=MSAcc');
        Params.Add('Database='+G_stExeFolder + '\KSP.mdb');
        Params.Add('ReadOnly=False');
        LoginPrompt:= false ;
        Connected := True;
      Except
        on E : EDatabaseError do
          begin
            ShowMessage(E.Message );
            Exit;
          end;
        else
          begin
            ShowMessage('접속실패' );
            Exit;
          end;
      End;
      if Not TableVersionCheck then Exit;
    end;
  Finally

  End;

end;

class function TdmDatabase.FindSelf: TComponent;
var
  Loop:Integer;
begin
  Result:=Nil;
  for Loop:=0 to Application.ComponentCount-1 do begin
      if Application.Components[Loop] is TdmDatabase then begin
          Result:= Application.Components[Loop];
          Break;
      end;
  end;
end;

class function TdmDatabase.GetObject: TdmDatabase;
begin
   If FindSelf = Nil then TdmDatabase.Create(Application);
   Result := TdmDatabase(FindSelf);
end;

function TdmDatabase.GetTableVersion: integer;
var
  stSql : string;
begin
  result := 0;
  stSql := 'select * from TB_CONFIG ';
  stSql := stSql + ' where CO_CONFIGGROUP = ''COMMON'' ';
  stSql := stSql + ' AND CO_CONFIGCODE = ''TABLE_VER'' ';
  with dmDataBase.FDQuery1 do
  begin
    Close;
    Sql.Clear;
    Sql.Text := stSql;
    Try
      Open;
    Except
      Exit;
    End;
    if recordCount < 1 then Exit;
    Try
      result := strtoint(FindField('CO_CONFIGVALUE').AsString);
    Except
      Exit;
    End;
  end;
end;

function TdmDatabase.ProcessExecSQL(aSql: String;
  bUpdateResult: Boolean): Boolean;
var
  ExecQuery :TFDQuery;
  nResult : integer;
begin
  //원복시키자
  Result:= False;
  Try
    CoInitialize(nil);
    ExecQuery := TFDQuery.Create(nil);
    ExecQuery.Connection := TdmDatabase.GetObject.FDConnection1;
    ExecQuery.DisableControls;
    with ExecQuery do
    begin
      ResourceOptions.CmdExecTimeout := 600;
      Close;
      SQL.Text:= aSql;
      try
        ExecSQL;
      except
      ON E: Exception do
        begin
          LogSave(G_stExeFolder + '\..\Log\DB' + FormatDateTime('yyyymmdd',Now) + '.log','DBError('+ E.Message + ')' + aSql);

          if Pos('no connection to the server',E.Message) > 0 then
          begin
            DBConnected := False;
          end else if Pos('out of memory',E.Message) > 0 then
          begin
            DBConnected := False;
          end else if Pos('server closed the connection',E.Message) > 0 then
          begin
            DBConnected := False;
          end else if Pos('connection dead',E.Message) > 0 then
          begin
            DBConnected := False;
          end else if Pos('파일에 액세스할 수 없거나 메모리 또는 디스크 공간이 부족하여',E.Message) > 0 then
          begin
            DBConnected := False;
          end else if Pos('연결을 실패했습니다',E.Message) > 0 then
          begin
            DBConnected := False;
          end;

          Exit;
        end
      end;
    end;
  Finally
    ExecQuery.EnableControls;
    ExecQuery.Free;
    CoUninitialize;
  End;

end;

procedure TdmDatabase.SetDBConnected(const Value: Boolean);
begin
  FDBConnected := Value;
  if Assigned(FOnAdoConnected) then
  begin
    OnAdoConnected(Self,Value);
  end;
end;

function TdmDatabase.TableVersionCheck: Boolean;
var
  nTableVersion : integer;
begin
  result := False;
  nTableVersion := GetTableVersion;
  if nTableVersion < 1 then Table_0001_VersionMake;
end;

function TdmDatabase.Table_0001_VersionMake: Boolean;
begin
  dmDBCreate.CreateTB_CONFIG;
  dmDBInsert.InsertIntoTB_CONFIG_All('COMMON','TABLE_VER','1','테이블 버젼정보');

end;

end.
