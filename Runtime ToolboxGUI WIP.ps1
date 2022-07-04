
<#
	.SYNOPSIS
	Version: WIP
	Date: 19.05.2022
	Copyright (c) 2022 THEBOSSMAGNUS
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


Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()


#Gui
#main form
    $Windows = New-Object system.Windows.Forms.Form
        $Windows.text = "Runtime Toolbox"
        $Windows.ClientSize = '527, 300'
        $Windows.FormBorderStyle = 'FixedSingle'

        $iconBase64                      = "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"
        $iconBytes                       = [Convert]::FromBase64String($iconBase64)
        $stream                          = New-Object IO.MemoryStream($iconBytes, 0, $iconBytes.Length)
        $stream.Write($iconBytes, 0, $iconBytes.Length)
        $windows.Icon                    = [System.Drawing.Icon]::FromHandle((New-Object System.Drawing.Bitmap -Argument $stream).GetHIcon())

#install button
    $button = New-Object System.Windows.Forms.Button
        $Windows.Controls.Add($button)
        $button.TabIndex = 4
        $button.Width = 250
        $button.Height = 50
        $button.Text = "Install"
        $button.Location = New-Object System.Drawing.Point(250,165)
        $button.Font = New-Object System.Drawing.Font('Segoe UI Variable',20)
        $button.add_Click($handler_button_Click)

#Stust console
    $Console = New-Object System.Windows.Forms.ListBox
        $Windows.Controls.Add($Console)
        $Console.Width = 250
        $Console.Height = 150
        $Console.Location = New-Object System.Drawing.Point(250,13)
        $Console.TabIndex = 3


#checkbox
    #MSVC 2015-2022
    $VC1522 = New-Object System.Windows.Forms.CheckBox
        $Windows.Controls.Add($VC1522)
        $VC1522.Width = 105
        $VC1522.Height = 30
        $VC1522.location = New-Object System.Drawing.Point(27,10)
        $VC1522.Text = "C++ visual 2015-2022"

 #MSVC 2013
    $VC13 = New-Object System.Windows.Forms.CheckBox
        $Windows.Controls.Add($VC13)
        $VC13.Width = 105
        $VC13.Height = 30
        $VC13.location = New-Object System.Drawing.Point(27,50)
        $VC13.Text = "C++ visual 2013"

 #MSVC 2012
     $VC12 = New-Object System.Windows.Forms.CheckBox
         $Windows.Controls.Add($VC12)
         $VC12.Width = 105
         $VC12.Height = 30
         $VC12.location = New-Object System.Drawing.Point(27,90)
         $VC12.Text = "C++ visual 2012"

 #MSVC 2010
    $VC10 = New-Object System.Windows.Forms.CheckBox
        $Windows.Controls.Add($VC10)
        $VC10.Width = 105
        $VC10.Height = 30
        $VC10.location = New-Object System.Drawing.Point(27,130)
        $VC10.Text = "C++ visual 2010"

#MSVC 2008
    $VC8 = New-Object System.Windows.Forms.CheckBox
        $Windows.Controls.Add($VC8)
        $VC8.Width = 105
        $VC8.Height = 30
        $VC8.location = New-Object System.Drawing.Point(27,170)
        $VC8.Text = "C++ visual 2008"

#MSVC 2005
    $VC5 = New-Object System.Windows.Forms.CheckBox
        $Windows.Controls.Add($VC5)
        $VC5.Width = 105
        $VC5.Height = 30
        $VC5.location = New-Object System.Drawing.Point(27,210)
        $VC5.Text = "C++ visual 2005"

#Java
    $Java = New-Object System.Windows.Forms.CheckBox
        $Windows.Controls.Add($Java)
        $Windows.Controls.Add($Java)
        $Java.Width = 105
        $Java.Height = 30
        $Java.location = New-Object System.Drawing.Point(145,10)
        $Java.Text = "Java  8  runtime"

 #.net 4.8
    $NET48 = New-Object System.Windows.Forms.CheckBox
        $Windows.Controls.Add($NET48)
        $NET48.Width = 105
        $NET48.Height = 30
        $NET48.location = New-Object System.Drawing.Point(145,50)
        $NET48.Text = ".NET Framework 4.8"

#.net 3.5
    $NET35 = New-Object System.Windows.Forms.CheckBox
        $Windows.Controls.Add($NET35)
        $NET35.Width = 105
        $NET35.Height = 30
        $NET35.location = New-Object System.Drawing.Point(145,90)
        $NET35.Text = ".NET Framework 3.5"

#DirectX 9
    $DX9 = New-Object System.Windows.Forms.CheckBox
        $Windows.Controls.Add($DX9)
        $DX9.Width = 105
        $DX9.Height = 30
        $DX9.location = New-Object System.Drawing.Point(145,130)
        $DX9.Text = "Directx 9"

#XNA
    $XNA = New-Object System.Windows.Forms.CheckBox
        $Windows.Controls.Add($XNA)
        $XNA.Width = 105
        $XNA.Height = 30
        $XNA.location = New-Object System.Drawing.Point(145,170)
        $XNA.Text = "XNA Framework"

#Silverlight
    $SL = New-Object System.Windows.Forms.CheckBox
        $Windows.Controls.Add($SL)
        $SL.Width = 105
        $SL.Height = 30
        $SL.location = New-Object System.Drawing.Point(145,210)
        $SL.Text = "Silverlight"

#choco warning
if((Test-Path C:\ProgramData\chocolatey) -ine "true"){

$Label = New-Object System.Windows.Forms.Label
    $Label.Text = "Note: Also Chocolatrey will be installed for the correct run of the process"
    $Label.AutoSize = $true
    $Label.Font = New-Object System.Drawing.Font("Segoe UI",7,[System.Drawing.FontStyle]::Bold)
    $Label.location = New-Object System.Drawing.Point(30,257)
    $Windows.Controls.Add($Label)
}

$Windows.ShowDialog() #Show the Form

$handler_button_Click= {
    $console.Items.Clear();

    if (((Test-Path C:\ProgramData\chocolatey) -ine "true"))    {chocoinstall}

    if ($MSVC1522.Checked)    {Msvc20152022}

    if ($MSVC13.Checked)    {Msvc2013}

    if ($MSVC12.Checked)    {Msvc2012}

    if ($MSVC10.Checked)    {Msvc2010}

    if ($MSVC8.Checked)    {Msvc2008}

    if ($MSVC5.Checked)    {Msvc2005}

    if ($Java.Checked)    {Java}

    if ($NET48.Checked)    {netfx48}

    if ($NET35.Checked)    {netfx35}

    if ($DX9.Checked)    {Directx9}

    if ($XNA.Checked)    {XNA}

    if ($SL.Checked)    {Silverlight}

    

    #if (!$MSVC1522.Checked -and !$Java.Checked -and !$WIP.Checked) {$console.Items.Add("No runtime selected....")}
}

function chocoinstall {Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
    while($Null -eq (get-process Chocolatey -ErrorAction SilentlyContinue))
    { Start-Sleep -Seconds 1 }
    Start-Sleep -Seconds 2
    }

function Msvc20152022 {
    choco install vcredist140 -y
    $Console.Items.Add("MSVC 2015-2022 installed")}

function Msvc2013 {
    choco install vcredist2013 -y
    $Console.Items.Add("MSVC 2013 installed")}

function Msvc2012 {
    choco install vcredist2012
    $Console.Items.Add("MSVC 2012 installed")}

function Msvc2010 {
    choco install vcredist2010 -y
    $Console.Items.Add("MSVC 2010 installed")}

function Msvc2008 {
    choco install vcredist2008  -y
    $Console.Items.Add("MSVC 2008 installed")}

function Msvc2005 {
    choco install vcredist2005-y
    $Console.Items.Add("MSVC 2005 installed")}

function Java {
    choco install javaruntime  -y
    $Console.Items.Add("Java 8 runtime envirorment installed")}

function netfx48 {
    Enable-WindowsOptionalFeature -Online -FeatureName "NetFx4-AdvSrvs" -All
    $Console.Items.Add("Net Framework 4.8 installed")}

function netfx35 {
    Enable-WindowsOptionalFeature -Online -FeatureName "NetFx3" -All
    $Console.Items.Add("Net Framework 3.5 installed")}

function Directx9 {
    choco install directx -y
    $Console.Items.Add("Net Framework 3.5 installed")}

function XNA {
    choco install xna  -y
    $Console.Items.Add("Xna Framework installed")}

function Silverlight {
    choco install silverlight -y
    $Console.Items.Add("Silverlight installed")}