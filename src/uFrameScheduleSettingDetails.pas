﻿unit uFrameScheduleSettingDetails;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Edit, FMX.EditBox, FMX.SpinBox,
  FMX.Layouts, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  System.ImageList, FMX.ImgList, FMX.ListBox, FMX.TabControl,
  System.Math.Vectors, FMX.Controls3D, FMX.Objects3D;

type
  TframeScheduleSettingDetails = class(TFrame)
    Rectangle1: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    txtHeader: TText;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    ImageList1: TImageList;
    rectFirmwareFileSelect: TRectangle;
    gbFirmwareFileSelect: TGroupBox;
    Text1: TText;
    recScheduleBody: TRectangle;
    ComboBox2: TComboBox;
    btnSchduleSearch: TCornerButton;
    btnInitialize: TCornerButton;
    btnScheduleReg: TCornerButton;
    rectDoorSelect: TRectangle;
    ScrollBox2: TScrollBox;
    FlowLayout2: TFlowLayout;
    Rectangle4: TRectangle;
    Text2: TText;
    CheckBox1: TCheckBox;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    rectSchedule: TRectangle;
    rectHoliday: TRectangle;
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
  private
    { Private declarations }
    frameDoorListArray : array of TFrame;
    frameSchedule : TFrame;
    frameHoliday : TFrame;
  public
    { Public declarations }
    procedure FormInitiailize;
    procedure formCreate;
    procedure GridCreate;
    procedure DoorVisible(aEcuID,aDoorNo:integer;aUsed:Boolean);
  end;

implementation

uses
  uCommonFunction,
  uFrameDoorList,
  uFMXFormUtil,
  uFrameHoliday,
  uFrameSchedule;

{$R *.fmx}

{ TFrameLanSettingDetails }



procedure TframeScheduleSettingDetails.DoorVisible(aEcuID,aDoorNo:integer;aUsed:Boolean);
var
  i,j:integer;
  curRect : TRectangle;
  lastVisibleRect : TRectangle;
begin
  //출입문 사용유무 변경시 해당 출입문을 숨기거나 보여 준다.
  curRect := dmFMXFormUtil.TravelRectangleItem(FlowLayout2,'rectDoorList' + inttostr(aEcuID) + inttostr(aDoorNo));

  if curRect <> nil then curRect.Visible := aUsed;

  lastVisibleRect := nil;
  for i := 0 to 63 do
  begin
    for j := 1 to 8 do
    begin
      curRect := dmFMXFormUtil.TravelRectangleItem(FlowLayout2,'rectDoorList' + inttostr(i) + inttostr(j));
      if(curRect<> nil) and(curRect.Visible) then  lastVisibleRect := curRect;
    end;
  end;
  if lastVisibleRect <> nil then
    FlowLayout2.Height := lastVisibleRect.Position.Y + lastVisibleRect.Height;
end;

procedure TframeScheduleSettingDetails.formCreate;
begin
  frameSchedule := TframeSchedule.Create(self);
  frameSchedule.Parent := rectSchedule;
  frameSchedule.Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  frameSchedule.Visible := True;


  frameHoliday := TframeHoliday.Create(self);
  frameHoliday.Parent := rectHoliday;
  frameHoliday.Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TframeHoliday(frameHoliday).FormInitiailize;
  frameHoliday.Visible := True;

end;

procedure TframeScheduleSettingDetails.FormInitiailize;
var
  I: Integer;
  Column: TColumn;
begin
  formCreate;
  GridCreate;

//
end;

procedure TframeScheduleSettingDetails.GridCreate;
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
      rect.Parent := FlowLayout2;
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

end;

procedure TframeScheduleSettingDetails.StringGrid1CellClick(
  const Column: TColumn; const Row: Integer);
var
  IsChecked: Boolean;
begin
  (*
  if Column is TCheckColumn then
  begin
    if Column.Index = 0 then
    begin
      IsChecked := (StringGrid1.Cells[Column.Index, Row].ToBoolean);
      if( IsChecked ) then
        showmessage('체크');
    end;
  end;
  *)


end;

end.
