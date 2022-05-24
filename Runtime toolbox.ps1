<#
	.SYNOPSIS
	Version: 1.4
	Date: 20.05.2022
	Copyright (c) 2022 THEBOSSMAGNUS
	Under MIT license
	.DESCRIPTION
	A simple and open source tool for install runtime.
	.NOTES
	Set execution policy if it fail to run:
		Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
	.NOTES
	Require admin execution
    .NOTES
    For windows 10 & 11. Require Powershell 5(preinstalled in windows 10/11) or 7
	.LINK
	https://github.com/THEBOSSMAGNUS/Runtime_Toolbox
#>

#region intro
Set-ExecutionPolicy Unrestricted
Write-Host -f DarkYellow "
                                            welcome in
______               _    _                    _____              _  _
| ___ \             | |  (_)                  |_   _|            | || |
| |_/ /_   _  _ __  | |_  _  _ __ ___    ___    | |  ___    ___  | || |__    ___ __  __
|    /| | | || '_ \ | __|| || '_ ` _ \  / _ \   | | / _ \  / _ \ | || '_ \  / _ \\ \/ /
| |\ \| |_| || | | || |_ | || | | | | ||  __/   | || (_) || (_) || || |_) || (_) |>  <
\_| \_|\__,_||_| |_| \__||_||_| |_| |_| \___|   \_/ \___/  \___/ |_||_.__/  \___//_/\_\ by THEBOSSMAGNUS

			   This program will install all common used runtime"

#chose if run y/N
$RUN = Read-Host "I do not take any responsibilities for any damage caused by this program. Do you want to run this program? Y=yes N=no"
If ($RUN -ine "Y") {exit}
Clear-Host
#endregion

#region install
#check if Chocolatey is intalled
Write-Host -f green "Loading..."
if (Test-Path C:\ProgramData\chocolatey\choco.exe)
 {}
else{Start-Process PowerShell -WindowStyle Hidden -ArgumentList "Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"}
while($Null -eq (get-process Chocolatey -ErrorAction SilentlyContinue))
{ Start-Sleep -Seconds 1 }
Start-Sleep -Seconds 2
#runtime install
choco install vcredist140 -y | Out-Null
Write-Host "MSVC 2015-2022 installed" -f green
choco install vcredist2013 -y | Out-Null
Write-Host "MSVC 2013 installed" -f green
choco install vcredist2012 -y | Out-Null
Write-Host "MSVC 2012 installed" -f green
choco install vcredist2010 -y | Out-Null
Write-Host "MSVC 2010 installed" -f green
choco install vcredist2008  -y | Out-Null
Write-Host "MSVC 2008 installed" -f green
choco install vcredist2005-y | Out-Null
Write-Host "MSVC 2005 installed" -f green
choco install javaruntime  -y | Out-Null
Write-Host "Java 8 runtime envirorment installed" -f green
Enable-WindowsOptionalFeature -Online -FeatureName "NetFx4-AdvSrvs" -All | Out-Null
Write-Host ".Net framework 4.8 installed" -f green
Enable-WindowsOptionalFeature -Online -FeatureName "NetFx3" -All | Out-Null
Write-Host "Net framework 3.5 installed" -f green
choco install directx -y | Out-Null
Write-Host "Directx 9 installed" -f green
choco install xna  -y | Out-Null
Write-Host "XNA framework installed" -f green
choco install silverlight -y | Out-Null
Write-Host "Silverlight installed" -f green
#endregion