unit uFrameLanSettingDetails;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.Edit, FMX.EditBox, FMX.SpinBox,
  FMX.Layouts, System.Rtti, FMX.Grid.Style, FMX.ScrollBox, FMX.Grid,
  System.ImageList, FMX.ImgList, FMX.ListBox;

type
  TFrameLanSettingDetails = class(TFrame)
    Rectangle1: TRectangle;
    GridPanelLayout1: TGridPanelLayout;
    txtHeader: TText;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    rectConnectSetting: TRectangle;
    gbCallTime: TGroupBox;
    Rectangle18: TRectangle;
    Text17: TText;
    Rectangle2: TRectangle;
    rdLan: TRadioButton;
    rdRs232: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    rectLanConnect: TRectangle;
    GroupBox1: TGroupBox;
    Rectangle4: TRectangle;
    CornerButton1: TCornerButton;
    Rectangle3: TRectangle;
    Rectangle5: TRectangle;
    StringGrid1: TStringGrid;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Text1: TText;
    Edit1: TEdit;
    Text2: TText;
    Edit2: TEdit;
    GridPanelLayout2: TGridPanelLayout;
    Rectangle8: TRectangle;
    CornerButton2: TCornerButton;
    Rectangle9: TRectangle;
    CornerButton3: TCornerButton;
    rectRS232Connect: TRectangle;
    GroupBox2: TGroupBox;
    Rectangle14: TRectangle;
    GridPanelLayout3: TGridPanelLayout;
    Rectangle15: TRectangle;
    CornerButton5: TCornerButton;
    Rectangle16: TRectangle;
    CornerButton6: TCornerButton;
    Rectangle17: TRectangle;
    Text3: TText;
    ComboBox1: TComboBox;
    Rectangle10: TRectangle;
    ImageList1: TImageList;
    Image1: TImage;
    rectIPSetting: TRectangle;
    GroupBox3: TGroupBox;
    Rectangle19: TRectangle;
    GridPanelLayout4: TGridPanelLayout;
    Rectangle20: TRectangle;
    CornerButton4: TCornerButton;
    Rectangle21: TRectangle;
    CornerButton7: TCornerButton;
    GridPanelLayout5: TGridPanelLayout;
    Rectangle12: TRectangle;
    Text4: TText;
    Rectangle13: TRectangle;
    Edit3: TEdit;
    Rectangle22: TRectangle;
    chkZeronType: TCheckBox;
    Rectangle23: TRectangle;
    Text5: TText;
    Rectangle24: TRectangle;
    Edit4: TEdit;
    Rectangle25: TRectangle;
    CornerButton8: TCornerButton;
    Rectangle26: TRectangle;
    Text6: TText;
    Rectangle27: TRectangle;
    Edit5: TEdit;
    Rectangle28: TRectangle;
    chkDHCP: TCheckBox;
    Rectangle29: TRectangle;
    Text7: TText;
    Rectangle30: TRectangle;
    Edit6: TEdit;
    Rectangle31: TRectangle;
    chkDebug: TCheckBox;
    Rectangle32: TRectangle;
    Text8: TText;
    Rectangle33: TRectangle;
    Edit7: TEdit;
    rect: TRectangle;
    rdClientMode: TRadioButton;
    rdServerMode: TRadioButton;
    rdMixedMode: TRadioButton;
    Rectangle34: TRectangle;
    chkServerOnly: TCheckBox;
    Text9: TText;
    Edit8: TEdit;
    Edit9: TEdit;
    Rectangle11: TRectangle;
    Text10: TText;
    Edit10: TEdit;
    Edit11: TEdit;
    Text11: TText;
    gbRs232DeviceType: TGroupBox;
    rectRs232DeviceType: TRectangle;
    GroupBox4: TGroupBox;
    procedure StringGrid1DrawColumnCell(Sender: TObject; const Canvas: TCanvas;
      const Column: TColumn; const Bounds: TRectF; const Row: Integer;
      const Value: TValue; const State: TGridDrawStates);
    procedure ScrollBox1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FormInitiailize;
  end;

implementation

{$R *.fmx}

{ TFrameLanSettingDetails }

procedure TFrameLanSettingDetails.FormInitiailize;
var
  I: Integer;
  Column: TColumn;
begin
  StringGrid1.RowCount := 10;

  for I := 0 to StringGrid1.RowCount - 1 do
  begin
    Column := TStringColumn.Create(Self);
    Column.Header := 'Test' + inttostr(i);
    Column.Width := 100 + i * 10;
    Column.Parent := StringGrid1;
  end;
end;

procedure TFrameLanSettingDetails.ScrollBox1Resize(Sender: TObject);
begin
  FlowLayout1.Width := ScrollBox1.Width - 20;
  FlowLayout1.Height := rectIPSetting.Position.Y + rectIPSetting.Height;
end;

procedure TFrameLanSettingDetails.StringGrid1DrawColumnCell(Sender: TObject;
  const Canvas: TCanvas; const Column: TColumn; const Bounds: TRectF;
  const Row: Integer; const Value: TValue; const State: TGridDrawStates);
begin
  if Column is TStringColumn then
  begin
    Canvas.Fill.Color := TAlphaColorRec.Lightblue; // 배경 색상 변경
    Canvas.FillText(Bounds, Value.ToString, False, 1, [], TTextAlign.Leading, TTextAlign.Center); // 텍스트 색상 변경
  end;
end;

end.
