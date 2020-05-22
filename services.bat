@echo off
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

echo "Disableing Xbox Live Networking Service"
sc config XboxNetApiSvc start= disabled

echo "Disableing Xbox Live Game Save"
sc config XblGameSave start= disabled

echo "Disableing Xbox Live Auth Manager"
sc config XblAuthManager start= disabled

echo "Disableing Xbox Accessory Management Service"
sc config XboxGipSvc start= disabled

echo "Disableing WMI Performance Adapter"
sc config wmiApSrv start= disabled

echo "Disableing Windows Update"
sc config wuauserv start= disabled

echo "Disableing Windows Search"
sc config WSearch start= disabled

echo "Disableing Windows Media Player Network Sharing Service"
sc config WMPNetworkSvc start= disabled

echo "Disableing Windows Insider Service"
sc config wisvc start= disabled

echo "Disableing Windows Font Cache Service"
sc config FontCache start= disabled

echo "Disableing Windows Defender Antivirus Service"
sc config WinDefend start= disabled

echo "Disableing Windows Defender Antivirus Network Inspection Service"
sc config WdNisSvc start= disabled

echo "Disableing Windows Defender Advanced Threat Protection Service"
sc config Sense start= disabled

echo "Disableing Windows Biometric Service"
sc config WbioSrvc start= disabled

echo "Disableing Web Management"
sc config WebManagement start= disabled

echo "Disableing User Experience Virtualization Service"
sc config UevAgentService start= disabled

echo "Disableing Unified Write Filter Servicing Helper Service"
sc config UwfServicingSvc start= disabled

echo "Disableing Telephony"
sc config TapiSrv start= disabled

echo "Disableing SysMain"
sc config SysMain start= disabled

echo "Disableing Smart Card"
sc config SCardSvr start= disabled

echo "Disableing Smart Card Device Enumeration Service"
sc config ScDeviceEnum start= disabled

echo "Disableing Smart Card Removal Policy"
sc config SCPolicySvc start= disabled

echo "Disableing Shared PC Account Manager"
sc config shpamsvc start= disabled

echo "Disableing Sensor Monitoring Service"
sc config SensrSvc start= disabled

echo "Disableing Routing and Remote Access"
sc config RemoteAccess start= disabled

echo "Disableing Remote Registry"
sc config RemoteRegistry start= disabled

echo "Disableing OpenSSH Authentication Agent"
sc config ssh-agent start= disabled

echo "Disableing Net.Tcp Port Sharing Service"
sc config NetTcpPortSharing start= disabled

echo "Disableing Microsoft Keyboard Filter"
sc config MsKeyboardFilter start= disabled

echo "Disableing Microsoft App-V Client"
sc config AppVClient start= disabled

echo "Disableing Microsoft (R) Diagnostics Hub Standard Collector Service"
sc config diagnosticshub.standardcollector.service start= disabled

echo "Disableing Geolocation Service"
sc config lfsvc start= disabled

echo "Disableing Fax"
sc config Fax start= disabled

echo "Disableing Downloaded Maps Manager"
sc config MapsBroker start= disabled

echo "Disableing Distributed Link Tracking Client"
sc config TrkWks start= disabled

echo "Disableing Device Management Wireless Application Protocol (WAP) Push message Routing Service"
sc config dmwappushservice start= disabled

echo "Disableing Connected User Experiences and Telemetry"
sc config DiagTrack start= disabled

echo "Disableing Bluetooth Audio Gateway Service"
sc config BTAGService start= disabled

echo "Disableing BitLocker Drive Encryption Service"
sc config BDESVC start= disabled

echo "Disableing Auto Time Zone Updater"
sc config tzautoupdate start= disabled

echo "Disableing More Services"
sc config CertPropSvc start= disabled
sc config DPS start= disabled
sc config fdPHost start= disabled
sc config FDResPub start= disabled
sc config FontCache start= disabled
sc config hidserv start= disabled
sc config iphlpsvc start= disabled
sc config PcaSvc start= disabled
sc config SessionEnv start= disabled
sc config Spooler start= disabled
sc config stisvc start= disabled
sc config StorSvc start= disabled
sc config TermService start= disabled
sc config Themes start= disabled
sc config UmRdpService start= disabled
sc config VaultSvc start= disabled
sc config WdiServiceHost start= disabled
sc config WdiSystemHost start= disabled
sc config WSearch start= disabled

echo "Done. Press a key to exit"
pause
exit