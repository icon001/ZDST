unit uFrameMainToLocalDevice;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.ListBox;

type
  TframeMainToLocalDevice = class(TFrame)
    Rectangle1: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    Text1: TText;
    roundHint: TRoundRect;
    txtHint: TText;
    rectType: TRectangle;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    FlowLayout2: TFlowLayout;
    chk00: TCheckBox;
    chk10: TCheckBox;
    chk20: TCheckBox;
    chk30: TCheckBox;
    chk40: TCheckBox;
    chk50: TCheckBox;
    chk60: TCheckBox;
    chkAll: TCheckBox;
    txtType: TText;
    cmbType: TComboBox;
    rectFooter: TRectangle;
    txtDetail: TText;
    txtDetail1: TText;
    txtDetail2: TText;
    rectEcuList: TRectangle;
    procedure ScrollBox1Resize(Sender: TObject);
    procedure Text1MouseEnter(Sender: TObject);
    procedure Text1MouseLeave(Sender: TObject);
    procedure rectEcuListResize(Sender: TObject);
  private
    { Private declarations }
    checkBoxEcuListArray : array of TCheckBox;
  public
    { Public declarations }
    procedure formCreate;
  end;

implementation
uses
  uCommonFunction;

{$R *.fmx}

procedure TframeMainToLocalDevice.formCreate;
var
  i : integer;
  chkbox : TCheckBox;
begin
  SetLength(checkBoxEcuListArray,64); //ECU List 를 64개 생성한다.
  for i := 0 to 63 do
  begin
    chkbox := TCheckBox.Create(self);
    chkbox.Parent := FlowLayout1;
    chkbox.Height := 30;
    chkbox.Width := 50;
    chkbox.Text := FillZeroNumber(i,2);
    chkbox.Name := 'checkEcuList' + inttostr(i);
    chkbox.TextSettings.FontColor := TAlphaColors.Black; // 글씨 색상 검정색
    chkbox.StyledSettings := [];
    chkbox.StyleLookup := 'rectangleborderstyle';
    chkbox.Visible := True;
    checkBoxEcuListArray[i]:= chkbox;
  end;

end;

procedure TframeMainToLocalDevice.rectEcuListResize(Sender: TObject);
begin
  if Length(checkBoxEcuListArray)>=64 then
  begin
    if (checkBoxEcuListArray[63] <> nil) and (checkBoxEcuListArray[63].Position.Y >= 150 ) then
    begin
      rectEcuList.Height := checkBoxEcuListArray[63].Position.Y + checkBoxEcuListArray[63].Height;
    end else
    begin
      rectEcuList.Height:=150;
      ScrollBox1.RealignContent;
    end;

    //ScrollBox1.RealignContent; // ScrollBox 내부를 즉시 재정렬

  end;

end;

procedure TframeMainToLocalDevice.ScrollBox1Resize(Sender: TObject);
begin
  FlowLayout1.Width := 200; //왼쪽 10 오른쪽 10 만큼 띄워서
  FlowLayout1.Height := 30 * 64; //panel 높이 * 64
end;

procedure TframeMainToLocalDevice.Text1MouseEnter(Sender: TObject);
begin
  // 마우스 포인트가 Text1에 들어오면 힌트 라벨을 표시
  txtHint.Text := '체크 박스를 체크하면 해당 ECU는 사용으로 셋팅됩니다.';
  roundHint.Position.X := Text1.Position.X;
  roundHint.Position.Y := Text1.Position.Y + Text1.Height - 30;
  roundHint.Visible := True;

end;

procedure TframeMainToLocalDevice.Text1MouseLeave(Sender: TObject);
begin
  // 마우스 포인트가 Text1에서 나가면 힌트 라벨을 숨김
  roundHint.Visible := False;
end;

end.
