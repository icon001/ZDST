unit uFrameCardReaderSetting;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.EditBox,
  FMX.SpinBox, FMX.ListBox;

type
  TframeCardReaderSetting = class(TFrame)
    Rectangle1: TRectangle;
    roundHint: TRoundRect;
    txtHint: TText;
    GridPanelLayout1: TGridPanelLayout;
    txtHeader: TText;
    ScrollBox1: TScrollBox;
    rectCardReaderSetting: TRectangle;
    rectTop: TRectangle;
    txtAllCardReaderType: TText;
    cmbAllReaderType: TComboBox;
    rectCenter: TRectangle;
    GridPanelLayout2: TGridPanelLayout;
    Rectangle2: TRectangle;
    Text1: TText;
    rectReaderNoHeader: TRectangle;
    txtReaderNoHeader: TText;
    rectReaderUseHeader: TRectangle;
    txtReaderUseHeader: TText;
    rectReaderDoorNum: TRectangle;
    txtReaderDoorNum: TText;
    rectReaderDoorPosition: TRectangle;
    txtReaderDoorPosition: TText;
    rectReaderBuildingPosition: TRectangle;
    txtReaderBuildingPosition: TText;
    Text2: TText;
    Text3: TText;
    rectReaderType: TRectangle;
    txtReaderType: TText;
    rectArmArea: TRectangle;
    txtArmArea: TText;
    rectSoundUse: TRectangle;
    txtSoundUse: TText;
    rectOutSound: TRectangle;
    txtOutSound: TText;
    rectReaderVer: TRectangle;
    txtReaderVer: TText;
    rectReaderNo1: TRectangle;
    txtReaderNo1: TText;
    cmbReaderUse1: TComboBox;
    cmbDoorNum1: TComboBox;
    cmbDoorPosi1: TComboBox;
    cmbBuildingPosi1: TComboBox;
    cmbReaderType1: TComboBox;
    cmbArmArea1: TComboBox;
    cmbSound1: TComboBox;
    cmbOutSound1: TComboBox;
    edReaderVer1: TEdit;
    rectReaderNo2: TRectangle;
    txtReaderNo2: TText;
    cmbReaderUse2: TComboBox;
    cmbDoorNum2: TComboBox;
    cmbDoorPosi2: TComboBox;
    cmbBuildingPosi2: TComboBox;
    cmbReaderType2: TComboBox;
    cmbArmArea2: TComboBox;
    cmbSound2: TComboBox;
    cmbOutSound2: TComboBox;
    edReaderVer2: TEdit;
    rectReaderNo3: TRectangle;
    txtReaderNo3: TText;
    cmbReaderUse3: TComboBox;
    cmbDoorNum3: TComboBox;
    cmbDoorPosi3: TComboBox;
    cmbBuildingPosi3: TComboBox;
    cmbReaderType3: TComboBox;
    cmbArmArea3: TComboBox;
    cmbSound3: TComboBox;
    cmbOutSound3: TComboBox;
    edReaderVer3: TEdit;
    rectReaderNo4: TRectangle;
    txtReaderNo4: TText;
    cmbReaderUse4: TComboBox;
    cmbDoorNum4: TComboBox;
    cmbDoorPosi4: TComboBox;
    cmbBuildingPosi4: TComboBox;
    cmbReaderType4: TComboBox;
    cmbArmArea4: TComboBox;
    cmbSound4: TComboBox;
    cmbOutSound4: TComboBox;
    edReaderVer4: TEdit;
    rectReaderNo5: TRectangle;
    txtReaderNo5: TText;
    cmbReaderUse5: TComboBox;
    cmbDoorNum5: TComboBox;
    cmbDoorPosi5: TComboBox;
    cmbBuildingPosi5: TComboBox;
    cmbReaderType5: TComboBox;
    cmbArmArea5: TComboBox;
    cmbSound5: TComboBox;
    cmbOutSound5: TComboBox;
    edReaderVer5: TEdit;
    rectReaderNo6: TRectangle;
    txtReaderNo6: TText;
    cmbReaderUse6: TComboBox;
    cmbDoorNum6: TComboBox;
    cmbDoorPosi6: TComboBox;
    cmbBuildingPosi6: TComboBox;
    cmbReaderType6: TComboBox;
    cmbArmArea6: TComboBox;
    cmbSound6: TComboBox;
    cmbOutSound6: TComboBox;
    edReaderVer6: TEdit;
    rectReaderNo7: TRectangle;
    txtReaderNo7: TText;
    cmbReaderUse7: TComboBox;
    cmbDoorNum7: TComboBox;
    cmbDoorPosi7: TComboBox;
    cmbBuildingPosi7: TComboBox;
    cmbReaderType7: TComboBox;
    cmbArmArea7: TComboBox;
    cmbSound7: TComboBox;
    cmbOutSound7: TComboBox;
    edReaderVer7: TEdit;
    rectReaderNo8: TRectangle;
    txtReaderNo8: TText;
    cmbReaderUse8: TComboBox;
    cmbDoorNum8: TComboBox;
    cmbDoorPosi8: TComboBox;
    cmbBuildingPosi8: TComboBox;
    cmbReaderType8: TComboBox;
    cmbArmArea8: TComboBox;
    cmbSound8: TComboBox;
    cmbOutSound8: TComboBox;
    edReaderVer8: TEdit;
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

procedure TframeCardReaderSetting.FlowLayout1Resize(Sender: TObject);
begin
  (*
  FlowLayout1.Height := rectETCSetting.Position.Y + rectETCSetting.Height;

  if FlowLayout1.Height <= 600 then
  begin
    ScrollBox1.RealignContent;
  end;
  *)

end;

procedure TframeCardReaderSetting.formCreate;
begin
  //StyleBook1.LoadFromFile('E:\2024\Project\XE10.2\Style\editYellow.style');
  //edit.StyleLookup :='Edit1Style1';
end;

procedure TframeCardReaderSetting.ScrollBox1Resize(Sender: TObject);
begin
  //

end;

end.
