
#intro 
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

#check if Chocolatey is intalled

Write-Host -f green "Loading..."

if (Test-Path C:\ProgramData\chocolatey\choco.exe)
 {}  
else{Start-Process PowerShell -WindowStyle Hidden -ArgumentList "Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))"
	
}
Start-Sleep -Seconds 30
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
choco install xna  -y | Out-Null
Write-Host "XNA framework installed" -f green
choco install netfx-4.8  -y | Out-Null
Write-Host ".net framework 4.8 installed" -f green

#done/reboot 
$REBOOT = Read-Host "Everything is installed, a reboot is suggested. Do you want to reboot now? Y=yes N=no"
If ($REBOOT -ieq "Y") {restart-computer}
else {exit}




