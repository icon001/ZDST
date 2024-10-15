unit uFrameMCUSettingLeft;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation;

type
  TframeMCUSettingLeft = class(TFrame)
    Rectangle1: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    Text1: TText;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    roundHint: TRoundRect;
    txtHint: TText;
    FlowLayout2: TFlowLayout;
    chk00: TCheckBox;
    chk10: TCheckBox;
    chk20: TCheckBox;
    chk30: TCheckBox;
    chk40: TCheckBox;
    chk50: TCheckBox;
    chk60: TCheckBox;
    chkAll: TCheckBox;
    procedure ScrollBox1Resize(Sender: TObject);
    procedure Text1MouseEnter(Sender: TObject);
    procedure Text1MouseLeave(Sender: TObject);
  private
    { Private declarations }
    frameEcuListArray : array of TFrame;
  public
    { Public declarations }
    procedure formCreate;
  end;

implementation

uses
  uframeECUList;
{$R *.fmx}

procedure TframeMCUSettingLeft.formCreate;
var
  i : integer;
  rect : TRectangle;
begin
  SetLength(frameEcuListArray,64); //ECU List 를 64개 생성한다.
  for i := 0 to 63 do
  begin
    rect := TRectangle.Create(self);
    rect.Parent := FlowLayout1;
    rect.Height := 30;
    rect.Width := 200;
    rect.Visible := True;
    frameEcuListArray[i]:= TframeECUList.Create(self);
    frameEcuListArray[i].Name := 'frameECUList' + inttostr(i);
    frameEcuListArray[i].Parent := rect;
    TframeECUList(frameEcuListArray[i]).ID := i;
    frameEcuListArray[i].Align := TAlignLayout.Client; // 프레임을 Rectangle에 맞게 조정
    frameEcuListArray[i].Visible := True;
  end;

end;

procedure TframeMCUSettingLeft.ScrollBox1Resize(Sender: TObject);
begin
  FlowLayout1.Width := 200; //왼쪽 10 오른쪽 10 만큼 띄워서
  FlowLayout1.Height := 30 * 64; //panel 높이 * 64
end;

procedure TframeMCUSettingLeft.Text1MouseEnter(Sender: TObject);
begin
  // 마우스 포인트가 Text1에 들어오면 힌트 라벨을 표시
  txtHint.Text := '체크 박스를 체크하면 해당 ECU는 사용으로 셋팅됩니다.';
  roundHint.Position.X := Text1.Position.X;
  roundHint.Position.Y := Text1.Position.Y + Text1.Height - 30;
  roundHint.Visible := True;

end;

procedure TframeMCUSettingLeft.Text1MouseLeave(Sender: TObject);
begin
  // 마우스 포인트가 Text1에서 나가면 힌트 라벨을 숨김
  roundHint.Visible := False;
end;

end.
