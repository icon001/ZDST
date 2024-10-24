unit uFrameArmAreaState;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.EditBox,
  FMX.SpinBox, FMX.ListBox, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid;

type
  TframeArmAreaState = class(TFrame)
    Rectangle1: TRectangle;
    roundHint: TRoundRect;
    txtHint: TText;
    GridPanelLayout1: TGridPanelLayout;
    Text1: TText;
    ScrollBox1: TScrollBox;
    rectArmAreaState: TRectangle;
    Rectangle2: TRectangle;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    StringGrid1: TStringGrid;
    procedure FlowLayout1Resize(Sender: TObject);
    procedure ScrollBox1Resize(Sender: TObject);
    procedure StringGrid1DrawColumnCell(Sender: TObject; const Canvas: TCanvas;
      const Column: TColumn; const Bounds: TRectF; const Row: Integer;
      const Value: TValue; const State: TGridDrawStates);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure formCreate;
  end;

implementation

{$R *.fmx}

procedure TframeArmAreaState.FlowLayout1Resize(Sender: TObject);
begin
  (*
  FlowLayout1.Height := rectETCSetting.Position.Y + rectETCSetting.Height;

  if FlowLayout1.Height <= 600 then
  begin
    ScrollBox1.RealignContent;
  end;
  *)

end;

procedure TframeArmAreaState.formCreate;
var
  I: Integer;
  Column: TColumn;
begin
  StringGrid1.RowCount := 10;

  for I := 0 to StringGrid1.RowCount - 1 do
  begin
    Column := TStringColumn.Create(Self);
    Column.Parent := StringGrid1;
  end;
  StringGrid1.Cells[3,0] := 'red';
end;

procedure TframeArmAreaState.ScrollBox1Resize(Sender: TObject);
begin
  //if ScrollBox1.Width < 910 then rectArmAreaState.Width := ScrollBox1.Width;


end;

procedure TframeArmAreaState.StringGrid1DrawColumnCell(Sender: TObject;
  const Canvas: TCanvas; const Column: TColumn; const Bounds: TRectF;
  const Row: Integer; const Value: TValue; const State: TGridDrawStates);
var
  RowColor : TBrush;
begin

  RowColor := Tbrush.Create(TBrushKind.Solid,TAlphaColors.Alpha);

{you can check for values and then set the color you want}
  if Value.ToString = 'red' then
     RowColor.Color := TAlphaColors.Red
  else
    RowColor.Color := TAlphaColors.White;

  StringGrid1.DefaultDrawing := False;

  Canvas.FillRect(Bounds, 0, 0, [], 1, RowColor);
  Column.DefaultDrawCell(Canvas, Bounds, Row, Value, State);

  //it's better to write this line into destroy
  RowColor.free;
end;

end.
