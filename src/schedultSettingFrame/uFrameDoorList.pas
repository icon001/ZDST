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
    FDeviceType: Integer;
    FNo: Integer;
    procedure SetECUID(const Value: Integer);
    procedure SetDeviceType(const Value: Integer);
    procedure SetNo(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
  published
    property ECUID : Integer read FECUID write SetECUID;
    property No : Integer read FNo write SetNo;
    property DeviceType : Integer read FDeviceType write SetDeviceType;
  end;

implementation

uses
  uCommonFunction;
{$R *.fmx}

{ TframeECUList }

procedure TframeDoorList.SetDeviceType(const Value: Integer);
begin
  FDeviceType := Value;
end;

procedure TframeDoorList.SetECUID(const Value: Integer);
begin
  FECUID := Value;
  lbl_DoorNum.Text := FillZeroNumber(ECUID,2) + '-' + FillZeroNumber(No,2);
end;



procedure TframeDoorList.SetNo(const Value: Integer);
begin
  FNo := Value;
  lbl_DoorNum.Text := FillZeroNumber(ECUID,2) + '-' + FillZeroNumber(No,2);
end;

end.
