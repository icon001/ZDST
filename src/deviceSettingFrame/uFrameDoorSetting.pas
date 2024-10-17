unit uFrameDoorSetting;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.EditBox,
  FMX.SpinBox, FMX.ListBox;

type
  TframeDoorSetting = class(TFrame)
    Rectangle1: TRectangle;
    roundHint: TRoundRect;
    txtHint: TText;
    GridPanelLayout1: TGridPanelLayout;
    txtHeader: TText;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    rectJavara: TRectangle;
    rectDoor1: TRectangle;
    gbDoor1: TGroupBox;
    GridPanelLayout2: TGridPanelLayout;
    Rectangle2: TRectangle;
    Text2: TText;
    Rectangle8: TRectangle;
    Text8: TText;
    ComboBox1: TComboBox;
    Rectangle9: TRectangle;
    Text9: TText;
    Rectangle10: TRectangle;
    Text10: TText;
    Rectangle11: TRectangle;
    Text11: TText;
    ComboBox16: TComboBox;
    Rectangle12: TRectangle;
    Text12: TText;
    ComboBox21: TComboBox;
    Rectangle13: TRectangle;
    Text13: TText;
    ComboBox26: TComboBox;
    Rectangle14: TRectangle;
    Text14: TText;
    ComboBox31: TComboBox;
    Rectangle15: TRectangle;
    Text15: TText;
    ComboBox36: TComboBox;
    ComboBox2: TComboBox;
    Rectangle3: TRectangle;
    Text1: TText;
    ComboBox3: TComboBox;
    Rectangle4: TRectangle;
    Text3: TText;
    ComboBox4: TComboBox;
    Rectangle5: TRectangle;
    ComboBox5: TComboBox;
    Text4: TText;
    Rectangle6: TRectangle;
    Text5: TText;
    SpinBox1: TSpinBox;
    Rectangle7: TRectangle;
    Text6: TText;
    Rectangle16: TRectangle;
    ComboBox6: TComboBox;
    Text7: TText;
    Rectangle17: TRectangle;
    Text16: TText;
    ComboBox7: TComboBox;
    GroupBox1: TGroupBox;
    Rectangle18: TRectangle;
    Text17: TText;
    Edit1: TEdit;
    Text18: TText;
    Text19: TText;
    Edit2: TEdit;
    Text20: TText;
    Text21: TText;
    Edit3: TEdit;
    Text22: TText;
    Rectangle19: TRectangle;
    CheckBox1: TCheckBox;
    chkJavaraAutoClose: TCheckBox;
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

procedure TframeDoorSetting.FlowLayout1Resize(Sender: TObject);
begin
  (*
  FlowLayout1.Height := rectETCSetting.Position.Y + rectETCSetting.Height;

  if FlowLayout1.Height <= 600 then
  begin
    ScrollBox1.RealignContent;
  end;
  *)

end;

procedure TframeDoorSetting.formCreate;
begin
  //StyleBook1.LoadFromFile('E:\2024\Project\XE10.2\Style\editYellow.style');
  //edit.StyleLookup :='Edit1Style1';
end;

procedure TframeDoorSetting.ScrollBox1Resize(Sender: TObject);
begin
  FlowLayout1.Width := 910;

  if ScrollBox1.Width < 910 then FlowLayout1.Width := ScrollBox1.Width;
     (*
  if rectZoneExtend8.Visible then
  begin
    FlowLayout1.Height := rectZoneExtend8.Position.Y + rectZoneExtend8.Height;
  end else if rectZoneExtend7.Visible then
  begin
    FlowLayout1.Height := rectZoneExtend7.Position.Y + rectZoneExtend7.Height;
  end else if rectZoneExtend6.Visible then
  begin
    FlowLayout1.Height := rectZoneExtend6.Position.Y + rectZoneExtend6.Height;
  end else if rectZoneExtend5.Visible then
  begin
    FlowLayout1.Height := rectZoneExtend5.Position.Y + rectZoneExtend5.Height;
  end else if rectZoneExtend4.Visible then
  begin
    FlowLayout1.Height := rectZoneExtend4.Position.Y + rectZoneExtend4.Height;
  end else if rectZoneExtend3.Visible then
  begin
    FlowLayout1.Height := rectZoneExtend3.Position.Y + rectZoneExtend3.Height;
  end else if rectZoneExtend2.Visible then
  begin
    FlowLayout1.Height := rectZoneExtend2.Position.Y + rectZoneExtend2.Height;
  end else if rectZoneExtend1.Visible then
  begin
    FlowLayout1.Height := rectZoneExtend1.Position.Y + rectZoneExtend1.Height;
  end;
            *)

  if FlowLayout1.Width <= 710 then FlowLayout1.Width := 710;

end;

end.
