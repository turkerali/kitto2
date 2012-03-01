; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "KIDE"
#define MyAppVersion "0.1"
#define MyAppExeName "KIDE.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{0E9E451F-1725-4FEA-AF60-BE7C7CB2A719}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=true
Compression=lzma
SolidCompression=true
DefaultDirName={pf}\Ethea\KIDE
OutputBaseFilename=KIDESetup

[Languages]

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked; OnlyBelowVersion: 0,6.1

[Files]
Source: ..\Bin\KIDE.exe; DestDir: {app}; Flags: ignoreversion
Source: Config.yaml; DestDir: {app}; Flags: ignoreversion confirmoverwrite
Source: ..\Bin\ProjectTemplates\*; DestDir: {app}\ProjectTemplates; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\{#MyAppName}; Filename: {app}\{#MyAppExeName}
Name: {commondesktop}\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\{#MyAppName}; Filename: {app}\{#MyAppExeName}; Tasks: quicklaunchicon

[Run]
Filename: {app}\{#MyAppExeName}; Description: {cm:LaunchProgram, {#MyAppName}}; Flags: nowait postinstall skipifsilent