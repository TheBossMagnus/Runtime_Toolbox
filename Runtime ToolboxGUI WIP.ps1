function GenerateForm {

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()


# Gui
#main form
    $Form1 = New-Object system.Windows.Forms.Form
        $Form1.text = "Runtime Toolbox"
        $Form1.ClientSize = '450, 235'
        $Form1.FormBorderStyle = 'FixedSingle'
    
#install button
    $button = New-Object System.Windows.Forms.Button
        $form1.Controls.Add($button)
        $button.TabIndex = 4
        $button.Width = 75
        $button.Height = 23
        $button.Text = "Install"
        $button.Location = New-Object System.Drawing.Point(27,156)
        $button.add_Click($handler_button_Click)
        
#Stust console
    $listBox1 = New-Object System.Windows.Forms.ListBox
        $form1.Controls.Add($listBox1)    
        $listBox1.Width = 301
        $listBox1.Height = 212
        $listBox1.Location = New-Object System.Drawing.Point(137,13)
        $listBox1.TabIndex = 3


        
#checkbox   
    #MSVC 2015-2022
    $MSVC1522 = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($MSVC1522)
        $MSVC1522.Width = 104
        $MSVC1522.Height = 40 
        $MSVC1522.location = New-Object System.Drawing.Point(27,13)
        $MSVC1522.Text = "C++ runtime 2015-2022"
              
#Java
    $Java = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($Java)
        $form1.Controls.Add($Java)
        $Java.Width = 104
        $Java.Height = 40 
        $Java.location = New-Object System.Drawing.Point(27,50)
        $Java.Text = "Java runtime"
        
 #.net 4.8
    $NET48 = New-Object System.Windows.Forms.CheckBox
        $form1.Controls.Add($NET48)
        $NET48.Width = 104
        $NET48.Height = 40 
        $NET48.location = New-Object System.Drawing.Point(27,100)
        $NET48.Text = ".NET Framework 4.8"
    

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
    Write-Host ".NET framework 4.8 installed" -f green
    $listBox1.Items.Add(".NET framework 4.8 installed")}




#Handler
$handler_button_Click= {
    $listBox1.Items.Clear();    
        
    if ($MSVC1522.Checked)    {Msvc20152022}

    if ($Java.Checked)    {Java}
        
    if ($NET48.Checked)    {netfx48}
        
    if (!$MSVC1522.Checked -and !$Java.Checked -and !$NET48.Checked) {$listBox1.Items.Add("No runtime selected....")}}

        
#Call the Function
GenerateForm