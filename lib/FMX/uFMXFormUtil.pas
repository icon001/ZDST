unit uFMXFormUtil;

interface

uses
  System.SysUtils, System.Classes,FMX.Objects,FMX.Layouts;

type
  TdmFMXFormUtil = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    Function TravelRectangleItem(obj:TFlowLayout;stName:string):TRectangle;
  end;

var
  dmFMXFormUtil: TdmFMXFormUtil;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

{ TdmFMXFormUtil }

function TdmFMXFormUtil.TravelRectangleItem(obj: TFlowLayout; stName: string): TRectangle;
var
  Loop:integer;
begin
  Result:= Nil;
  if not Assigned(obj) then Exit;

  For Loop:=0 to obj.ControlsCount -1 do
  Begin
    if obj.Controls[Loop] is TRectangle then
    begin
      if obj.Controls[Loop].Name = stName then
      begin
        Result := TRectangle(obj.Controls[Loop]);
        Exit;
      end;

    end;
  End;
end;

end.
