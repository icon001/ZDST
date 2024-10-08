unit uDeviceSetting;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, System.ImageList, FMX.ImgList;

type
  TfmDeviceSetting = class(TForm)
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    blue_plt: TBrushObject;
    rectExplain: TRectangle;
    Rectangle4: TRectangle;
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
    circleAlarm: TCircle;
    circleAlarmText: TText;
    procedure FormCreate(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
  private
    frameLanSettingDetails : TFrame;
    frameLanSettingExplain : TFrame;

    frameExplainArray : array of TFrame;
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  fmDeviceSetting: TfmDeviceSetting;

implementation

uses
  uFrameLanSettingDetails,
  uFrameLanSettingExplain;

{$R *.fmx}

procedure TfmDeviceSetting.btnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfmDeviceSetting.FormCreate(Sender: TObject);
begin
  SetLength(frameExplainArray,2);
  frameExplainArray[0] := TFrameLanSettingDetails.Create(self);
  frameExplainArray[1] := TFrameLanSettingExplain.Create(self);
  frameExplainArray[0].Parent := rectExplain;
  frameExplainArray[0].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정

  frameExplainArray[1].Parent := rectExplain;
  frameExplainArray[1].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정

end;

end.
