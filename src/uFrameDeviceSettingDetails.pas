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
  private
    { Private declarations }
    frameMCUSettingLeft : TFrame;
    frameMCUSettingRight : TFrame;
    frameMainToLocalDevice : TFrame;
    frameSystemInfoSetting : TFrame;
  public
    { Public declarations }
    procedure FormInitiailize;
  end;

implementation

uses
  uFrameMCUSettingLeft,
  uFrameMCUSettingRight,
  uFrameMainToLocalDevice,
  uframeSystemInfoSetting;
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

end;

end.
