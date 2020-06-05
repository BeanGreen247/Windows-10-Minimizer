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
net stop Themes /y
net stop Pml Driver HPZ12 /y
net stop MSMQTriggers /y
net stop MSMQ /y
net stop IncrediBuild_Coordinator /y
net stop IncrediBuild_Agent /y
net stop ftpsvc /y
net stop EventLog /y
net stop DusmSvc /y
net stop DPS /y
net stop debugregsvc /y
net stop NfsClnt /y
net stop RasMan /y
net stop RpcEptMapper /y
net stop RzKLService /y
net stop SENS /y
net stop gupdate /y
net stop UsoSvc /y
net stop wscsvc /y
net stop SystemEventsBroker /y
net stop SQLWriter /y
net stop SNMPTRAP /y
net stop SCPolicySvc /y
net stop ScDeviceEnum /y
net stop SCardSvr /y
net stop gupdatem /y
net stop WpcMonSvc /y
net stop hpqcxs08 /y
net stop Fax /y
net stop MapsBroker /y
net stop PimIndexMaintenanceSvc_858c8b /y
net stop CredentialEnrollmentManagerUserSvc_858c8b /y
net stop VaultSvc /y
net stop CoreMessagingRegistrar /y
net stop BITS /y
net stop tzautoupdate /y

echo "Script by Tomas Mozdren @ beangreen247.github.io 2020"

echo "Done. Press a key to exit"
pause
exit