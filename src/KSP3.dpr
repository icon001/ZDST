program KSP3;

uses
  FMX.Forms,
  Vcl.Forms,
  uMain in 'uMain.pas' {fmMain},
  uDataBase in '..\lib\uDataBase.pas' {dmDatabase: TDataModule},
  uComonVariable in '..\lib\uComonVariable.pas',
  uCommonFunction in '..\lib\uCommonFunction.pas',
  uCommonEvent in '..\lib\uCommonEvent.pas',
  uDBCreate in '..\lib\uDBCreate.pas' {dmDBCreate: TDataModule},
  uDBInsert in '..\lib\uDBInsert.pas' {dmDBInsert: TDataModule},
  uNode in '..\lib\Device\uNode.pas' {dmNode: TDataModule},
  u_c_basic_object in '..\lib\Device\Winsockclasses\u_c_basic_object.pas',
  u_c_byte_buffer in '..\lib\Device\Winsockclasses\u_c_byte_buffer.pas',
  u_c_display in '..\lib\Device\Winsockclasses\u_c_display.pas',
  u_c_log in '..\lib\Device\Winsockclasses\u_c_log.pas',
  u_winsock in '..\lib\Device\Winsocket\u_winsock.pas',
  uDevice in '..\lib\Device\uDevice.pas',
  u_characters in '..\lib\Device\Winsockunits\u_characters.pas',
  u_dir in '..\lib\Device\Winsockunits\u_dir.pas',
  u_display_hex_2 in '..\lib\Device\Winsockunits\u_display_hex_2.pas',
  u_file in '..\lib\Device\Winsockunits\u_file.pas',
  u_strings in '..\lib\Device\Winsockunits\u_strings.pas',
  u_types_constants in '..\lib\Device\Winsockunits\u_types_constants.pas',
  uDeviceSetting in 'uDeviceSetting.pas' {fmDeviceSetting},
  uFrameFirmwareExplain in 'uFrameFirmwareExplain.pas' {frameFirmwareExplain: TFrame},
  uFrameCardSettingDetails in 'uFrameCardSettingDetails.pas' {frameCardSettingDetails: TFrame},
  uFrameLanSettingExplain in 'uFrameLanSettingExplain.pas' {frameLanSettingExplain: TFrame},
  uFrameDeviceSettingExplain in 'uFrameDeviceSettingExplain.pas' {frameDeviceSettingExplain: TFrame},
  uFrameScheduleSettingExplain in 'uFrameScheduleSettingExplain.pas' {frameScheduleSettingExplain: TFrame},
  uFrameCardSettingExplain in 'uFrameCardSettingExplain.pas' {frameCardSettingExplain: TFrame},
  uFrameRemoteControlExplain in 'uFrameRemoteControlExplain.pas' {frameRemoteControlExplain: TFrame},
  uFrameMonitoringExplain in 'uFrameMonitoringExplain.pas' {frameMonitorinExplain: TFrame},
  uFrameDeviceSettingDetails in 'uFrameDeviceSettingDetails.pas' {frameDeviceSettingDetails: TFrame},
  uFrameBodyBase in 'uFrameBodyBase.pas' {frameBodyBase: TFrame},
  uFrameMainToLocalDevice in 'deviceSettingFrame\uFrameMainToLocalDevice.pas' {frameMainToLocalDevice: TFrame},
  uFrameDoorList in 'schedultSettingFrame\uFrameDoorList.pas' {frameDoorList: TFrame},
  uFrameMCUSettingLeft in 'deviceSettingFrame\uFrameMCUSettingLeft.pas' {frameMCUSettingLeft: TFrame},
  uFrameArmAreaState in 'deviceSettingFrame\uFrameArmAreaState.pas' {frameArmAreaState: TFrame},
  uFMXFormUtil in '..\lib\FMX\uFMXFormUtil.pas' {dmFMXFormUtil: TDataModule},
  uFrameMCUSettingRight in 'deviceSettingFrame\uFrameMCUSettingRight.pas' {frameMCUSettingRight: TFrame},
  uFrameSystemInfoSetting in 'deviceSettingFrame\uFrameSystemInfoSetting.pas' {frameSystemInfoSetting: TFrame},
  uFramePortSetting in 'deviceSettingFrame\uFramePortSetting.pas' {framePortSetting: TFrame},
  uFrameCardReaderSetting in 'deviceSettingFrame\uFrameCardReaderSetting.pas' {frameCardReaderSetting: TFrame},
  uFrameCardRederTelNumSetting in 'deviceSettingFrame\uFrameCardRederTelNumSetting.pas' {frameCardRederTelNumSetting: TFrame},
  uFrameExtZonePortSetting in 'deviceSettingFrame\uFrameExtZonePortSetting.pas' {frameExtZonePortSetting: TFrame},
  uFrameDoorSetting in 'deviceSettingFrame\uFrameDoorSetting.pas' {frameDoorSetting: TFrame},
  uFrameBLESetting in 'deviceSettingFrame\uFrameBLESetting.pas' {frameBLESetting: TFrame},
  uFrameTimeCodeSetting in 'deviceSettingFrame\uFrameTimeCodeSetting.pas' {frameTimeCodeSetting: TFrame},
  uFrameEtcExplain in 'uFrameEtcExplain.pas' {frameEtcExplain: TFrame},
  uFrameFirmwareDetails in 'uFrameFirmwareDetails.pas' {frameFirmwareDetails: TFrame},
  uFrameECUList in 'deviceSettingFrame\uFrameECUList.pas' {frameECUList: TFrame},
  uFrameSchedule in 'schedultSettingFrame\uFrameSchedule.pas' {frameSchedule: TFrame},
  uFrameHoliday in 'schedultSettingFrame\uFrameHoliday.pas' {frameHoliday: TFrame},
  uFrameLanSettingDetails in 'uFrameLanSettingDetails.pas' {FrameLanSettingDetails: TFrame},
  uFrameScheduleSettingDetails in 'uFrameScheduleSettingDetails.pas' {frameScheduleSettingDetails: TFrame},
  uFrameCardRegist in 'cardSettingFrame\uFrameCardRegist.pas' {frameCardRegist: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TfmMain, fmMain);
  Application.CreateForm(TdmDBCreate, dmDBCreate);
  Application.CreateForm(TdmDBInsert, dmDBInsert);
  Application.CreateForm(TdmNode, dmNode);
  Application.CreateForm(TfmDeviceSetting, fmDeviceSetting);
  Application.CreateForm(TdmFMXFormUtil, dmFMXFormUtil);
  Application.Run;
end.
