unit uFrameSystemInfoSetting;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.EditBox,
  FMX.SpinBox;

type
  TframeSystemInfoSetting = class(TFrame)
    Rectangle1: TRectangle;
    roundHint: TRoundRect;
    txtHint: TText;
    GridPanelLayout1: TGridPanelLayout;
    Text1: TText;
    ScrollBox1: TScrollBox;
    FlowLayout1: TFlowLayout;
    rectKTTSetting: TRectangle;
    gbKTTConnectSetting: TGroupBox;
    GridPanelLayout2: TGridPanelLayout;
    txtKTTID: TText;
    StyleBook1: TStyleBook;
    edit: TEdit;
    procedure FlowLayout1Resize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure formCreate;
  end;

implementation

{$R *.fmx}

procedure TframeSystemInfoSetting.FlowLayout1Resize(Sender: TObject);
begin
  //
end;

procedure TframeSystemInfoSetting.formCreate;
begin
  StyleBook1.LoadFromFile('E:\2024\Project\XE10.2\Style\editYellow.style');
  edit.StyleLookup :='Edit1Style1';
end;

end.
