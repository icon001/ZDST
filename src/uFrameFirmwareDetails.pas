unit uFrameFirmwareDetails;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Edit, FMX.EditBox, FMX.SpinBox,
  FMX.Layouts, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  System.ImageList, FMX.ImgList, FMX.ListBox, FMX.TabControl;

type
  TframeFirmwareDetails = class(TFrame)
    Rectangle1: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    txtHeader: TText;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    ImageList1: TImageList;
    rectFirmwareFileSelect: TRectangle;
    gbFirmwareFileSelect: TGroupBox;
    Text1: TText;
    Edit1: TEdit;
    CornerButton1: TCornerButton;
    Rectangle2: TRectangle;
    Text2: TText;
    Text3: TText;
    Rectangle3: TRectangle;
    TabControl1: TTabControl;
    tabFTPFirmware: TTabItem;
    tabSeiralFirmware: TTabItem;
    GroupBox1: TGroupBox;
    ScrollBox2: TScrollBox;
    rectEcuList: TRectangle;
    FlowLayout2: TFlowLayout;
    FlowLayout3: TFlowLayout;
    chk00: TCheckBox;
    chk10: TCheckBox;
    chk20: TCheckBox;
    chk30: TCheckBox;
    chk40: TCheckBox;
    chk50: TCheckBox;
    chk60: TCheckBox;
    chkAll: TCheckBox;
    rectFTPPcSetting: TRectangle;
    Text4: TText;
    cmbPCIP: TComboBox;
    Text5: TText;
    Edit2: TEdit;
    rctFTPProgress: TRectangle;
    ProgressBar1: TProgressBar;
    rctFTPState: TRectangle;
    Text6: TText;
    Text7: TText;
    Text8: TText;
    CornerButton2: TCornerButton;
    CornerButton3: TCornerButton;
    ListBox1: TListBox;
    GroupBox2: TGroupBox;
    Text9: TText;
    ComboBox1: TComboBox;
    Rectangle4: TRectangle;
    CornerButton4: TCornerButton;
    CornerButton5: TCornerButton;
    Rectangle5: TRectangle;
    ProgressBar2: TProgressBar;
    Rectangle6: TRectangle;
    Text10: TText;
    Text11: TText;
    Text12: TText;
  private
    { Private declarations }
    checkBoxEcuListArray : array of TCheckBox;
  public
    { Public declarations }
    procedure FormInitiailize;
    procedure formCreate;
    procedure GridCreate;
  end;

implementation

uses
  uCommonFunction;

{$R *.fmx}

{ TFrameLanSettingDetails }

procedure TframeFirmwareDetails.formCreate;
var
  i : integer;
  chkbox : TCheckBox;
begin
  SetLength(checkBoxEcuListArray,64); //ECU List 를 64개 생성한다.
  for i := 0 to 63 do
  begin
    chkbox := TCheckBox.Create(self);
    chkbox.Parent := FlowLayout2;
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

procedure TframeFirmwareDetails.FormInitiailize;
var
  I: Integer;
  Column: TColumn;
begin
  formCreate;
  GridCreate;
//
end;

procedure TframeFirmwareDetails.GridCreate;

begin


end;

end.
