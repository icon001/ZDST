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
    cmbDoorMode1: TComboBox;
    Rectangle9: TRectangle;
    Text9: TText;
    Rectangle10: TRectangle;
    Text10: TText;
    Rectangle11: TRectangle;
    Text11: TText;
    cmbDoorLongOpenUse1: TComboBox;
    Rectangle12: TRectangle;
    Text12: TText;
    cmbDoorStateUse1: TComboBox;
    Rectangle13: TRectangle;
    Text13: TText;
    cmbAntiPassUse1: TComboBox;
    Rectangle14: TRectangle;
    Text14: TText;
    cmbScheduleUse1: TComboBox;
    Rectangle15: TRectangle;
    Text15: TText;
    cmbFireDoorOpenUse1: TComboBox;
    cmbCardTypy1: TComboBox;
    Rectangle3: TRectangle;
    Text1: TText;
    cmbDoorLockType1: TComboBox;
    Rectangle4: TRectangle;
    Text3: TText;
    cmbDoorOpenState1: TComboBox;
    Rectangle5: TRectangle;
    cmbDoorControlTime1: TComboBox;
    Text4: TText;
    Rectangle6: TRectangle;
    Text5: TText;
    spDoorLongTime1: TSpinBox;
    Rectangle7: TRectangle;
    Text6: TText;
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
    cmbArmDoorOpenCheck1: TComboBox;
    Rectangle20: TRectangle;
    Text23: TText;
    Rectangle21: TRectangle;
    cmbDoorDSTime1: TComboBox;
    Text24: TText;
    Rectangle17: TRectangle;
    Text16: TText;
    cmbRemotDisArmDoorOpen1: TComboBox;
    rectDoor2: TRectangle;
    GroupBox2: TGroupBox;
    GridPanelLayout3: TGridPanelLayout;
    Rectangle22: TRectangle;
    Text7: TText;
    Rectangle23: TRectangle;
    Text25: TText;
    cmbDoorMode2: TComboBox;
    Rectangle24: TRectangle;
    Text26: TText;
    Rectangle25: TRectangle;
    Text27: TText;
    Rectangle26: TRectangle;
    Text28: TText;
    ComboBox2: TComboBox;
    Rectangle27: TRectangle;
    Text29: TText;
    ComboBox3: TComboBox;
    Rectangle28: TRectangle;
    Text30: TText;
    ComboBox4: TComboBox;
    Rectangle29: TRectangle;
    Text31: TText;
    ComboBox5: TComboBox;
    Rectangle30: TRectangle;
    Text32: TText;
    ComboBox6: TComboBox;
    cmbCardTypy2: TComboBox;
    Rectangle31: TRectangle;
    Text33: TText;
    ComboBox8: TComboBox;
    Rectangle32: TRectangle;
    Text34: TText;
    ComboBox9: TComboBox;
    Rectangle33: TRectangle;
    ComboBox10: TComboBox;
    Text35: TText;
    Rectangle34: TRectangle;
    Text36: TText;
    SpinBox1: TSpinBox;
    Rectangle35: TRectangle;
    Text37: TText;
    ComboBox11: TComboBox;
    Rectangle36: TRectangle;
    Text38: TText;
    Rectangle37: TRectangle;
    ComboBox12: TComboBox;
    Text39: TText;
    Rectangle38: TRectangle;
    Text40: TText;
    ComboBox13: TComboBox;
    rectDoor3: TRectangle;
    GroupBox3: TGroupBox;
    GridPanelLayout4: TGridPanelLayout;
    Rectangle40: TRectangle;
    Text41: TText;
    Rectangle41: TRectangle;
    Text42: TText;
    ComboBox1: TComboBox;
    Rectangle42: TRectangle;
    Text43: TText;
    Rectangle43: TRectangle;
    Text44: TText;
    Rectangle44: TRectangle;
    Text45: TText;
    ComboBox7: TComboBox;
    Rectangle45: TRectangle;
    Text46: TText;
    ComboBox14: TComboBox;
    Rectangle46: TRectangle;
    Text47: TText;
    ComboBox15: TComboBox;
    Rectangle47: TRectangle;
    Text48: TText;
    ComboBox16: TComboBox;
    Rectangle48: TRectangle;
    Text49: TText;
    ComboBox17: TComboBox;
    ComboBox18: TComboBox;
    Rectangle49: TRectangle;
    Text50: TText;
    ComboBox19: TComboBox;
    Rectangle50: TRectangle;
    Text51: TText;
    ComboBox20: TComboBox;
    Rectangle51: TRectangle;
    ComboBox21: TComboBox;
    Text52: TText;
    Rectangle52: TRectangle;
    Text53: TText;
    SpinBox2: TSpinBox;
    Rectangle53: TRectangle;
    Text54: TText;
    ComboBox22: TComboBox;
    Rectangle54: TRectangle;
    Text55: TText;
    Rectangle55: TRectangle;
    ComboBox23: TComboBox;
    Text56: TText;
    Rectangle56: TRectangle;
    Text57: TText;
    ComboBox24: TComboBox;
    rectDoor4: TRectangle;
    GroupBox4: TGroupBox;
    GridPanelLayout5: TGridPanelLayout;
    Rectangle58: TRectangle;
    Text58: TText;
    Rectangle59: TRectangle;
    Text59: TText;
    ComboBox25: TComboBox;
    Rectangle60: TRectangle;
    Text60: TText;
    Rectangle61: TRectangle;
    Text61: TText;
    Rectangle62: TRectangle;
    Text62: TText;
    ComboBox26: TComboBox;
    Rectangle63: TRectangle;
    Text63: TText;
    ComboBox27: TComboBox;
    Rectangle64: TRectangle;
    Text64: TText;
    ComboBox28: TComboBox;
    Rectangle65: TRectangle;
    Text65: TText;
    ComboBox29: TComboBox;
    Rectangle66: TRectangle;
    Text66: TText;
    ComboBox30: TComboBox;
    ComboBox31: TComboBox;
    Rectangle67: TRectangle;
    Text67: TText;
    ComboBox32: TComboBox;
    Rectangle68: TRectangle;
    Text68: TText;
    ComboBox33: TComboBox;
    Rectangle69: TRectangle;
    ComboBox34: TComboBox;
    Text69: TText;
    Rectangle70: TRectangle;
    Text70: TText;
    SpinBox3: TSpinBox;
    Rectangle71: TRectangle;
    Text71: TText;
    ComboBox35: TComboBox;
    Rectangle72: TRectangle;
    Text72: TText;
    Rectangle73: TRectangle;
    ComboBox36: TComboBox;
    Text73: TText;
    Rectangle74: TRectangle;
    Text74: TText;
    ComboBox37: TComboBox;
    rectDoor5: TRectangle;
    GroupBox5: TGroupBox;
    GridPanelLayout6: TGridPanelLayout;
    Rectangle76: TRectangle;
    Text75: TText;
    Rectangle77: TRectangle;
    Text76: TText;
    ComboBox38: TComboBox;
    Rectangle78: TRectangle;
    Text77: TText;
    Rectangle79: TRectangle;
    Text78: TText;
    Rectangle80: TRectangle;
    Text79: TText;
    ComboBox39: TComboBox;
    Rectangle81: TRectangle;
    Text80: TText;
    ComboBox40: TComboBox;
    Rectangle82: TRectangle;
    Text81: TText;
    ComboBox41: TComboBox;
    Rectangle83: TRectangle;
    Text82: TText;
    ComboBox42: TComboBox;
    Rectangle84: TRectangle;
    Text83: TText;
    ComboBox43: TComboBox;
    ComboBox44: TComboBox;
    Rectangle85: TRectangle;
    Text84: TText;
    ComboBox45: TComboBox;
    Rectangle86: TRectangle;
    Text85: TText;
    ComboBox46: TComboBox;
    Rectangle87: TRectangle;
    ComboBox47: TComboBox;
    Text86: TText;
    Rectangle88: TRectangle;
    Text87: TText;
    SpinBox4: TSpinBox;
    Rectangle89: TRectangle;
    Text88: TText;
    ComboBox48: TComboBox;
    Rectangle90: TRectangle;
    Text89: TText;
    Rectangle91: TRectangle;
    ComboBox49: TComboBox;
    Text90: TText;
    Rectangle92: TRectangle;
    Text91: TText;
    ComboBox50: TComboBox;
    rectDoor6: TRectangle;
    GroupBox6: TGroupBox;
    GridPanelLayout7: TGridPanelLayout;
    Rectangle94: TRectangle;
    Text92: TText;
    Rectangle95: TRectangle;
    Text93: TText;
    ComboBox51: TComboBox;
    Rectangle96: TRectangle;
    Text94: TText;
    Rectangle97: TRectangle;
    Text95: TText;
    Rectangle98: TRectangle;
    Text96: TText;
    ComboBox52: TComboBox;
    Rectangle99: TRectangle;
    Text97: TText;
    ComboBox53: TComboBox;
    Rectangle100: TRectangle;
    Text98: TText;
    ComboBox54: TComboBox;
    Rectangle101: TRectangle;
    Text99: TText;
    ComboBox55: TComboBox;
    Rectangle102: TRectangle;
    Text100: TText;
    ComboBox56: TComboBox;
    ComboBox57: TComboBox;
    Rectangle103: TRectangle;
    Text101: TText;
    ComboBox58: TComboBox;
    Rectangle104: TRectangle;
    Text102: TText;
    ComboBox59: TComboBox;
    Rectangle105: TRectangle;
    ComboBox60: TComboBox;
    Text103: TText;
    Rectangle106: TRectangle;
    Text104: TText;
    SpinBox5: TSpinBox;
    Rectangle107: TRectangle;
    Text105: TText;
    ComboBox61: TComboBox;
    Rectangle108: TRectangle;
    Text106: TText;
    Rectangle109: TRectangle;
    ComboBox62: TComboBox;
    Text107: TText;
    Rectangle110: TRectangle;
    Text108: TText;
    ComboBox63: TComboBox;
    rectDoor7: TRectangle;
    GroupBox7: TGroupBox;
    GridPanelLayout8: TGridPanelLayout;
    Rectangle112: TRectangle;
    Text109: TText;
    Rectangle113: TRectangle;
    Text110: TText;
    ComboBox64: TComboBox;
    Rectangle114: TRectangle;
    Text111: TText;
    Rectangle115: TRectangle;
    Text112: TText;
    Rectangle116: TRectangle;
    Text113: TText;
    ComboBox65: TComboBox;
    Rectangle117: TRectangle;
    Text114: TText;
    ComboBox66: TComboBox;
    Rectangle118: TRectangle;
    Text115: TText;
    ComboBox67: TComboBox;
    Rectangle119: TRectangle;
    Text116: TText;
    ComboBox68: TComboBox;
    Rectangle120: TRectangle;
    Text117: TText;
    ComboBox69: TComboBox;
    ComboBox70: TComboBox;
    Rectangle121: TRectangle;
    Text118: TText;
    ComboBox71: TComboBox;
    Rectangle122: TRectangle;
    Text119: TText;
    ComboBox72: TComboBox;
    Rectangle123: TRectangle;
    ComboBox73: TComboBox;
    Text120: TText;
    Rectangle124: TRectangle;
    Text121: TText;
    SpinBox6: TSpinBox;
    Rectangle125: TRectangle;
    Text122: TText;
    ComboBox74: TComboBox;
    Rectangle126: TRectangle;
    Text123: TText;
    Rectangle127: TRectangle;
    ComboBox75: TComboBox;
    Text124: TText;
    Rectangle128: TRectangle;
    Text125: TText;
    ComboBox76: TComboBox;
    rectDoor8: TRectangle;
    GroupBox8: TGroupBox;
    GridPanelLayout9: TGridPanelLayout;
    Rectangle130: TRectangle;
    Text126: TText;
    Rectangle131: TRectangle;
    Text127: TText;
    ComboBox77: TComboBox;
    Rectangle132: TRectangle;
    Text128: TText;
    Rectangle133: TRectangle;
    Text129: TText;
    Rectangle134: TRectangle;
    Text130: TText;
    ComboBox78: TComboBox;
    Rectangle135: TRectangle;
    Text131: TText;
    ComboBox79: TComboBox;
    Rectangle136: TRectangle;
    Text132: TText;
    ComboBox80: TComboBox;
    Rectangle137: TRectangle;
    Text133: TText;
    ComboBox81: TComboBox;
    Rectangle138: TRectangle;
    Text134: TText;
    ComboBox82: TComboBox;
    ComboBox83: TComboBox;
    Rectangle139: TRectangle;
    Text135: TText;
    ComboBox84: TComboBox;
    Rectangle140: TRectangle;
    Text136: TText;
    ComboBox85: TComboBox;
    Rectangle141: TRectangle;
    ComboBox86: TComboBox;
    Text137: TText;
    Rectangle142: TRectangle;
    Text138: TText;
    SpinBox7: TSpinBox;
    Rectangle143: TRectangle;
    Text139: TText;
    ComboBox87: TComboBox;
    Rectangle144: TRectangle;
    Text140: TText;
    Rectangle145: TRectangle;
    ComboBox88: TComboBox;
    Text141: TText;
    Rectangle146: TRectangle;
    Text142: TText;
    ComboBox89: TComboBox;
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
  //FlowLayout1.Width := 345;
  rectJavara.Width := 2000;

  FlowLayout1.Width := ScrollBox1.Width - 20;
  if rectJavara.Visible then rectJavara.Width := FlowLayout1.Width;

  if rectDoor8.Visible then
  begin
    FlowLayout1.Height := rectDoor8.Position.Y + rectDoor8.Height;
  end else if rectDoor7.Visible then
  begin
    FlowLayout1.Height := rectDoor7.Position.Y + rectDoor7.Height;
  end else if rectDoor6.Visible then
  begin
    FlowLayout1.Height := rectDoor6.Position.Y + rectDoor6.Height;
  end else if rectDoor5.Visible then
  begin
    FlowLayout1.Height := rectDoor5.Position.Y + rectDoor5.Height;
  end else if rectDoor4.Visible then
  begin
    FlowLayout1.Height := rectDoor4.Position.Y + rectDoor4.Height;
  end else if rectDoor3.Visible then
  begin
    FlowLayout1.Height := rectDoor3.Position.Y + rectDoor3.Height;
  end else if rectDoor2.Visible then
  begin
    FlowLayout1.Height := rectDoor2.Position.Y + rectDoor2.Height;
  end else if rectDoor1.Visible then
  begin
    FlowLayout1.Height := rectDoor1.Position.Y + rectDoor1.Height;
  end;


  if FlowLayout1.Width <= 345 then FlowLayout1.Width := 345;
  if rectJavara.Visible and (FlowLayout1.Width <= 690) then
  begin
    FlowLayout1.Width := 690;
    rectJavara.Width := 690;
  end;

end;

end.
