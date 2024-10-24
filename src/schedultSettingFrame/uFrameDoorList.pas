unit uFrameDoorList;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Objects;

type
  TframeDoorList = class(TFrame)
    Rectangle2: TRectangle;
    GridPanelLayout2: TGridPanelLayout;
    chk_DoorNum: TCheckBox;
    lbl_DoorNum: TLabel;
  private
    FECUID: Integer;
    FDoorNo: Integer;
    procedure SetECUID(const Value: Integer);
    procedure SetDoorNo(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
  published
    property ECUID : Integer read FECUID write SetECUID;
    property DoorNo : Integer read FDoorNo write SetDoorNo;
  end;

implementation

uses
  uCommonFunction;
{$R *.fmx}

{ TframeECUList }

procedure TframeDoorList.SetDoorNo(const Value: Integer);
begin
  FDoorNo := Value;
  lbl_DoorNum.Text := FillZeroNumber(ECUID,2) + '-' + FillZeroNumber(DoorNo,2);
end;

procedure TframeDoorList.SetECUID(const Value: Integer);
begin
  FECUID := Value;
  lbl_DoorNum.Text := FillZeroNumber(ECUID,2) + '-' + FillZeroNumber(DoorNo,2);
end;



end.
