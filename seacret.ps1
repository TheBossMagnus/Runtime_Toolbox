Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object DisplayName, DisplayVersion | Format-Table –AutoSize > "$env:userprofile\AppData\Local\Temp\list.txt"
If ( Select-String -Pattern “A” -Path "$env:userprofile\AppData\Local\Temp\list.txt" -Quiet ) {Write-Output lol }
pause