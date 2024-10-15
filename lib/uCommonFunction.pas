unit uCommonFunction;

interface
uses
  System.SysUtils;

function FillZeroNumber(aNo:LongInt; aLength:Integer): string;
function LogSave(aFileName,ast:string):Boolean;

implementation

function FillZeroNumber(aNo:LongInt; aLength:Integer): string;
var
  I       : Integer;
  st      : string;
  strNo   : String;
  StrCount: Integer;
begin
  Strno:= InttoStr(aNo);
  StrCount:= Length(Strno);
  St:= '';
  StrCount:=  aLength - StrCount;
  if StrCount > 0 then
  begin
    st:='';
    for I:=1 to StrCount do St:=st+'0';
    St:= St + StrNo;
    FillZeroNumber:= st;
  end else FillZeroNumber:= copy(Strno,1,aLength);
end;

function LogSave(aFileName,ast:string):Boolean;
Var
  f: TextFile;
  st: string;
  stDir : string;
begin
  result := False;
  Try
    {$I-}
    stDir := ExtractFilePath(aFileName);
    if not DirectoryExists(stDir) then CreateDir(stDir);

    AssignFile(f, aFileName);
    Append(f);
    if IOResult <> 0 then Rewrite(f);
    st := FormatDateTIme('yyyy-mm-dd hh:nn:ss:zzz">"',Now) + ' ' + ast;
    WriteLn(f,st);
    System.Close(f);
    result := True;
    {$I+}
  Except
    Exit;
  End;
end;
end.
