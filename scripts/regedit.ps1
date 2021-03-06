Import-Module -DisableNameChecking $PSScriptRoot\..\lib\take-own.psm1
Import-Module -DisableNameChecking $PSScriptRoot\..\lib\force-mkdir.psm1

Write-Output "Applying registry tweaks"
Write-Output "Elevating privileges for this process"
do {} until (Elevate-Privileges SeTakeOwnershipPrivilege)

force-mkdir "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching"
Set-Itemproperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" "SearchOrderConfig" 0
force-mkdir "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power"
Set-Itemproperty "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power" "HiberbootEnabled" 0
force-mkdir "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile"
Set-Itemproperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" "NetworkThrottlingIndex" 4294967295
Set-Itemproperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" "SystemResponsiveness" 0
force-mkdir "HKCU:\System\GameConfigStore"
Set-Itemproperty "HKCU:\System\GameConfigStore" "GameDVR_DXGIHonorFSEWindowsCompatible" 0
Set-Itemproperty "HKCU:\System\GameConfigStore" "GameDVR_EFSEFeatureFlags" 0
Set-Itemproperty "HKCU:\System\GameConfigStore" "GameDVR_Enabled" 0
Set-Itemproperty "HKCU:\System\GameConfigStore" "GameDVR_FSEBehaviorMode" 0
Set-Itemproperty "HKCU:\System\GameConfigStore" "GameDVR_HonorUserFSEBehaviorMode" 0
force-mkdir "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games"
Set-Itemproperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" "GPU Priority" 8
Set-Itemproperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" "Priority" 6
Set-Itemproperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" "Scheduling Category" "High"
Set-Itemproperty "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" "SFIO Priority" "High"
force-mkdir "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR"
Set-Itemproperty "HKLM:\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" "value" 0
force-mkdir "HKLM:\SYSTEM\CurrentControlSet\Control\Power"
Set-Itemproperty "HKLM:\SYSTEM\CurrentControlSet\Control\Power" "HibernateEnabled" 0
force-mkdir "HKLM:\SYSTEM\CurrentControlSet\Control"
force-mkdir "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\943c8cb6-6f93-4227-ad87-e9a3feec08d1"
Set-Itemproperty "HKLM:\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\943c8cb6-6f93-4227-ad87-e9a3feec08d1" "Attributes" 2
