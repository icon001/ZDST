unit uCommonFunction;

interface
uses
  System.SysUtils;

function LogSave(aFileName,ast:string):Boolean;

implementation

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
