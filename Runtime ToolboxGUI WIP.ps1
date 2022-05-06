function GenerateForm {

    [reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
    [reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
    
    $form1 = New-Object System.Windows.Forms.Form
    $button1 = New-Object System.Windows.Forms.Button
    $listBox1 = New-Object System.Windows.Forms.ListBox
    $checkBox3 = New-Object System.Windows.Forms.CheckBox
    $checkBox2 = New-Object System.Windows.Forms.CheckBox
    $checkBox1 = New-Object System.Windows.Forms.CheckBox
    $InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState

    $handler_button1_Click= 
{
    $listBox1.Items.Clear();    

    if ($checkBox1.Checked)     { Msvc20152022 }

    if ($checkBox2.Checked)    {Java}

    if ($checkBox3.Checked)    { netfx48 }

    if ( !$checkBox1.Checked -and !$checkBox2.Checked -and !$checkBox3.Checked ) {   $listBox1.Items.Add("No runtime selected....")} 
}
    
    
    $OnLoadForm_StateCorrection=
    {#Correct the initial state of the form to prevent the .Net maximized form issue
        $form1.WindowState = $InitialFormWindowState
    }
    
# Gui
    #main form
    $form1.Text = "Runtime toolbox"
    $form1.Name = "form1"
    $form1.DataBindings.DefaultDataSourceUpdateMode = 0
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 450
    $System_Drawing_Size.Height = 235
    $form1.ClientSize = $System_Drawing_Size
    $form1.Controls.Add($button1)
    $button1.TabIndex = 4
    $button1.Name = "button1"
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 75
    $System_Drawing_Size.Height = 23
    $button1.Size = $System_Drawing_Size
    $button1.UseVisualStyleBackColor = $True
    $button1.Text = "Install"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 156
    $button1.Location = $System_Drawing_Point
    $button1.DataBindings.DefaultDataSourceUpdateMode = 0
    $button1.add_Click($handler_button1_Click)
    
    #Stust console
    $form1.Controls.Add($listBox1)
    
    $listBox1.FormattingEnabled = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 301
    $System_Drawing_Size.Height = 212
    $listBox1.Size = $System_Drawing_Size
    $listBox1.DataBindings.DefaultDataSourceUpdateMode = 0
    $listBox1.Name = "listBox1"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 137
    $System_Drawing_Point.Y = 13
    $listBox1.Location = $System_Drawing_Point
    $listBox1.TabIndex = 3
    
    #checkbox

    #MSVC 2015-2022
    $form1.Controls.Add($checkBox1)

    $checkBox1.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 40
    $checkBox1.Size = $System_Drawing_Size
    $checkBox1.TabIndex = 0
    $checkBox1.Text = "C++ runtime 2015-2022"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 13
    $checkBox1.Location = $System_Drawing_Point
    $checkBox1.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkBox1.Name = "checkBox1"
    
    #Java
    $form1.Controls.Add($checkBox2)

    $checkBox2.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 40
    $checkBox2.Size = $System_Drawing_Size
    $checkBox2.TabIndex = 1
    $checkBox2.Text = "Java runtime"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 50
    $checkBox2.Location = $System_Drawing_Point
    $checkBox2.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkBox2.Name = "checkBox2"
    
    #.net 4.8
    $form1.Controls.Add($checkBox3)
    
    $checkBox3.UseVisualStyleBackColor = $True
    $System_Drawing_Size = New-Object System.Drawing.Size
    $System_Drawing_Size.Width = 104
    $System_Drawing_Size.Height = 40
    $checkBox3.Size = $System_Drawing_Size
    $checkBox3.TabIndex = 2
    $checkBox3.Text = ".NET frameowrk 4.8"
    $System_Drawing_Point = New-Object System.Drawing.Point
    $System_Drawing_Point.X = 27
    $System_Drawing_Point.Y = 100
    $checkBox3.Location = $System_Drawing_Point
    $checkBox3.DataBindings.DefaultDataSourceUpdateMode = 0
    $checkBox3.Name = "checkBox3"
    
    
    #Save the initial state of the form
    $InitialFormWindowState = $form1.WindowState
    #Init the OnLoad event to correct the initial state of the form
    $form1.add_Load($OnLoadForm_StateCorrection)
    #Show the Form
    $form1.ShowDialog()| Out-Null
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
    
#Call the Function
GenerateForm
