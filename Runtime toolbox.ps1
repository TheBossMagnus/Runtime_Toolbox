<#
	.SYNOPSIS
	Version: Unreleased
	Date: 26.07.2022
	Copyright (c) 2022 THEBOSSMAGNUS
	Under MIT license
	.DESCRIPTION
	A simple and open source tool for install runtime.
	.NOTES
	Require admin execution
    .NOTES
    For windows 10 & 11. Require Powershell 5(preinstalled in windows 10/11) or 7
	.LINK
	https://github.com/THEBOSSMAGNUS/Runtime_Toolbox
#>

#region intro

# Requires -RunAsAdministrator
#Requires -Version 5.1
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
Write-Host -f DarkYellow "
                                            welcome in
______               _    _                    _____              _  _
| ___ \             | |  (_)                  |_   _|            | || |N
| |_/ /_   _  _ __  | |_  _  _ __ ___    ___    | |  ___    ___  | || |__    ___ __  __
|    /| | | || '_ \ | __|| || '_ ` _ \  / _ \   | | / _ \  / _ \ | || '_ \  / _ \\ \/ /
| |\ \| |_| || | | || |_ | || | | | | ||  __/   | || (_) || (_) || || |_) || (_) |>  <
\_| \_|\__,_||_| |_| \__||_||_| |_| |_| \___|   \_/ \___/  \___/ |_||_.__/  \___//_/\_\ by THEBOSSMAGNUS

			   This program will install all common used runtime"

#chose if run y/N
$RUN = Read-Host "Continue? Y=yes N=no"
If ($RUN -ine "Y") {exit}
Clear-Host
#endregion

#region install
#check if Winget is intalled
Write-Host "Checking if Winget is installed"


if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
    'Winget is already Installed, we are aredy to start' # installed
}
else {
	Write-error "You must download and install Winget from https://apps.microsoft.com/store/detail/9NBLGGH4NNS1" 
	Pause
	exit
}

#runtime install
winget install --id=Microsoft.VC++2015-2022Redist-x64 -h;
Write-Host "MSVC 2015-2022 x64 installed" -f green
winget install --id=Microsoft.VC++2015-2022Redist-x86 -h;
Write-Host "MSVC 2015-2022 x86 installed" -f green

winget install --id=Microsoft.VC++2013Redist-x64 -h;
Write-Host "MSVC 2013 x64 installed" -f green
winget install --id=Microsoft.VC++2013Redist-x86 -h;
Write-Host "MSVC 2013 x86 installed" -f green

winget install --id=Microsoft.VC++2012Redist-x64 -h;
Write-Host "MSVC 2012 x64 installed" -f green
winget install --id=Microsoft.VC++2012Redist-x86 -h ;
Write-Host "MSVC 2012 x86 installed" -f green

winget install --id=Microsoft.VC++2010Redist-x64 -h;
Write-Host "MSVC 2010 x64 installed" -f green
winget install --id=Microsoft.VC++2010Redist-x86 -h;
Write-Host "MSVC 2010 x86 installed" -f green

winget install --id=Microsoft.VC++2008Redist-x64 -h;
Write-Host "MSVC 2008 x64 installed" -f green
winget install --id=Microsoft.VC++2008Redist-x86 -h;
Write-Host "MSVC 2008 x86 installed" -f green

winget install --id=Microsoft.VC++2005Redist-x64 -h;
Write-Host "MSVC 2005x64 installed" -f green
winget install --id=Microsoft.VC++2005Redist-x86 -h;
Write-Host "MSVC 2005x86 installed" -f green

winget install --id=Oracle.JavaRuntimeEnvironment -h;
Write-Host "Java 8 runtime envirorment installed" -f green

Enable-WindowsOptionalFeature -Online -FeatureName "NetFx3"
write-host ".Net Framework 3.5 installed" -f green

winget install --id=Microsoft.DotNet.DesktopRuntime.6 -h;
Write-Host ".Net desktop runtime 6 installed" -f green

winget install --id=Microsoft.XNARedist -h;
write-host "XNA framework installed" -f green

winget install --id=Microsoft.PowerShell -h;
Write-Host "PowerShell installed" -f green

winget install  --id=Microsoft.DirectX -h;
write-host "DirectX 9 installed" -f green

Write-Host "


All runtimes are been installed!" -f darkgreen
Pause
exit
#endregion
