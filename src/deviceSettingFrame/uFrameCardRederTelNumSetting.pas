unit uFrameCardRederTelNumSetting;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.EditBox,
  FMX.SpinBox, FMX.ListBox;

type
  TframeCardRederTelNumSetting = class(TFrame)
    Rectangle1: TRectangle;
    roundHint: TRoundRect;
    txtHint: TText;
    GridPanelLayout1: TGridPanelLayout;
    txtHeader: TText;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    rectPhonNumSetting: TRectangle;
    gbCallTime: TGroupBox;
    Rectangle18: TRectangle;
    Text17: TText;
    Rectangle2: TRectangle;
    spCallTime: TSpinBox;
    Text7: TText;
    gbReaderPhonNumber: TGroupBox;
    GridPanelLayout2: TGridPanelLayout;
    Rectangle3: TRectangle;
    Text1: TText;
    Rectangle4: TRectangle;
    Text2: TText;
    Rectangle5: TRectangle;
    Text3: TText;
    Rectangle6: TRectangle;
    Text4: TText;
    Rectangle7: TRectangle;
    Edit1: TEdit;
    Rectangle8: TRectangle;
    Edit2: TEdit;
    Rectangle9: TRectangle;
    Text5: TText;
    Rectangle10: TRectangle;
    Edit3: TEdit;
    Rectangle11: TRectangle;
    Text6: TText;
    Rectangle12: TRectangle;
    Edit4: TEdit;
    Rectangle13: TRectangle;
    Text8: TText;
    Rectangle14: TRectangle;
    Edit5: TEdit;
    Rectangle15: TRectangle;
    Text9: TText;
    Rectangle16: TRectangle;
    Edit6: TEdit;
    Rectangle17: TRectangle;
    Text10: TText;
    Rectangle19: TRectangle;
    Edit7: TEdit;
    Rectangle20: TRectangle;
    Text11: TText;
    Rectangle21: TRectangle;
    Edit8: TEdit;
    Rectangle22: TRectangle;
    Text12: TText;
    Rectangle23: TRectangle;
    Edit9: TEdit;
    Rectangle24: TRectangle;
    Text13: TText;
    Rectangle25: TRectangle;
    Edit10: TEdit;
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

procedure TframeCardRederTelNumSetting.FlowLayout1Resize(Sender: TObject);
begin
  (*
  FlowLayout1.Height := rectETCSetting.Position.Y + rectETCSetting.Height;

  if FlowLayout1.Height <= 600 then
  begin
    ScrollBox1.RealignContent;
  end;
  *)

end;

procedure TframeCardRederTelNumSetting.formCreate;
begin
  //StyleBook1.LoadFromFile('E:\2024\Project\XE10.2\Style\editYellow.style');
  //edit.StyleLookup :='Edit1Style1';
end;

procedure TframeCardRederTelNumSetting.ScrollBox1Resize(Sender: TObject);
begin
  //FlowLayout1.Width := 345;

  FlowLayout1.Width := ScrollBox1.Width - 20;

  FlowLayout1.Height := rectPhonNumSetting.Position.Y + rectPhonNumSetting.Height;

  if FlowLayout1.Width <= 481 then FlowLayout1.Width := 481;

end;

end.
