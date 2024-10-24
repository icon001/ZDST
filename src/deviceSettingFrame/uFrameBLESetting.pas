unit uFrameBLESetting;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.EditBox,
  FMX.SpinBox, FMX.ListBox;

type
  TframeBLESetting = class(TFrame)
    Rectangle1: TRectangle;
    roundHint: TRoundRect;
    txtHint: TText;
    GridPanelLayout1: TGridPanelLayout;
    txtHeader: TText;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    rectICU: TRectangle;
    gbICU: TGroupBox;
    Rectangle18: TRectangle;
    Text17: TText;
    Edit1: TEdit;
    Text19: TText;
    Text21: TText;
    Edit3: TEdit;
    Rectangle19: TRectangle;
    SpinBox1: TSpinBox;
    rectCardReader1: TRectangle;
    gbCardReader1: TGroupBox;
    Rectangle3: TRectangle;
    Text1: TText;
    Edit2: TEdit;
    Text2: TText;
    SpinBox2: TSpinBox;
    Rectangle4: TRectangle;
    Text3: TText;
    Edit4: TEdit;
    rectCardReader2: TRectangle;
    GroupBox2: TGroupBox;
    Rectangle6: TRectangle;
    Text4: TText;
    Edit5: TEdit;
    Text5: TText;
    SpinBox3: TSpinBox;
    Rectangle7: TRectangle;
    Text6: TText;
    Edit6: TEdit;
    rectCardReader3: TRectangle;
    GroupBox3: TGroupBox;
    Rectangle9: TRectangle;
    Text7: TText;
    Edit7: TEdit;
    Text8: TText;
    SpinBox4: TSpinBox;
    Rectangle10: TRectangle;
    Text9: TText;
    Edit8: TEdit;
    rectCardReader4: TRectangle;
    GroupBox4: TGroupBox;
    Rectangle12: TRectangle;
    Text10: TText;
    Edit9: TEdit;
    Text11: TText;
    SpinBox5: TSpinBox;
    Rectangle13: TRectangle;
    Text12: TText;
    Edit10: TEdit;
    rectCardReader5: TRectangle;
    GroupBox5: TGroupBox;
    Rectangle15: TRectangle;
    Text13: TText;
    Edit11: TEdit;
    Text14: TText;
    SpinBox6: TSpinBox;
    Rectangle16: TRectangle;
    Text15: TText;
    Edit12: TEdit;
    rectCardReader6: TRectangle;
    GroupBox6: TGroupBox;
    Rectangle20: TRectangle;
    Text16: TText;
    Edit13: TEdit;
    Text18: TText;
    SpinBox7: TSpinBox;
    Rectangle21: TRectangle;
    Text20: TText;
    Edit14: TEdit;
    rectCardReader7: TRectangle;
    GroupBox7: TGroupBox;
    Rectangle23: TRectangle;
    Text22: TText;
    Edit15: TEdit;
    Text23: TText;
    SpinBox8: TSpinBox;
    Rectangle24: TRectangle;
    Text24: TText;
    Edit16: TEdit;
    rectCardReader8: TRectangle;
    GroupBox8: TGroupBox;
    Rectangle26: TRectangle;
    Text25: TText;
    Edit17: TEdit;
    Text26: TText;
    SpinBox9: TSpinBox;
    Rectangle27: TRectangle;
    Text27: TText;
    Edit18: TEdit;
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

procedure TframeBLESetting.FlowLayout1Resize(Sender: TObject);
begin
  (*
  FlowLayout1.Height := rectETCSetting.Position.Y + rectETCSetting.Height;

  if FlowLayout1.Height <= 600 then
  begin
    ScrollBox1.RealignContent;
  end;
  *)

end;

procedure TframeBLESetting.formCreate;
begin
  //StyleBook1.LoadFromFile('E:\2024\Project\XE10.2\Style\editYellow.style');
  //edit.StyleLookup :='Edit1Style1';
end;

procedure TframeBLESetting.ScrollBox1Resize(Sender: TObject);
begin
  //FlowLayout1.Width := 345;

  FlowLayout1.Width := ScrollBox1.Width - 20;
  if rectICU.Visible then
  begin
    rectICU.Width := FlowLayout1.Width;
    FlowLayout1.Height := rectICU.Position.Y + rectICU.Height;

  end ;
  if rectCardReader8.Visible then
  begin
    FlowLayout1.Height := rectCardReader8.Position.Y + rectCardReader8.Height;
  end else if rectCardReader7.Visible then
  begin
    FlowLayout1.Height := rectCardReader7.Position.Y + rectCardReader7.Height;
  end else if rectCardReader6.Visible then
  begin
    FlowLayout1.Height := rectCardReader6.Position.Y + rectCardReader6.Height;
  end else if rectCardReader5.Visible then
  begin
    FlowLayout1.Height := rectCardReader5.Position.Y + rectCardReader5.Height;
  end else if rectCardReader4.Visible then
  begin
    FlowLayout1.Height := rectCardReader4.Position.Y + rectCardReader4.Height;
  end else if rectCardReader3.Visible then
  begin
    FlowLayout1.Height := rectCardReader3.Position.Y + rectCardReader3.Height;
  end else if rectCardReader2.Visible then
  begin
    FlowLayout1.Height := rectCardReader2.Position.Y + rectCardReader2.Height;
  end else if rectCardReader1.Visible then
  begin
    FlowLayout1.Height := rectCardReader1.Position.Y + rectCardReader1.Height;
  end;


  if FlowLayout1.Width <= 450 then FlowLayout1.Width := 450;

end;

end.
