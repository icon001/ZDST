unit uNode;

interface

uses
  System.SysUtils, System.Classes,Winapi.Messages,Winapi.WinSock,
  u_c_byte_buffer,uCommonEvent;


const wm_asynch_select= wm_User;
const k_buffer_max= 4096;//k_buffer_max= 4096; 65536;  왜 65536 이었을까?
      k_tcp_ip_chunk= 1500;

type
  TdmNode = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TNode = Class(TComponent)
  private
    //소켓 관련
    socketBuffer : c_byte_buffer;
    bSocketWriting : Boolean; //소켓 Write중이면 True
    stComBuffer : String;
    wsa_data : twsaData;
  private
    NodeDeviceList : TStringList;   ///확장기 리스트
    RcvDataList : TStringList;      ///수신버퍼
    Send1stDataList : TStringList;  ///전송버퍼
    Send2ndDataList : TStringList;
    Send3rdDataList : TStringList;
    Send4thDataList : TStringList;
    procedure MemoryCreate;
  private
    //Handle 생성 부분
    FHandle : THandle;
    procedure HandleNeeded;
    function  HandleAllocated : Boolean;
    function GetHandle: THandle;
  private
    FNodePort: integer;
    FNODEIP: string;
    FDeviceID: string;
    FSocketOpen: Boolean;
    FSocketType: integer;
    FNodeConnected: TConnectedState;
    FNodeConnectTime: TDateTime;
    FDoorArmAreaStateRCV: Boolean;
    FLastReceiveTime: TDateTime;
    FNodeDestory: Boolean;
    FWinSocket: tSocket;
    procedure SetDeviceID(const Value: string);
    procedure SetSocketOpen(const Value: Boolean);
    procedure SetNodeConnected(const Value: TConnectedState);
    procedure SetDoorArmAreaStateRCV(const Value: Boolean);

    { Private declarations }
  protected
    procedure WndProc ( var Message : TMessage ); virtual;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  published
    //컨트롤러 속성
    Property DeviceID:string Read FDeviceID write SetDeviceID;   //노드 아이디 7자리
    property NodeDestory : Boolean read FNodeDestory write FNodeDestory;  //모듈 소멸 상태
    property NODEIP : string Read FNODEIP write FNODEIP;
    property NodePort : integer Read FNodePort Write FNodePort;
    property SocketType : integer read FSocketType write FSocketType;  //소켓 타입 1.PC -> 기기,2.PC <- 기기
  published
    //네트워크 상태
    property NodeConnected : TConnectedState read FNodeConnected write SetNodeConnected; ///접속 상태
    property NodeConnectTime : TDateTime read FNodeConnectTime write FNodeConnectTime;   ///접속 시간
    property LastReceiveTime : TDateTime read FLastReceiveTime write FLastReceiveTime;   ///최종 수신시간
  published
    //소켓 제어
    property Handle : THandle read GetHandle;
    property SocketOpen : Boolean read FSocketOpen write SetSocketOpen;
    property WinSocket : tSocket read FWinSocket write FWinSocket;   //소켓

  published
    property DoorArmAreaStateRCV : Boolean read FDoorArmAreaStateRCV write SetDoorArmAreaStateRCV;  ///통신 연결된 장비의 출입/방범 상태 조회 유무

  End;
var
  dmNode: TdmNode;

implementation

uses
  uCommonFunction,
  uComonVariable,
  uDevice;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TNode }

constructor TNode.Create(AOwner: TComponent);
begin
  inherited;
  MemoryCreate;
end;

function TNode.GetHandle: THandle;
begin
  HandleNeeded;
  Result := FHandle;
end;

function TNode.HandleAllocated: Boolean;
begin
  Result := ( FHandle <> 0 );
end;

procedure TNode.HandleNeeded;
begin
  if not HandleAllocated
   then FHandle := AllocateHWND ( WndProc );
end;

procedure TNode.MemoryCreate;
begin
    NodeDeviceList := TStringList.Create;   ///확장기 리스트
    RcvDataList := TStringList.Create;      ///수신버퍼
    Send1stDataList := TStringList.Create;  ///전송버퍼
    Send2ndDataList := TStringList.Create;
    Send3rdDataList := TStringList.Create;
    Send4thDataList := TStringList.Create;
end;

procedure TNode.SetDeviceID(const Value: string);
begin
  if FDeviceID = Value then Exit;
  FDeviceID := Value;
end;

procedure TNode.SetDoorArmAreaStateRCV(const Value: Boolean);
begin
  FDoorArmAreaStateRCV := Value;
end;

procedure TNode.SetNodeConnected(const Value: TConnectedState);
var
  i : integer;
  nIndex : integer;
begin
  Try
    if FNodeConnected = Value then Exit;
    FNodeConnected := Value;
    if G_bApplicationTerminate then Exit;

    if Value = csConnected then
    begin
      if (socketBuffer = nil) then
        socketBuffer:= c_byte_buffer.create_byte_buffer('reception_buffer', k_buffer_max);  //소켓 연결시에 버퍼 생성하자.
      NodeConnectTime := Now;
      bSocketWriting := False;
      DoorArmAreaStateRCV := False;
    end else
    begin
      if socketBuffer <> nil then
      begin
        socketBuffer.free;   //소켓 끊어지면 소켓 Clear 하자.
        socketBuffer := nil;
      end;
      stComBuffer := ''; //버퍼 Clear;
      if RcvDataList.Count > 0 then
      begin
        RcvDataList.Clear;
      end;
      if Send1stDataList.Count > 0 then
      begin
        Send1stDataList.Clear;
      end;
      if Send2ndDataList.Count > 0 then
      begin
        Send2ndDataList.Clear;
      end;
      if Send3rdDataList.Count > 0 then
      begin
        Send3rdDataList.Clear;
      end;
      if Send4thDataList.Count > 0 then
      begin
        Send4thDataList.Clear;
      end;
      for i := 0 to NodeDeviceList.Count - 1 do
      begin
        if Not NodeDestory then TDevice(NodeDeviceList.Objects[i]).DeviceConnected := csDisConnected;
      end;

      DoorArmAreaStateRCV := True;
    end;
  Except
    LogSave(G_stLogDirectory + '\err' + FormatDateTime('yyyymmdd',now) + '.log','Node.SetNodeConnected');
  End;
end;

procedure TNode.SetSocketOpen(const Value: Boolean);
var
  l_result : Integer;
  l_error: Integer;
  l_version : Word;
  l_socket_address_in: tSockAddrIn;
  l_ip_z: array[0..255] of char;
  rset: TFDSet;
  t: TTimeVal;
  rslt: integer;
begin
  if FSocketOpen = Value then Exit;

  FSocketOpen := Value;
  if Value then
  begin
    if SocketType <> 1 then
    begin
      NodeConnected := csConnected;
      Exit;  //Server -> Device 가 아닌 경우에는 소켓 오픈을 하지 말자...
    end;
    LastReceiveTime := Now;
    l_version:= $0101;
    l_result := wsaStartup(l_version, wsa_data);
    if l_result <> 0 then
    begin
      SocketOpen := False;
      LogSave(G_stLogDirectory + '\ErrSocket' + FormatDateTime('yyyymmdd',now) + '.log',NODEIP + ':wsaStartup');
      Exit;  //소켓생성 실패 시에 Open False
    end;
    WinSocket:= Socket(PF_INET, SOCK_STREAM, IPPROTO_IP);
    if WinSocket = INVALID_SOCKET then
    begin
      SocketOpen := False;
      LogSave(G_stLogDirectory + '\ErrSocket' + FormatDateTime('yyyymmdd',now) + '.log',NODEIP + ':Socket');
      Exit;  //소켓생성 실패 시에 Open False
    end;
    l_result:= wsaAsyncSelect(WinSocket, Handle,
        wm_asynch_select,
        FD_CONNECT+ FD_READ+ FD_WRITE+ FD_CLOSE);

    FillChar(l_socket_address_in, sizeof(l_socket_address_in), 0);
    with l_socket_address_in do
    begin
      sin_family:= pf_Inet;
      // -- the requested service
      sin_port:= hToNs(NodePort);
      // -- the server IP address
      StrPCopy(l_ip_z, NODEIP);
      sin_addr.s_Addr:= inet_addr(PAnsichar(AnsiString(l_ip_z)));
    end; // with m_socket_address_in
    l_result:= Connect(WinSocket, l_socket_address_in,
        sizeof(l_socket_address_in));
    if l_result<> 0 then
    begin
      l_error:= WSAGetLastError;
      if l_error <> wsaEWouldBlock then
      begin
        SocketOpen := False;
        LogSave(G_stLogDirectory + '\ErrSocket' + FormatDateTime('yyyymmdd',now) + '.log',NODEIP + ':' + inttostr(l_error));
        Exit;  //소켓생성 실패 시에 Open False
      end else
      begin
      end;
    end;
  end else
  begin
    Try
      NodeConnected := csDisConnected;
      if WinSocket <> INVALID_SOCKET then
      begin
        shutdown(WinSocket,SD_BOTH);
        l_result:= CloseSocket(WinSocket);
        if l_result = 0 then
        begin
          WinSocket:= INVALID_SOCKET;
  //        l_c_reception_buffer.Free;
  //        l_c_reception_buffer:= Nil;
        end else
        begin
          WinSocket:= INVALID_SOCKET;
          LogSave(G_stLogDirectory + '\Err' + FormatDateTime('yyyymmdd',now) + '.log',NODEIP + ':SocketCloseError');
        end;
        WSACleanup;
      end;
    Except
      Exit;
    End;
  end;
end;

procedure TNode.WndProc(var Message: TMessage);
begin
  if G_bApplicationTerminate then Exit;
  Try
    Dispatch ( Message );
  Except
    Exit;
  End;
end;

end.
