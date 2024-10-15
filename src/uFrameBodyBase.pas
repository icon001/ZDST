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
  end;

implementation

uses
  uFrameDeviceSettingDetails;

{$R *.fmx}

procedure TframeBodyBase.FormInitiailize;
begin
  TreeViewChange;

  SetLength(frameDetailBodyArray,5); //기기설정,스케줄,카드등록,원격제어,모니터링
  frameDetailBodyArray[0]:= TframeDeviceSettingDetails.Create(self);
  frameDetailBodyArray[0].Parent := rectBody;
  frameDetailBodyArray[0].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TFrame(frameDetailBodyArray[0]).Visible := True;
  TframeDeviceSettingDetails(frameDetailBodyArray[0]).FormInitiailize;


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
