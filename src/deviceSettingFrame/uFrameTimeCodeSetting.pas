unit uFrameTimeCodeSetting;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.EditBox,
  FMX.SpinBox, FMX.ListBox;

type
  TframeTimeCodeSetting = class(TFrame)
    Rectangle1: TRectangle;
    roundHint: TRoundRect;
    txtHint: TText;
    GridPanelLayout1: TGridPanelLayout;
    txtHeader: TText;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    rectTimeCode: TRectangle;
    gbTimeCodeUse: TGroupBox;
    Rectangle18: TRectangle;
    Text17: TText;
    Rectangle2: TRectangle;
    chkDoor1: TCheckBox;
    chkDoor2: TCheckBox;
    chkDoor8: TCheckBox;
    chkDoor7: TCheckBox;
    chkDoor6: TCheckBox;
    chkDoor5: TCheckBox;
    chkDoor4: TCheckBox;
    chkDoor3: TCheckBox;
    gbTimeCode: TGroupBox;
    GridPanelLayout2: TGridPanelLayout;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Text1: TText;
    Rectangle5: TRectangle;
    Text2: TText;
    Rectangle6: TRectangle;
    Text3: TText;
    Rectangle7: TRectangle;
    Text4: TText;
    Rectangle8: TRectangle;
    Text5: TText;
    Rectangle9: TRectangle;
    GridPanelLayout3: TGridPanelLayout;
    Edit1: TEdit;
    Edit2: TEdit;
    Rectangle10: TRectangle;
    GridPanelLayout4: TGridPanelLayout;
    Edit3: TEdit;
    Edit4: TEdit;
    Rectangle11: TRectangle;
    GridPanelLayout5: TGridPanelLayout;
    Edit5: TEdit;
    Edit6: TEdit;
    Rectangle12: TRectangle;
    GridPanelLayout6: TGridPanelLayout;
    Edit7: TEdit;
    Edit8: TEdit;
    Rectangle13: TRectangle;
    Text6: TText;
    Rectangle14: TRectangle;
    GridPanelLayout7: TGridPanelLayout;
    Edit9: TEdit;
    Edit10: TEdit;
    Rectangle15: TRectangle;
    GridPanelLayout8: TGridPanelLayout;
    Edit11: TEdit;
    Edit12: TEdit;
    Rectangle16: TRectangle;
    GridPanelLayout9: TGridPanelLayout;
    Edit13: TEdit;
    Edit14: TEdit;
    Rectangle17: TRectangle;
    GridPanelLayout10: TGridPanelLayout;
    Edit15: TEdit;
    Edit16: TEdit;
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

procedure TframeTimeCodeSetting.FlowLayout1Resize(Sender: TObject);
begin
  (*
  FlowLayout1.Height := rectETCSetting.Position.Y + rectETCSetting.Height;

  if FlowLayout1.Height <= 600 then
  begin
    ScrollBox1.RealignContent;
  end;
  *)

end;

procedure TframeTimeCodeSetting.formCreate;
begin
  //StyleBook1.LoadFromFile('E:\2024\Project\XE10.2\Style\editYellow.style');
  //edit.StyleLookup :='Edit1Style1';
end;

procedure TframeTimeCodeSetting.ScrollBox1Resize(Sender: TObject);
begin
  //FlowLayout1.Width := 345;

  FlowLayout1.Width := ScrollBox1.Width - 20;

  FlowLayout1.Height := rectTimeCode.Position.Y + rectTimeCode.Height;

  if FlowLayout1.Width <= 481 then FlowLayout1.Width := 481;

end;

end.
