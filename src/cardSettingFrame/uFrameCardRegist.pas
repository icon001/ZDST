unit uFrameCardRegist;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.ListBox, FMX.Objects, FMX.TMSBaseControl, FMX.TMSGridCell,
  FMX.TMSGridOptions, FMX.TMSGridData, FMX.TMSCustomGrid, FMX.TMSGrid,
  FMX.Layouts, FMX.Controls.Presentation;

type
  TframeCardRegist = class(TFrame)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Text1: TText;
    ComboBox1: TComboBox;
    Splitter1: TSplitter;
    TMSFMXGrid1: TTMSFMXGrid;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Text2: TText;
    ComboBox2: TComboBox;
    rectAuthDeviceSelect: TRectangle;
    rectAuthDeviceSearch: TRectangle;
    Rectangle7: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    rectDoorSelect: TRectangle;
    txtDoorSelect: TText;
    rectArmAreaSelect: TRectangle;
    txtArmAreaSelect: TText;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    FlowLayout1: TFlowLayout;
    FlowLayout2: TFlowLayout;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
  private
    { Private declarations }
    frameDoorListArray : array of TFrame;
    frameArmAreaListArray : array of TFrame;
  public
    { Public declarations }
    procedure GridCreate;
    procedure ArmAreaVisible(aEcuID,aArmAreaNo:integer;aUsed:Boolean);
    procedure DoorVisible(aEcuID,aDoorNo:integer;aUsed:Boolean);
    procedure FormInitiailize;
  end;

implementation

{$R *.fmx}
uses
  uframeDoorList,
  uFMXFormUtil;


{ TframeCardRegist }

procedure TframeCardRegist.ArmAreaVisible(aEcuID, aArmAreaNo: integer;
  aUsed: Boolean);
var
  i,j:integer;
  curRect : TRectangle;
  lastVisibleRect : TRectangle;
begin
  //출입문 사용유무 변경시 해당 출입문을 숨기거나 보여 준다.
  curRect := dmFMXFormUtil.TravelRectangleItem(FlowLayout2,'rectArmAreaList' + inttostr(aEcuID) + inttostr(aArmAreaNo));

  if curRect <> nil then curRect.Visible := aUsed;

  lastVisibleRect := nil;
  for i := 0 to 63 do
  begin
    for j := 0 to 8 do
    begin
      curRect := dmFMXFormUtil.TravelRectangleItem(FlowLayout2,'rectArmAreaList' + inttostr(i) + inttostr(j));
      if(curRect<> nil) and(curRect.Visible) then  lastVisibleRect := curRect;
    end;
  end;
  if lastVisibleRect <> nil then
    FlowLayout2.Height := lastVisibleRect.Position.Y + lastVisibleRect.Height;
end;

procedure TframeCardRegist.DoorVisible(aEcuID, aDoorNo: integer;
  aUsed: Boolean);
var
  i,j:integer;
  curRect : TRectangle;
  lastVisibleRect : TRectangle;
begin
  //출입문 사용유무 변경시 해당 출입문을 숨기거나 보여 준다.
  curRect := dmFMXFormUtil.TravelRectangleItem(FlowLayout1,'rectDoorList' + inttostr(aEcuID) + inttostr(aDoorNo));

  if curRect <> nil then curRect.Visible := aUsed;

  lastVisibleRect := nil;
  for i := 0 to 63 do
  begin
    for j := 1 to 8 do
    begin
      curRect := dmFMXFormUtil.TravelRectangleItem(FlowLayout1,'rectDoorList' + inttostr(i) + inttostr(j));
      if(curRect<> nil) and(curRect.Visible) then  lastVisibleRect := curRect;
    end;
  end;
  if lastVisibleRect <> nil then
    FlowLayout1.Height := lastVisibleRect.Position.Y + lastVisibleRect.Height;
end;

procedure TframeCardRegist.FormInitiailize;
begin
  GridCreate;
end;

procedure TframeCardRegist.GridCreate;
var
  i,j : integer;
  rect : TRectangle;
begin
  SetLength(frameDoorListArray,64*8); //ECU List 를 64개 생성한다.
  for i := 0 to 63 do
  begin
    for j := 1 to 8 do
    begin
      rect := TRectangle.Create(self);
      rect.Name := 'rectDoorList' + inttostr(i) + inttostr(j);
      rect.Parent := FlowLayout1;
      rect.Fill.Kind := TBrushKind.None; // 배경 투명
      rect.Stroke.Kind := TBrushKind.None; // 테두리 투명
      rect.Height := 25;
      rect.Width := 80;
      //rect.SetBounds(30, 30, 80, 80);
      rect.Visible := True;
      frameDoorListArray[i]:= TframeDoorList.Create(self);
      frameDoorListArray[i].Name := 'frameDoorList' + inttostr(i) + inttostr(j);
      frameDoorListArray[i].Parent := rect;
      TframeDoorList(frameDoorListArray[i]).ECUID := i;
      TframeDoorList(frameDoorListArray[i]).No := j;
      TframeDoorList(frameDoorListArray[i]).DeviceType := 0; //0.출입문,1.방범구역
      frameDoorListArray[i].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
      frameDoorListArray[i].Visible := True;
    end;
  end;
  DoorVisible(0,1,True);
  SetLength(frameArmAreaListArray,64*9); //ECU List 를 64개 생성한다.
  for i := 0 to 63 do
  begin
    for j := 0 to 8 do
    begin
      rect := TRectangle.Create(self);
      rect.Name := 'rectArmAreaList' + inttostr(i) + inttostr(j);
      rect.Parent := FlowLayout2;
      rect.Fill.Kind := TBrushKind.None; // 배경 투명
      rect.Stroke.Kind := TBrushKind.None; // 테두리 투명
      rect.Height := 25;
      rect.Width := 80;
      //rect.SetBounds(30, 30, 80, 80);
      rect.Visible := True;
      frameArmAreaListArray[i]:= TframeDoorList.Create(self);
      frameArmAreaListArray[i].Name := 'frameArmAreaList' + inttostr(i) + inttostr(j);
      frameArmAreaListArray[i].Parent := rect;
      TframeDoorList(frameArmAreaListArray[i]).ECUID := i;
      TframeDoorList(frameArmAreaListArray[i]).No := j;
      TframeDoorList(frameArmAreaListArray[i]).DeviceType := 1; //0.출입문,1.방범구역
      frameDoorListArray[i].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
      frameDoorListArray[i].Visible := True;
    end;
  end;
  ArmAreaVisible(0,1,True);

end;

end.
