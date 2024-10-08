unit uFrameLanSettingExplain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TframeLanSettingExplain = class(TFrame)
    Label1: TLabel;
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

procedure TframeLanSettingExplain.SetMyText(const Value: String);
begin
  FMyText := Value;
  Label1.Text := Value;
end;

end.
