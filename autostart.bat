@echo off
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

echo "Killing unneeded apps and programs..."
echo "Killing System apps and programs (This is safe)"
taskkill /f /im "RuntimeBroker.exe"
taskkill /f /im "SearchUI.exe"
taskkill /f /im "smartscreen.exe"
taskkill /f /im "StartMenuExperienceHost.exe"
taskkill /f /im "WerFault.exe"
taskkill /f /im "WmsSelfHealingSvc.exe"
taskkill /f /im "TCPSVCS.EXE"
taskkill /f /im "mqsvc.exe"
taskkill /f /im "SMSvcHost.exe"
taskkill /f /im "mqtgsvc.exe"
taskkill /f /im "WmsSvc.exe"
taskkill /f /im "IpOverUsbSvc.exe"
taskkill /f /im "sqlwriter.exe"
taskkill /f /im "DiagnosticsHub.StandardCollector.Service.exe"
taskkill /f /im "WmiPrvSE.exe"
taskkill /f /im "WmsSessionAgent.exe"
taskkill /f /im "SgrmBroker.exe"
taskkill /f /im "ctfmon.exe"
taskkill /f /im "CefSharp.BrowserSubprocess.exe"
taskkill /f /im "SecurityHealthService.exe"

echo "Killing User apps and programs (This is safe)"
taskkill /f /im "TeamViewer_Service.exe"
taskkill /f /im "chrome.exe"
taskkill /f /im "firefox.exe"

echo "Killing unneeded services..."
net stop Themes
net stop Pml Driver HPZ12
net stop MSMQTriggers
net stop MSMQ
net stop IncrediBuild_Coordinator
net stop IncrediBuild_Agent
net stop ftpsvc
net stop EventLog
net stop DusmSvc
net stop DPS
net stop debugregsvc
net stop NfsClnt
net stop RasMan
net stop RpcEptMapper
net stop RzKLService
net stop SENS
net stop gupdate
net stop UsoSvc
net stop wscsvc
net stop SystemEventsBroker
net stop SQLWriter
net stop SNMPTRAP
net stop SCPolicySvc
net stop ScDeviceEnum
net stop SCardSvr
net stop gupdatem
net stop WpcMonSvc
net stop hpqcxs08
net stop Fax
net stop MapsBroker
net stop PimIndexMaintenanceSvc_858c8b
net stop CredentialEnrollmentManagerUserSvc_858c8b
net stop VaultSvc
net stop CoreMessagingRegistrar
net stop BITS
net stop tzautoupdate

echo "Script by Tomas Mozdren @ beangreen247.github.io 2020"

echo "Done. Press a key to exit"
pause
exit