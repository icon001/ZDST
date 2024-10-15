unit uFrameMCUSettingRight;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.EditBox,
  FMX.SpinBox;

type
  TframeMCUSettingRight = class(TFrame)
    Rectangle1: TRectangle;
    roundHint: TRoundRect;
    txtHint: TText;
    GridPanelLayout1: TGridPanelLayout;
    Text1: TText;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    rectControllerID: TRectangle;
    lbControllerID: TLabel;
    edControllerID: TEdit;
    rectKTTSetting: TRectangle;
    gbKTTConnectSetting: TGroupBox;
    GridPanelLayout2: TGridPanelLayout;
    txtKTTID: TText;
    edKTTID: TEdit;
    txtKTTPhoneNum1: TText;
    edKTTPhoneNum1: TEdit;
    txtKTTPhoneNum2: TText;
    edKTTPhoneNum2: TEdit;
    txtKTTArmRemote: TText;
    spKTTArmRemote: TSpinBox;
    txtKTTDisArmRemote: TText;
    spKTTDisArmRemote: TSpinBox;
    rectKTTMainComm: TRectangle;
    gbKTTMainSetting: TGroupBox;
    GridPanelLayout3: TGridPanelLayout;
    rectTimeSync: TRectangle;
    rectKTTMainType: TRectangle;
    rdDedicate: TRadioButton;
    rdTCPIP: TRadioButton;
    rdWcdma: TRadioButton;
    rectKTTMainMux: TRectangle;
    txtKTTMux: TText;
    edKTTMux: TEdit;
    rectKTTMainTcpIPDetail: TRectangle;
    txtTCPIPDetail: TText;
    GridPanelLayout4: TGridPanelLayout;
    Text7: TText;
    edDDNSQuery: TEdit;
    Text8: TText;
    Edit4: TEdit;
    Text9: TText;
    Edit5: TEdit;
    Text10: TText;
    Edit6: TEdit;
    Text11: TText;
    Edit7: TEdit;
    Text12: TText;
    Edit8: TEdit;
    Text13: TText;
    Edit9: TEdit;
    rectKTTMainFooter: TRectangle;
    btnBasicIP: TCornerButton;
    btnLTEIP: TCornerButton;
    btnTCPIPSearch: TCornerButton;
    btnTCPIPSetting: TCornerButton;
    시간동기화: TGroupBox;
    GridPanelLayout5: TGridPanelLayout;
    Text2: TText;
    Edit1: TEdit;
    CornerButton1: TCornerButton;
    Text3: TText;
    Edit2: TEdit;
    CornerButton2: TCornerButton;
    rectDVRSetting: TRectangle;
    gbDVRSetting: TGroupBox;
    GridPanelLayout6: TGridPanelLayout;
    Rectangle3: TRectangle;
    rdDVRNotUse: TRadioButton;
    rdDVRUse: TRadioButton;
    Rectangle5: TRectangle;
    Text5: TText;
    GridPanelLayout7: TGridPanelLayout;
    txtDVRIP: TText;
    edDVRIP: TEdit;
    txtDVRPort: TText;
    edDVRPort: TEdit;
    rectDVRSettingFooter: TRectangle;
    CornerButton5: TCornerButton;
    CornerButton6: TCornerButton;
    StyleBook1: TStyleBook;
    procedure FlowLayout1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure formCreate;
  end;

implementation

{$R *.fmx}

procedure TframeMCUSettingRight.FlowLayout1Resize(Sender: TObject);
begin
  rectControllerID.Width := FlowLayout1.Width;
  rectKTTSetting.Width := 300;
  rectKTTMainComm.Width := FlowLayout1.Width - rectKTTSetting.Width;
  rectKTTSetting.Height := rectKTTMainComm.Height;

  rectTimeSync.Width := 300;
  rectDVRSetting.Width := FlowLayout1.Width - rectTimeSync.Width;
  rectTimeSync.Height := rectDVRSetting.Height;

  if rectKTTMainComm.Width <= 300 then
  begin
    rectKTTSetting.Height := 190;
    rectKTTSetting.Width := FlowLayout1.Width;
    rectKTTMainComm.Width := FlowLayout1.Width;
  end;
  if (not rectDVRSetting.Visible) or (rectDVRSetting.Width<=300) then
  begin
    rectTimeSync.Height := 96;
    rectTimeSync.Width := FlowLayout1.Width;
    rectDVRSetting.Width := FlowLayout1.Width;
  end;

  if(rectDVRSetting.Visible) then
  begin
    if(rectDVRSetting.Position.Y + rectDVRSetting.Height) > FlowLayout1.Height then
    begin
      FlowLayout1.Height := rectDVRSetting.Position.Y + rectDVRSetting.Height;
    end;
  end else
  begin
    if(rectTimeSync.Position.Y + rectTimeSync.Height) > FlowLayout1.Height then
    begin
      FlowLayout1.Height := rectTimeSync.Position.Y + rectTimeSync.Height;
    end;
  end;
  //rectKTTSetting.Width := FlowLayout1.Width;
end;

procedure TframeMCUSettingRight.formCreate;
begin

end;

end.
