unit uComonVariable;

interface
var
  G_bApplicationTerminate : Boolean;
  G_bDeviceSearch : Boolean; //장비 상태를 자동으로 Search 할 것인지
  G_bEventControlerSave : Boolean; //장비 이벤트 로그 저장 유무
  G_bIntercept : Boolean; //끊고 접속할 것인지 여부
  G_bMacView : Boolean;   //Mac Address 설정 가능 여부

  G_nComPort : Integer; //마지막 시리얼 접속 포트
  G_nConnectMode : Integer; //마지막 접속 모드 //0:TCP,1:RS232
  G_nDelayTime : Integer;   //장치 전송 후 대기 시간
  G_nLangType : Integer; //언어 타입(1:KOR,2:ETC)
  G_nLANLoop : integer;     //Lan 설정 재송신 횟수
  G_nLANTime : integer;     //Lan 설정 대기 시간
  G_nLoopCount : Integer;   //재시도 횟수


  G_stExeFolder : String; //실행 폴더 위치
  G_stGroupCode : String = '1234567890'; //Group Code
  G_stLogDirectory : String;
  G_stPw : String; //로그인 비밀번호
  G_stTCPConf : String; //마지막 접속 정보
implementation

end.
