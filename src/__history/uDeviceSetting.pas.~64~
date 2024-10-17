unit uDeviceSetting;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, System.ImageList, FMX.ImgList,
  FMX.ListBox, FMX.Edit;

type
  TfmDeviceSetting = class(TForm)
    Body: TRectangle;
    LeftMenu: TRectangle;
    blue_plt: TBrushObject;
    rectExplain: TRectangle;
    rectDetail: TRectangle;
    white: TBrushObject;
    btnConnect: TCornerButton;
    btnDeviceSetting: TCornerButton;
    btnSchedule: TCornerButton;
    btnCard: TCornerButton;
    btnRemoteControl: TCornerButton;
    btnMonitoring: TCornerButton;
    ImageList1: TImageList;
    btnEtc: TCornerButton;
    StyleBook1: TStyleBook;
    btnExit: TCornerButton;
    cardAlarm: TCircle;
    Ver_terg: TBrushObject;
    Orange: TBrushObject;
    Gris: TBrushObject;
    cardAlarmText: TText;
    deviceSettingAlarm: TCircle;
    deviceSettingAlarmText: TText;
    clickRectangle: TRectangle;
    btnSplit: TCornerButton;
    rectDetailTop: TRectangle;
    CornerButton1: TCornerButton;
    CornerButton2: TCornerButton;
    StyleBook2: TStyleBook;
    rectBodyBase: TRectangle;
    rectTopContent: TRectangle;
    btnFirmware: TCornerButton;
    Text1: TText;
    txtConnectIP: TText;
    Text2: TText;
    txtDeviceVer1: TText;
    txtDeviceVer2: TText;
    txtDeviceVer3: TText;
    Text3: TText;
    txtDeviceType: TText;
    Text4: TText;
    txtCardType: TText;
    procedure FormCreate(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnConnectClick(Sender: TObject);
    procedure btnDeviceSettingClick(Sender: TObject);
    procedure btnScheduleClick(Sender: TObject);
    procedure btnCardClick(Sender: TObject);
    procedure btnRemoteControlClick(Sender: TObject);
    procedure btnMonitoringClick(Sender: TObject);
    procedure btnEtcClick(Sender: TObject);
    procedure btnSplitClick(Sender: TObject);
  private
    frameLanSettingDetails : TFrame;
    frameLanSettingExplain : TFrame;

    frameExplainArray : array of TFrame;
    frameDetailArray : array of TFrame;
  private
    { Private declarations }
    procedure FormInitiailize;
    procedure ButtonClick(Sender: TObject);
    procedure ExplainFormVisible(no:Integer);
  public
    { Public declarations }
  end;

var
  fmDeviceSetting: TfmDeviceSetting;

implementation

uses
  uFrameLanSettingDetails,
  uFrameLanSettingExplain,
  uFrameDeviceSettingExplain,
  uFrameScheduleSettingExplain,
  uFrameCardSettingExplain,
  uFrameRemoteControlExplain,
  uFrameMonitoringExplain,
  uFrameEtcExplain,
  uFrameBodyBase;

{$R *.fmx}

procedure TfmDeviceSetting.btnCardClick(Sender: TObject);
begin
  ButtonClick(Sender);
  ExplainFormVisible(TCornerButton(Sender).Tag);
end;

procedure TfmDeviceSetting.btnConnectClick(Sender: TObject);
begin
  ButtonClick(Sender);
  ExplainFormVisible(TCornerButton(Sender).Tag);
end;

procedure TfmDeviceSetting.btnDeviceSettingClick(Sender: TObject);
begin
  ButtonClick(Sender);
  ExplainFormVisible(TCornerButton(Sender).Tag);
end;

procedure TfmDeviceSetting.btnEtcClick(Sender: TObject);
begin
  ButtonClick(Sender);
  ExplainFormVisible(TCornerButton(Sender).Tag);
end;

procedure TfmDeviceSetting.btnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfmDeviceSetting.btnMonitoringClick(Sender: TObject);
begin
  ButtonClick(Sender);
  ExplainFormVisible(TCornerButton(Sender).Tag);
end;

procedure TfmDeviceSetting.btnRemoteControlClick(Sender: TObject);
begin
  ButtonClick(Sender);
  ExplainFormVisible(TCornerButton(Sender).Tag);
end;

procedure TfmDeviceSetting.btnScheduleClick(Sender: TObject);
begin
  ButtonClick(Sender);
  ExplainFormVisible(TCornerButton(Sender).Tag);
end;

procedure TfmDeviceSetting.btnSplitClick(Sender: TObject);
begin
  rectExplain.Visible := Not rectExplain.Visible;
  if rectExplain.Visible then btnSplit.Text := '◀'
  else btnSplit.Text := '▶';
end;

procedure TfmDeviceSetting.ButtonClick(Sender: TObject);
var
  this : TButton;
begin
  this := TButton(Sender);
  clickRectangle.Parent := this;
end;

procedure TfmDeviceSetting.ExplainFormVisible(no: Integer);
var
  i : integer;
begin
  for i := 0 to Length(frameExplainArray) - 1 do
  begin
    if(frameExplainArray[i] <> nil) then TFrame(frameExplainArray[i]).Visible := False;
  end;
  if(frameExplainArray[no] <> nil) then TFrame(frameExplainArray[no]).Visible := True;
end;

procedure TfmDeviceSetting.FormCreate(Sender: TObject);
begin

  FormInitiailize;

end;


procedure TfmDeviceSetting.FormInitiailize;
begin
  cardAlarm.Visible := False;
  deviceSettingAlarm.Visible := False;

  SetLength(frameExplainArray,7);

  frameExplainArray[0] := TFrameLanSettingExplain.Create(self);
  frameExplainArray[0].Parent := rectExplain;
  frameExplainArray[0].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameExplainArray[0]).Visible := True;

  frameExplainArray[1] := TframeDeviceSettingExplain.Create(self);
  frameExplainArray[1].Parent := rectExplain;
  frameExplainArray[1].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameExplainArray[1]).Visible := False;

  frameExplainArray[2] := TframeScheduleSettingExplain.Create(self);
  frameExplainArray[2].Parent := rectExplain;
  frameExplainArray[2].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameExplainArray[2]).Visible := False;

  frameExplainArray[3] := TframeCardSettingExplain.Create(self);
  frameExplainArray[3].Parent := rectExplain;
  frameExplainArray[3].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameExplainArray[3]).Visible := False;

  frameExplainArray[4] := TframeRemoteControlExplain.Create(self);
  frameExplainArray[4].Parent := rectExplain;
  frameExplainArray[4].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameExplainArray[4]).Visible := False;

  frameExplainArray[5] := TframeMonitorinExplain.Create(self);
  frameExplainArray[5].Parent := rectExplain;
  frameExplainArray[5].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameExplainArray[5]).Visible := False;

  frameExplainArray[6] := TframeEtcExplain.Create(self);
  frameExplainArray[6].Parent := rectExplain;
  frameExplainArray[6].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameExplainArray[6]).Visible := False;

  SetLength(frameDetailArray,2);
  frameDetailArray[1] := TframeBodyBase.Create(self);
  frameDetailArray[1].Parent := rectBodyBase;
  frameDetailArray[1].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameDetailArray[1]).Visible := True;

  TframeBodyBase(frameDetailArray[1]).FormInitiailize;
end;

end.
