unit uDevice;

interface

uses
  System.SysUtils, System.Classes,Windows,Forms,Vcl.ExtCtrls,
  uNode,ADODB,ActiveX,
  uCommonEvent;

type
  TDevice = Class(TComponent)
  private
    FDeviceConnected: TConnectedState;
    procedure SetDeviceConnected(const Value: TConnectedState);
    { Private declarations }
  public
    { Public declarations }
  published
    property DEVICECONNECTED : TConnectedState read FDeviceConnected write SetDeviceConnected;

  End;
implementation

{ TDevice }

procedure TDevice.SetDeviceConnected(const Value: TConnectedState);
begin
  FDeviceConnected := Value;
end;

end.
