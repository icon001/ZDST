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
  uFrameLanSettingExplain in 'uFrameLanSettingExplain.pas' {frameLanSettingExplain: TFrame},
  uFrameLanSettingDetails in 'uFrameLanSettingDetails.pas' {FrameLanSettingDetails: TFrame};

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
  Application.Run;
end.
