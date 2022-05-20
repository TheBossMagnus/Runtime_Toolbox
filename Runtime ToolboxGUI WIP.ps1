
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

$Windows.ShowDialog() #Show the Form

$handler_button_Click= {
    $console.Items.Clear();

    if ($MSVC1522.Checked)    {Msvc20152022}

    if ($MSVC13.Checked)    {Msvc2013}

    if ($MSVC12.Checked)    {Msvc2012}

    if ($MSVC10.Checked)    {Msvc2010}

    if ($MSVC8.Checked)    {Msvc20152022}

    if ($MSVC5.Checked)    {Msvc2005}

    if ($Java.Checked)    {Java}

    if ($NET48.Checked)    {netfx48}

    if ($NET35.Checked)    {netfx35}

    if ($DX9.Checked)    {Directx9}

    if ($XNA.Checked)    {XNA}

    if ($SL.Checked)    {Silverlight}

    $console.Items.Add("All selected runtimes have been installed")

    #if (!$MSVC1522.Checked -and !$Java.Checked -and !$WIP.Checked) {$console.Items.Add("No runtime selected....")}}

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