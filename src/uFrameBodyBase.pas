unit uFrameBodyBase;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.TreeView, System.ImageList, FMX.ImgList;

type
  TframeBodyBase = class(TFrame)
    rectDeviceState: TRectangle;
    ScrollBox1: TScrollBox;
    rectBody: TRectangle;
    TreeView_Device: TTreeView;
    ImageList1: TImageList;
    procedure FrameResize(Sender: TObject);
  private
    { Private declarations }
    frameDetailBodyArray : array of TFrame;

  public
    { Public declarations }
    procedure TreeViewChange;
    procedure FormInitiailize;
    procedure ExtendFormVisible(no: Integer);
  end;

implementation

uses
  uFrameDeviceSettingDetails,
  uFrameLanSettingDetails,
  uFrameFirmwareDetails,
  uFrameScheduleSettingDetails,
  uFrameCardSettingDetails;

{$R *.fmx}

procedure TframeBodyBase.ExtendFormVisible(no: Integer);
var
  i : integer;
begin
  for i := 0 to Length(frameDetailBodyArray)-1 do
  begin
    if frameDetailBodyArray[i]<>nil then frameDetailBodyArray[i].Visible := False;
  end;
  if (no < Length(frameDetailBodyArray)) and (frameDetailBodyArray[no]<>nil) then frameDetailBodyArray[no].Visible := True;

end;

procedure TframeBodyBase.FormInitiailize;
begin
  TreeViewChange;

  SetLength(frameDetailBodyArray,8); //기기설정,스케줄,카드등록,원격제어,모니터링


  frameDetailBodyArray[0]:= TFrameLanSettingDetails.Create(self);
  frameDetailBodyArray[0].Parent := rectBody;
  frameDetailBodyArray[0].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameDetailBodyArray[0]).Visible := True;
  TFrameLanSettingDetails(frameDetailBodyArray[0]).FormInitiailize;

  frameDetailBodyArray[1]:= TframeDeviceSettingDetails.Create(self);
  frameDetailBodyArray[1].Parent := rectBody;
  frameDetailBodyArray[1].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameDetailBodyArray[1]).Visible := False;
  TframeDeviceSettingDetails(frameDetailBodyArray[1]).FormInitiailize;

  //스케줄
  frameDetailBodyArray[2]:= TFrameScheduleSettingDetails.Create(self);
  frameDetailBodyArray[2].Parent := rectBody;
  frameDetailBodyArray[2].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameDetailBodyArray[2]).Visible := False;
  TFrameScheduleSettingDetails(frameDetailBodyArray[2]).FormInitiailize;

  //카드설정
  frameDetailBodyArray[3]:= TFrameCardSettingDetails.Create(self);
  frameDetailBodyArray[3].Parent := rectBody;
  frameDetailBodyArray[3].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameDetailBodyArray[3]).Visible := False;
  TFrameCardSettingDetails(frameDetailBodyArray[3]).FormInitiailize;

  //펌웨어 다운로드
  frameDetailBodyArray[7]:= TframeFirmwareDetails.Create(self);
  frameDetailBodyArray[7].Parent := rectBody;
  frameDetailBodyArray[7].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameDetailBodyArray[7]).Visible := False;
  TframeFirmwareDetails(frameDetailBodyArray[7]).FormInitiailize;

end;


procedure TframeBodyBase.FrameResize(Sender: TObject);
begin
  if (Height > 500 ) then rectBody.Height := Height    //높이를 768보다 작게 만들지는 않는다.
  else rectBody.Height := 500;
end;


procedure TframeBodyBase.TreeViewChange;
var
  RootNode, ChildNode: TTreeViewItem;
begin

  // 루트 노드 생성
  RootNode := TTreeViewItem.Create(TreeView_Device);
  RootNode.Text := '192.168.010.150';
  RootNode.ImageIndex := 0;
  TreeView_Device.AddObject(RootNode);

  // 자식 노드 생성
  ChildNode := TTreeViewItem.Create(RootNode);
  ChildNode.ImageIndex := 1;
  ChildNode.Text := '00';
  RootNode.AddObject(ChildNode);

  ChildNode := TTreeViewItem.Create(RootNode);
  ChildNode.ImageIndex := 1;
  ChildNode.Text := '01';
  RootNode.AddObject(ChildNode);

  // 트리뷰 갱신
  TreeView_Device.ExpandAll;
end;

end.
