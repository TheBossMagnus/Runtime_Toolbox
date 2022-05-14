function GenerateForm {

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()


# Gui
#main form
    $Form1 = New-Object system.Windows.Forms.Form
        $Form1.text = "Runtime Toolbox"
        $Form1.ClientSize = '527, 300'
        $Form1.FormBorderStyle = 'FixedSingle'

#install button
    $button = New-Object System.Windows.Forms.Button
        $form1.Controls.Add($button)
        $button.TabIndex = 4
        $button.Width = 250
        $button.Height = 50
        $button.Text = "Install"
        $button.Location = New-Object System.Drawing.Point(250,165)
        $button.Font = New-Object System.Drawing.Font('Segoe UI Variable',20)
        $button.add_Click($handler_button_Click)

#Stust console
    $listBox1 = New-Object System.Windows.Forms.ListBox
        $form1.Controls.Add($listBox1)
        $listBox1.Width = 250
        $listBox1.Height = 150
        $listBox1.Location = New-Object System.Drawing.Point(250,13)
        $listBox1.TabIndex = 3


#checkbox
    #MSVC 2015-2022
    $VC1522 = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($VC1522)
        $VC1522.Width = 105
        $VC1522.Height = 30
        $VC1522.location = New-Object System.Drawing.Point(27,10)
        $VC1522.Text = "C++ visual 2015-2022"



 #MSVC 2013
    $VC13 = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($VC13)
        $VC13.Width = 105
        $VC13.Height = 30
        $VC13.location = New-Object System.Drawing.Point(27,50)
        $VC13.Text = "C++ visual 2013"

 #.net 4.8
     $VC12 = New-Object System.Windows.Forms.CheckBox
         $form1.Controls.Add($VC12)
         $VC12.Width = 105
         $VC12.Height = 30
         $VC12.location = New-Object System.Drawing.Point(27,90)
         $VC12.Text = "C++ visual 2012"

 #.net 4.8
    $VC10 = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($VC10)
        $VC10.Width = 105
        $VC10.Height = 30
        $VC10.location = New-Object System.Drawing.Point(27,130)
        $VC10.Text = "C++ visual 2010"

#.net 4.8
    $VC8 = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($VC8)
        $VC8.Width = 105
        $VC8.Height = 30
        $VC8.location = New-Object System.Drawing.Point(27,170)
        $VC8.Text = "C++ visual 2008"

#.net 4.8
    $VC5 = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($VC5)
        $VC5.Width = 105
        $VC5.Height = 30
        $VC5.location = New-Object System.Drawing.Point(27,210)
        $VC5.Text = "C++ visual 2005"

#Java
    $Java = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($Java)
        $form1.Controls.Add($Java)
        $Java.Width = 105
        $Java.Height = 30
        $Java.location = New-Object System.Drawing.Point(145,10)
        $Java.Text = "Java  8  runtime"

 #.net 4.8
    $NET48 = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($NET48)
        $NET48.Width = 105
        $NET48.Height = 30
        $NET48.location = New-Object System.Drawing.Point(145,50)
        $NET48.Text = ".NET Framework 4.8"

#.net 4.8
    $NET35 = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($NET35)
        $NET35.Width = 105
        $NET35.Height = 30
        $NET35.location = New-Object System.Drawing.Point(145,90)
        $NET35.Text = ".NET Framework 3.5"

#.net 4.8
    $DX = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($DX)
        $DX.Width = 105
        $DX.Height = 30
        $DX.location = New-Object System.Drawing.Point(145,130)
        $DX.Text = "Lorem Ipsum"

#.net 4.8
    $WIP = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($WIP)
        $WIP.Width = 105
        $WIP.Height = 30
        $WIP.location = New-Object System.Drawing.Point(145,170)
        $WIP.Text = "Lorem Ipsum"

#.net 4.8
    $WIP = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($WIP)
        $WIP.Width = 105
        $WIP.Height = 30
        $WIP.location = New-Object System.Drawing.Point(145,210)
        $WIP.Text = "Lorem Ipsum"






$form1.ShowDialog() #Show the Form
}


function Msvc20152022 {
    choco install vcredist140 -y | Out-Null
    Write-Host "MSVC 2015-2022 installed" -f green
    $listBox1.Items.Add("MSVC 2015-2022 installed")}

function Java {
    choco install javaruntime  -y | Out-Null
    Write-Host "Java 8 runtime envirorment installed" -f green
    $listBox1.Items.Add("Java 8 runtime envirorment installed")}

function netfx48 {
    choco install netfx-4.8  -y | Out-Null
    Write-Host "Lorem Ipsum installed" -f green
    $listBox1.Items.Add("Lorem Ipsum installed")}




#Handler
$handler_button_Click= {
    $listBox1.Items.Clear();

    if ($MSVC1522.Checked)    {Msvc20152022}

    if ($Java.Checked)    {Java}

    if ($WIP.Checked)    {netfx48}

    if (!$MSVC1522.Checked -and !$Java.Checked -and !$WIP.Checked) {$listBox1.Items.Add("No runtime selected....")}}


#Call the Function
GenerateForm