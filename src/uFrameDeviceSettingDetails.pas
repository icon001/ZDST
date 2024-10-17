unit uFrameDeviceSettingDetails;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.TabControl, FMX.Layouts, FMX.Objects, FMX.Controls.Presentation,
  System.ImageList, FMX.ImgList;

type
  TframeDeviceSettingDetails = class(TFrame)
    TabControl1: TTabControl;
    tabMCU: TTabItem;
    tabSystem: TTabItem;
    tabPort: TTabItem;
    tabCardReader: TTabItem;
    tabMainToLocalDevice: TTabItem;
    tabArmAreaState: TTabItem;
    tabDoor: TTabItem;
    tabBLE: TTabItem;
    tabTimeCode: TTabItem;
    tabCardReaderTelNum: TTabItem;
    GridPanelLayout1: TGridPanelLayout;
    rectMCUSettingLeft: TRectangle;
    rectMCUSettingRight: TRectangle;
    CornerButton1: TCornerButton;
    CornerButton2: TCornerButton;
    ImageList1: TImageList;
    Rectangle1: TRectangle;
    StyleBook1: TStyleBook;
    GridPanelLayout2: TGridPanelLayout;
    rectMainToLoacalDevice: TRectangle;
    GridPanelLayout3: TGridPanelLayout;
    rectSystem: TRectangle;
    tabZoneExtend: TTabItem;
    rectPort: TRectangle;
    rectZoneExtend: TRectangle;
    rectArmAreaState: TRectangle;
    rectCardReader: TRectangle;
    rectDoorSetting: TRectangle;
  private
    { Private declarations }
    frameMCUSettingLeft : TFrame;
    frameMCUSettingRight : TFrame;
    frameMainToLocalDevice : TFrame;
    frameSystemInfoSetting : TFrame;
    framePortSetting : TFrame;
    frameExtZonePortSetting : TFrame;
    frameArmAreaState: TFrame;
    frameCardReaderSetting: TFrame;
  public
    { Public declarations }
    procedure FormInitiailize;
  end;

implementation

uses
  uFrameMCUSettingLeft,
  uFrameMCUSettingRight,
  uFrameMainToLocalDevice,
  uframeSystemInfoSetting,
  uFramePortSetting,
  uframeExtZonePortSetting,
  uFrameArmAreaState,
  uFrameCardReaderSetting;
{$R *.fmx}

{ TframeDeviceSettingDetails }

procedure TframeDeviceSettingDetails.FormInitiailize;
begin

  //MCU 설정 폼 로딩
  frameMCUSettingLeft:= TframeMCUSettingLeft.Create(self);
  frameMCUSettingLeft.Parent := rectMCUSettingLeft;
  frameMCUSettingLeft.Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TframeMCUSettingLeft(frameMCUSettingLeft).formCreate;
  frameMCUSettingLeft.Visible := True;
  frameMCUSettingRight:= TframeMCUSettingRight.Create(self);
  frameMCUSettingRight.Parent := rectMCUSettingRight;
  frameMCUSettingRight.Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TframeMCUSettingRight(frameMCUSettingRight).formCreate;
  frameMCUSettingRight.Visible := True;


  //경계 부가 기능 폼 로딩
  frameMainToLocalDevice:= TframeMainToLocalDevice.Create(self);
  frameMainToLocalDevice.Parent := rectMainToLoacalDevice;
  frameMainToLocalDevice.Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TframeMainToLocalDevice(frameMainToLocalDevice).formCreate;
  frameMainToLocalDevice.Visible := True;

  //시스템 정보 폼 로딩
  frameSystemInfoSetting:= TframeSystemInfoSetting.Create(self);
  frameSystemInfoSetting.Parent := rectSystem;
  frameSystemInfoSetting.Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TframeSystemInfoSetting(frameSystemInfoSetting).formCreate;
  frameSystemInfoSetting.Visible := True;

  //포트 설정 폼 로딩
  framePortSetting:= TframePortSetting.Create(self);
  framePortSetting.Parent := rectPort;
  framePortSetting.Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TframePortSetting(framePortSetting).formCreate;
  framePortSetting.Visible := True;

  //감장기 설정 폼 로딩
  frameExtZonePortSetting:= TframeExtZonePortSetting.Create(self);
  frameExtZonePortSetting.Parent := rectZoneExtend;
  frameExtZonePortSetting.Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TframeExtZonePortSetting(frameExtZonePortSetting).formCreate;
  frameExtZonePortSetting.Visible := True;

  //구역경계 현황  폼 로딩
  frameArmAreaState:= TframeArmAreaState.Create(self);
  frameArmAreaState.Parent := rectArmAreaState;
  frameArmAreaState.Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TframeArmAreaState(frameArmAreaState).formCreate;
  frameArmAreaState.Visible := True;

  //카드리더 설정  폼 로딩
  frameCardReaderSetting:= TframeCardReaderSetting.Create(self);
  frameCardReaderSetting.Parent := rectCardReader;
  frameCardReaderSetting.Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TframeCardReaderSetting(frameCardReaderSetting).formCreate;
  frameCardReaderSetting.Visible := True;

end;

end.
