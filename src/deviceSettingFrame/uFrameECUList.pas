unit uFrameECUList;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Objects;

type
  TframeECUList = class(TFrame)
    Rectangle2: TRectangle;
    GridPanelLayout2: TGridPanelLayout;
    chk_ECUNum: TCheckBox;
    lbl_ECUType: TLabel;
  private
    FID: Integer;
    procedure SetID(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
  published
    property ID : Integer read FID write SetID;
  end;

implementation

uses
  uCommonFunction;
{$R *.fmx}

{ TframeECUList }

procedure TframeECUList.SetID(const Value: Integer);
begin
  FID := Value;
  chk_ECUNum.Text := FillZeroNumber(Value,2);
end;

end.
