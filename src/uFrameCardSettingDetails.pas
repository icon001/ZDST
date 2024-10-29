﻿unit uFrameCardSettingDetails;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Edit, FMX.EditBox, FMX.SpinBox,
  FMX.Layouts, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  System.ImageList, FMX.ImgList, FMX.ListBox, FMX.TabControl,
  System.Math.Vectors, FMX.Controls3D, FMX.Objects3D;

type
  TframeCardSettingDetails = class(TFrame)
    Rectangle1: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    txtHeader: TText;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    ImageList1: TImageList;
    recScheduleBody: TRectangle;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    rectSchedule: TRectangle;
    rectHoliday: TRectangle;
    procedure StringGrid1CellClick(const Column: TColumn; const Row: Integer);
  private
    { Private declarations }
    frameDoorListArray : array of TFrame;
    frameCardRegist : TFrame;
  public
    { Public declarations }
    procedure FormInitiailize;
    procedure formCreate;
    procedure GridCreate;
  end;

implementation

uses
  uCommonFunction,
  uFrameDoorList,
  uFMXFormUtil,
  uFrameCardRegist
  ;

{$R *.fmx}

{ TFrameLanSettingDetails }



procedure TframeCardSettingDetails.formCreate;
begin
  frameCardRegist := TframeCardRegist.Create(self);
  frameCardRegist.Parent := rectSchedule;
  frameCardRegist.Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
  TframeCardRegist(frameCardRegist).FormInitiailize;
  frameCardRegist.Visible := True;

end;

procedure TframeCardSettingDetails.FormInitiailize;
var
  I: Integer;
  Column: TColumn;
begin
  formCreate;
  GridCreate;

//
end;

procedure TframeCardSettingDetails.GridCreate;
begin


end;

procedure TframeCardSettingDetails.StringGrid1CellClick(
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
