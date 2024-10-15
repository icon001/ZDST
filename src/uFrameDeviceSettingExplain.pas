unit uFrameDeviceSettingExplain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects;

type
  TframeDeviceSettingExplain = class(TFrame)
    Rectangle1: TRectangle;
    Text1: TText;
    Text2: TText;
    Text3: TText;
    Text4: TText;
    Circle1: TCircle;
    Circle2: TCircle;
  private
    FMyText: String;
    procedure SetMyText(const Value: String);
    { Private declarations }
  public
    { Public declarations }
    property MyText : String Read FMyText Write SetMyText;
  end;

implementation

{$R *.fmx}

{ TframeLanSettingExplain }



{ TframeLanSettingExplain }

procedure TframeDeviceSettingExplain.SetMyText(const Value: String);
begin

end;

end.
