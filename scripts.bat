@echo off
set "params=%*"
cd /d "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || (  echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs" && "%temp%\getadmin.vbs" && exit /B )

echo "Executing scripts inside the scripts folder"
cd scripts
echo "Enabled unrestricted execution"
powershell -command "Set-ExecutionPolicy Unrestricted -Force" 
echo "Executing scripts inside the scripts folder"
powershell -file block-telemetry.ps1
powershell -file Debloat-Windows-Apps.ps1
powershell -file disable-services.ps1
powershell -file disable-windows-defender.ps1
powershell -file experimental_unfuckery.ps1
powershell -file fix-privacy-settings.ps1
powershell -file optimize-user-interface.ps1
powershell -file optimize-windows-update.ps1
powershell -file Protect-Privacy.ps1
powershell -file Remove-Bloatware-RegKeys.ps1
powershell -file remove-default-apps.ps1
powershell -file remove-onedrive.ps1
powershell -file Stop-Edge-PDF.ps1
decrap_win10.bat
echo "Done. Press a key to exit"
pause
exit