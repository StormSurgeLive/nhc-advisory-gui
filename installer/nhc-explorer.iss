; ------------------------------------------------------------
; NHC Explorer Installer (per-user, upgrade-safe)
; Layout assumed:
;
; project-root/
;   installer/
;     nhc-explorer.iss
;   dist/
;     nhc-explorer.exe
; ------------------------------------------------------------

#define MyAppName "NHC Explorer"
#define MyAppExe "nhc-explorer.exe"
#define MyAppVersion "1.0.0"
#define MyAppPublisher "Your Name or Organization"

[Setup]

; Generate once via PowerShell and keep forever:
;   [guid]::NewGuid().ToString()
AppId={{A4F83C2D-9C44-4F6D-A8E2-9F7C3B6D21F0}}

AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}

DefaultDirName={localappdata}\Programs\nhc-explorer
DefaultGroupName={#MyAppName}

PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=commandline

UninstallDisplayIcon={app}\{#MyAppExe}

Compression=lzma2
SolidCompression=yes
WizardStyle=modern

; Output installer into project-root/release/
OutputDir=..\release
OutputBaseFilename=nhc-explorer-setup

[Files]

; IMPORTANT: path relative to installer/ folder
Source: "..\dist\{#MyAppExe}"; DestDir: "{app}"; Flags: ignoreversion

[Tasks]

Name: "desktopicon"; Description: "Create a &desktop icon"; GroupDescription: "Additional icons:"

[Icons]

; Start Menu folder
Name: "{userprograms}\{#MyAppName}\{#MyAppName}"; Filename: "{app}\{#MyAppExe}"

; Uninstall shortcut
Name: "{userprograms}\{#MyAppName}\Uninstall {#MyAppName}"; Filename: "{uninstallexe}"

; Optional desktop shortcut
Name: "{userdesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExe}"; Tasks: desktopicon

[Run]

Filename: "{app}\{#MyAppExe}"; Description: "Launch {#MyAppName}"; Flags: nowait postinstall skipifsilent

[Code]

[Code]

function InitializeSetup(): Boolean;
var
  ResultCode: Integer;
begin
  // Close running version during upgrade
  Exec(
    ExpandConstant('{cmd}'),
    '/C taskkill /IM "{#MyAppExe}" /T /F >NUL 2>NUL',
    '',
    SW_HIDE,
    ewWaitUntilTerminated,
    ResultCode
  );

  Result := True;
end;
