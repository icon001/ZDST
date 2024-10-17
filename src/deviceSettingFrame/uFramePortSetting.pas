unit uFramePortSetting;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.EditBox,
  FMX.SpinBox, FMX.ListBox;

type
  TframePortSetting = class(TFrame)
    Rectangle1: TRectangle;
    roundHint: TRoundRect;
    txtHint: TText;
    GridPanelLayout1: TGridPanelLayout;
    Text1: TText;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    rectPortSetting: TRectangle;
    gbPortSetting: TGroupBox;
    GridPanelLayout2: TGridPanelLayout;
    Rectangle2: TRectangle;
    Text2: TText;
    Rectangle3: TRectangle;
    Text3: TText;
    Rectangle4: TRectangle;
    Text4: TText;
    Rectangle5: TRectangle;
    Text5: TText;
    Rectangle6: TRectangle;
    Text6: TText;
    Rectangle7: TRectangle;
    Text7: TText;
    Rectangle8: TRectangle;
    Text8: TText;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    Rectangle9: TRectangle;
    Text9: TText;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    Rectangle10: TRectangle;
    Text10: TText;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    ComboBox13: TComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    Rectangle11: TRectangle;
    Text11: TText;
    ComboBox16: TComboBox;
    ComboBox17: TComboBox;
    ComboBox18: TComboBox;
    ComboBox19: TComboBox;
    ComboBox20: TComboBox;
    Rectangle12: TRectangle;
    Text12: TText;
    ComboBox21: TComboBox;
    ComboBox22: TComboBox;
    ComboBox23: TComboBox;
    ComboBox24: TComboBox;
    ComboBox25: TComboBox;
    Rectangle13: TRectangle;
    Text13: TText;
    ComboBox26: TComboBox;
    ComboBox27: TComboBox;
    ComboBox28: TComboBox;
    ComboBox29: TComboBox;
    ComboBox30: TComboBox;
    Rectangle14: TRectangle;
    Text14: TText;
    ComboBox31: TComboBox;
    ComboBox32: TComboBox;
    ComboBox33: TComboBox;
    ComboBox34: TComboBox;
    ComboBox35: TComboBox;
    Rectangle15: TRectangle;
    Text15: TText;
    ComboBox36: TComboBox;
    ComboBox37: TComboBox;
    ComboBox38: TComboBox;
    ComboBox39: TComboBox;
    ComboBox40: TComboBox;
    rectEmZone: TRectangle;
    gbEmZone: TGroupBox;
    GridPanelLayout3: TGridPanelLayout;
    Text16: TText;
    cmbEmZoneLamp: TComboBox;
    Text17: TText;
    cmbEmZoneSiren: TComboBox;
    rectMoveTime: TRectangle;
    gbMoveTime: TGroupBox;
    GridPanelLayout4: TGridPanelLayout;
    Text18: TText;
    rectLampTime: TRectangle;
    Text19: TText;
    rectSirenTime: TRectangle;
    edLampTime: TEdit;
    edSirenTime: TEdit;
    txtLampTime: TText;
    txtSirenTime: TText;
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

procedure TframePortSetting.FlowLayout1Resize(Sender: TObject);
begin
  (*
  FlowLayout1.Height := rectETCSetting.Position.Y + rectETCSetting.Height;

  if FlowLayout1.Height <= 600 then
  begin
    ScrollBox1.RealignContent;
  end;
  *)

end;

procedure TframePortSetting.formCreate;
begin
  //StyleBook1.LoadFromFile('E:\2024\Project\XE10.2\Style\editYellow.style');
  //edit.StyleLookup :='Edit1Style1';
end;

procedure TframePortSetting.ScrollBox1Resize(Sender: TObject);
begin
  FlowLayout1.Width := ScrollBox1.Width;
  FlowLayout1.Height := ScrollBox1.Height;

  if FlowLayout1.Width <= 710 then FlowLayout1.Width := 710;
  if FlowLayout1.Height <= 465 then  FlowLayout1.Height := 465;

end;

end.
