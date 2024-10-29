unit uFrameHoliday;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects, FMX.Controls.Presentation, System.Rtti,
  FMX.Grid.Style, FMX.ScrollBox, FMX.Grid, FMX.TMSBaseControl, FMX.TMSGridCell,
  FMX.TMSGridOptions, FMX.TMSGridData, FMX.TMSCustomGrid, FMX.TMSGrid;

type
  TframeHoliday = class(TFrame)
    Rectangle1: TRectangle;
    ScrollBox1: TScrollBox;
    Rectangle2: TRectangle;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Text1: TText;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Text2: TText;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Text3: TText;
    TMSFMXGrid1: TTMSFMXGrid;
  private
    { Private declarations }
  public
    { Public declarations }
    procedure formCreate;
    procedure FormInitiailize;
  end;

implementation

{$R *.fmx}

{ TframeHoliday }



procedure TframeHoliday.formCreate;

begin

end;

procedure TframeHoliday.FormInitiailize;
begin
  formCreate;
end;

end.
