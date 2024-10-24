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
  SetLength(checkBoxEcuListArray,64); //ECU List �� 64�� �����Ѵ�.
  for i := 0 to 63 do
  begin
    chkbox := TCheckBox.Create(self);
    chkbox.Parent := FlowLayout1;
    chkbox.Height := 30;
    chkbox.Width := 50;
    chkbox.Text := FillZeroNumber(i,2);
    chkbox.Name := 'checkEcuList' + inttostr(i);
    chkbox.TextSettings.FontColor := TAlphaColors.Black; // �۾� ���� ������
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

    //ScrollBox1.RealignContent; // ScrollBox ���θ� ��� ������

  end;

end;

procedure TframeMainToLocalDevice.ScrollBox1Resize(Sender: TObject);
begin
  FlowLayout1.Width := 200; //���� 10 ������ 10 ��ŭ �����
  FlowLayout1.Height := 30 * 64; //panel ���� * 64
end;

procedure TframeMainToLocalDevice.Text1MouseEnter(Sender: TObject);
begin
  // ���콺 ����Ʈ�� Text1�� ������ ��Ʈ ���� ǥ��
  txtHint.Text := 'üũ �ڽ��� üũ�ϸ� �ش� ECU�� ������� ���õ˴ϴ�.';
  roundHint.Position.X := Text1.Position.X;
  roundHint.Position.Y := Text1.Position.Y + Text1.Height - 30;
  roundHint.Visible := True;

end;

procedure TframeMainToLocalDevice.Text1MouseLeave(Sender: TObject);
begin
  // ���콺 ����Ʈ�� Text1���� ������ ��Ʈ ���� ����
  roundHint.Visible := False;
end;

end.
