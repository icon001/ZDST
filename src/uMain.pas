unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, AdvEdit,
  AdvSmoothLabel,IniFiles, Vcl.ExtCtrls;

type
  TfmMain = class(TForm)
    Panel1: TPanel;
    AdvSmoothLabel2: TAdvSmoothLabel;
    ed_userpw: TAdvEdit;
    btn_Login: TSpeedButton;
    btn_Cancel: TSpeedButton;
    Image1: TImage;
    Label1: TLabel;
    procedure btn_CancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_LoginClick(Sender: TObject);
    procedure ed_userpwKeyPress(Sender: TObject; var Key: Char);
  private
    FLogined: Boolean;
    { Private declarations }
    //initialzie
    procedure iniConfigSetting;
    procedure SetLogined(const Value: Boolean);
  public
    { Public declarations }
  published
    property Logined : Boolean read FLogined write SetLogined;
  end;

var
  fmMain: TfmMain;


implementation

uses
  uComonVariable,
  uDataBase,
  uDeviceSetting;

{$R *.dfm}

procedure TfmMain.btn_LoginClick(Sender: TObject);
begin
  if ed_userpw.Text = G_stPw then
  begin
    Logined := True;
  end else
  begin
    showmessage('비밀번호가 틀렸습니다.');
  end;
end;

procedure TfmMain.ed_userpwKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
    begin
      btn_LoginClick(btn_Login);
    end;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  iniConfigSetting;

  TdmDatabase.GetObject.DatabaseCreate;
end;

procedure TfmMain.iniConfigSetting;
var
  ini_fun : TiniFile;
begin

  Try
    ini_fun := TiniFile.Create(ExtractFileDir(Application.ExeName) + '\Config.INI');
    G_stPw := ini_fun.ReadString('Config','PW','1234');

    G_nDelayTime := ini_fun.ReadInteger('Config','DelayTime',2000);

    G_stTCPConf := ini_fun.ReadString('Config','TCP','127.0.0.1,3000,0');
    G_nComPort := ini_fun.ReadInteger('Config','ComPort',0);
    G_nConnectMode := ini_fun.ReadInteger('Config','ConnectMode',0);
    G_nLoopCount := ini_fun.ReadInteger('Config','LoopCount',3)  ; //에러 대기 횟수
    G_nLANTime := ini_fun.ReadInteger('Config','LANTime',4000);
    G_nLANLoop := ini_fun.ReadInteger('Config','LANLoop',2);
    G_nLangType := ini_fun.ReadInteger('Config','LangType',1);

    if ini_fun.ReadInteger('Config','Intercept',0) = 1 then G_bIntercept := True
    else G_bIntercept := False;

    G_bDeviceSearch := True;
    if UpperCase(ini_fun.ReadString('Config','MACVIEW','FALSE')) = 'FALSE' then  G_bMacView := False
    else G_bMacView := True;

    if UpperCase(ini_fun.ReadString('Config','EventControlerSave','FALSE')) = 'FALSE' then  G_bEventControlerSave := False
    else G_bEventControlerSave := True;
    G_stExeFolder := ExtractFileDir(Application.ExeName);
    G_stLogDirectory := ExtractFileDir(Application.ExeName) + '\log';
  Finally
    ini_fun.free;
  End;
end;

procedure TfmMain.SetLogined(const Value: Boolean);
begin
  if FLogined = Value then Exit;

  FLogined := Value;
  Visible := Not Value;

  if(Value) then
  begin
    fmDeviceSetting.ShowModal;
    Close;
  end;
end;

procedure TfmMain.btn_CancelClick(Sender: TObject);
begin
  Close;
end;

end.
