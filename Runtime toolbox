
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
#chose if run y/N
$RUN = Read-Host "I do not take any responsibilities for any damage caused by this program. Do you want to run this program? Y=yes N=no"
If ($RUN -ine "Y") {exit} 
Clear-Host

#check if winget is intalled

Write-Host "Checking if winget is installed"


if (Test-Path ~\AppData\Local\Microsoft\WindowsApps\winget.exe){
    'Winget is already Installed, we are aredy to start' # installed
}  
else{
	Write-Host "Winget isn't installed! No problem, automaticly installing it..." # not installed
	Start-Process "ms-appinstaller:?source=https://aka.ms/getwinget"
	$winget = (Get-Process AppInstaller).Id
	Wait-Process -Id $winget
	Write-Host Winget Installed, ready to start!
    
}


Clear-Host
#runtime install 
winget install --id=Microsoft.VC++2015-2022Redist-x64 -e -h --force --accept-source-agreements ; 
Write-Host "MSVC 2015-2022x64 installed" -f green
winget install --id=Microsoft.VC++2015-2022Redist-x86 -e -h --force ; 
Write-Host "MSVC 2015-2022x86 installed" -f green

winget install --id=Microsoft.VC++2013Redist-x64 -e -h --force ;
Write-Host "MSVC 2013x64 installed" -f green
winget install --id=Microsoft.VC++2013Redist-x86 -e -h --force ;
Write-Host "MSVC 2013x86" -f green

winget install --id=Microsoft.VC++2012Redist-x64 -e -h --force ;
Write-Host "MSVC 2012x64 installed" -f green 
winget install --id=Microsoft.VC++2012Redist-x86 -e -h --force;
Write-Host "MSVC 2012x86 installed" -f green

winget install --id=Microsoft.VC++2010Redist-x64 -e -h --force ;
Write-Host "MSVC 2010x64 installed" -f green
winget install --id=Microsoft.VC++2010Redist-x86 -e -h --force ;
Write-Host "MSVC 2010x86 installed" -f green

#winget install --id=Microsoft.VC++2008Redist-x64 -e -h --force ; #disabled to error output
#winget install --id=Microsoft.VC++2008Redist-x86 -e -h --force ;

winget install --id=Microsoft.VC++2005Redist-x64 -e -h --force ;
Write-Host "MSVC 2005x64 installed" -f green
winget install --id=Microsoft.VC++2005Redist-x86 -e -h --force ;
Write-Host "MSVC 2005x86 installed" -f green 

winget install --id=Oracle.JavaRuntimeEnvironment -e -h --force ; 
Write-Host "Java 8 runtime envirorment installed" -f green

winget install --id=Microsoft.XNARedist -e -h --force ;
Write-Host "XNA framework installed" -f green 

#done/reboot
Write-Host  
$REBOOT = Read-Host "Everything is installed, a reboot is suggested. Do you want to reboot now? Y=yes N=no"
If ($REBOOT -ieq "Y") {restart-computer}
else {exit}

pause
