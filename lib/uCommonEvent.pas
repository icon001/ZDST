unit uCommonEvent;

interface
type
  TAdoConnectedEvent = procedure(Sender: TObject;  Connected:Boolean) of object;
  TConnectedState = (csNothing,csDisConnected,csConnected);

implementation

end.
