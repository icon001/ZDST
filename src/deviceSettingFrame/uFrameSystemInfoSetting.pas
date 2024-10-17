unit uFrameSystemInfoSetting;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.EditBox,
  FMX.SpinBox, FMX.ListBox;

type
  TframeSystemInfoSetting = class(TFrame)
    Rectangle1: TRectangle;
    roundHint: TRoundRect;
    txtHint: TText;
    GridPanelLayout1: TGridPanelLayout;
    Text1: TText;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    rectSystemSetting: TRectangle;
    gbSystemInfoSetting: TGroupBox;
    GridPanelLayout2: TGridPanelLayout;
    txtPowerOnOFF: TText;
    StyleBook1: TStyleBook;
    cmbPowerOnOFF: TComboBox;
    txtOutDelayTime: TText;
    rectOutDelayTime: TRectangle;
    txtInDelayTime: TText;
    rectInDelayTime: TRectangle;
    txtInPosDelayUse: TText;
    Rectangle4: TRectangle;
    cmbInPosDelayUse: TComboBox;
    rectArmAreaUse: TRectangle;
    chkArmAreaUse: TCheckBox;
    txtDoorType1: TText;
    Rectangle6: TRectangle;
    cmbDoorType1: TComboBox;
    Rectangle7: TRectangle;
    cmbDooArmArea1: TComboBox;
    txtDoorType2: TText;
    Rectangle8: TRectangle;
    cmbDoorType2: TComboBox;
    Rectangle9: TRectangle;
    cmbDooArmArea2: TComboBox;
    txtDoorType3: TText;
    Rectangle10: TRectangle;
    cmbDoorType3: TComboBox;
    Rectangle11: TRectangle;
    cmbDooArmArea3: TComboBox;
    txtDoorType4: TText;
    Rectangle12: TRectangle;
    cmbDoorType4: TComboBox;
    Rectangle13: TRectangle;
    cmbDooArmArea4: TComboBox;
    txtDoorType5: TText;
    Rectangle14: TRectangle;
    cmbDoorType5: TComboBox;
    Rectangle15: TRectangle;
    cmbDooArmArea5: TComboBox;
    txtDoorType6: TText;
    Rectangle16: TRectangle;
    cmbDoorType6: TComboBox;
    Rectangle17: TRectangle;
    cmbDooArmArea6: TComboBox;
    txtDoorType7: TText;
    Rectangle18: TRectangle;
    cmbDoorType7: TComboBox;
    Rectangle19: TRectangle;
    cmbDooArmArea7: TComboBox;
    txtDoorType8: TText;
    Rectangle20: TRectangle;
    cmbDoorType8: TComboBox;
    Rectangle21: TRectangle;
    cmbDooArmArea8: TComboBox;
    txtArmRelay: TText;
    cmbArmRelay: TComboBox;
    txtDoor2Use: TText;
    cmbDoor2Use: TComboBox;
    Text15: TText;
    edit: TEdit;
    rectETCSetting: TRectangle;
    FlowLayout2: TFlowLayout;
    Rectangle22: TRectangle;
    gbTelLine: TGroupBox;
    edTelLine: TEdit;
    Text16: TText;
    btnTelLine: TCornerButton;
    Rectangle23: TRectangle;
    gbServerCard: TGroupBox;
    cmbServerCard: TComboBox;
    Rectangle24: TRectangle;
    gbZoneExtendUse: TGroupBox;
    ComboBox22: TComboBox;
    GridPanelLayout3: TGridPanelLayout;
    txtZoneExtend1: TText;
    cmbZoneExtend1: TComboBox;
    txtZoneExtend2: TText;
    cmbZoneExtend2: TComboBox;
    txtZoneExtend3: TText;
    cmbZoneExtend3: TComboBox;
    txtZoneExtend4: TText;
    cmbZoneExtend4: TComboBox;
    txtZoneExtend5: TText;
    cmbZoneExtend5: TComboBox;
    txtZoneExtend6: TText;
    cmbZoneExtend6: TComboBox;
    txtZoneExtend7: TText;
    cmbZoneExtend7: TComboBox;
    txtZoneExtend8: TText;
    cmbZoneExtend8: TComboBox;
    spOutDelayTime: TSpinBox;
    txtOutDelaySec: TText;
    spInDelayTime: TSpinBox;
    txtInDelaySec: TText;
    procedure FlowLayout1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure formCreate;
  end;

implementation

{$R *.fmx}

procedure TframeSystemInfoSetting.FlowLayout1Resize(Sender: TObject);
begin
  FlowLayout1.Height := rectETCSetting.Position.Y + rectETCSetting.Height;

  if FlowLayout1.Height <= 600 then
  begin
    ScrollBox1.RealignContent;
  end;

end;

procedure TframeSystemInfoSetting.formCreate;
begin
  StyleBook1.LoadFromFile('E:\2024\Project\XE10.2\Style\editYellow.style');
  edit.StyleLookup :='Edit1Style1';
end;

end.
