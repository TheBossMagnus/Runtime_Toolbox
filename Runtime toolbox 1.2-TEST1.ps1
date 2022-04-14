
#intro 
Write-Host -f DarkYellow "
                                         welcome in 
______               _    _                    _____              _  _                 
| ___ \             | |  (_)                  |_   _|            | || |                
| |_/ /_   _  _ __  | |_  _  _ __ ___    ___    | |  ___    ___  | || |__    ___ __  __
|    /| | | || '_ \ | __|| || '_ ` _ \  / _ \   | | / _ \  / _ \ | || '_ \  / _ \\ \/ /
| |\ \| |_| || | | || |_ | || | | | | ||  __/   | || (_) || (_) || || |_) || (_) |>  < 
\_| \_|\__,_||_| |_| \__||_||_| |_| |_| \___|   \_/ \___/  \___/ |_||_.__/  \___//_/\_\ by THEBOSSMAGNUS

				This program will install all common used runtime 
"
Pause 
Clear-Host

#chose if run y/N
$RUN = Read-Host "I do not take any responsibilities for any damage caused by this program. Do you want to run this program? Y=yes N=no"
If ($RUN -ine "Y") {exit} 
Clear-Host

#check if Chocolatrey is intalled

Write-Host "Checking if Chocolatrey is installed"

if (Test-Path C:\ProgramData\chocolatey\choco.exe){
    'Chocolatrey is already Installed, we are aredy to start' # installed
}  
else{
	Write-Host "Chocolatrey isn't installed! No problem, automaticly installing it..." # not installed
	Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
	Write-Host Chocolatrey Installed, ready to start!    
}
pause
Clear-Host

#runtime install 
choco install vcredist140 -y 
Write-Host "MSVC 2015-2022 installed" -f green
choco install vcredist2013 -y
Write-Host "MSVC 2013 installed" -f green
choco install vcredist2012 -y 
Write-Host "MSVC 2012 installed" -f green
choco install vcredist2010 -y 
Write-Host "MSVC 2010 installed" -f green
choco install vcredist2008  -y
Write-Host "MSVC 2008 installed" -f green
choco install vcredist2005-y 
Write-Host "MSVC 2005 installed" -f green 
choco install javaruntime  -y
Write-Host "Java 8 runtime envirorment installed" -f green
choco install xna  -y
Write-Host "XNA framework installed" -f green
choco install netfx-4.8  -y
Write-Host ".net framework 4.8 installed" -f green

#done/reboot 
$REBOOT = Read-Host "Everything is installed, a reboot is suggested. Do you want to reboot now? Y=yes N=no"
If ($REBOOT -ieq "Y") {restart-computer}
else {exit}




