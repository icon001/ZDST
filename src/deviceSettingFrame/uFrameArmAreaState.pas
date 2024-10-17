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
end;

procedure TframeArmAreaState.ScrollBox1Resize(Sender: TObject);
begin
  //if ScrollBox1.Width < 910 then rectArmAreaState.Width := ScrollBox1.Width;


end;

end.
