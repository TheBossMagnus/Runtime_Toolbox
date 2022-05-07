function GenerateForm {

    [reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
    [reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
       
    #items 
    $form1 = New-Object System.Windows.Forms.Form
    $button1 = New-Object System.Windows.Forms.Button
    $listBox1 = New-Object System.Windows.Forms.ListBox
    $checkBox1 = New-Object System.Windows.Forms.CheckBox
    $checkBox2 = New-Object System.Windows.Forms.CheckBox
    $checkBox3 = New-Object System.Windows.Forms.CheckBox
        
       
        
    
        $handler_button1_Click= 
    {
        $listBox1.Items.Clear();    
    
        if ($checkBox1.Checked)     { Msvc20152022 }
    
        if ($checkBox2.Checked)    {Java}
    
        if ($checkBox3.Checked)    { netfx48 }
    
        if ( !$checkBox1.Checked -and !$checkBox2.Checked -and !$checkBox3.Checked ) {   $listBox1.Items.Add("No runtime selected....")} 
    }
        
    # Gui
        #main form
    $Form1 = New-Object system.Windows.Forms.Form
        $Form1.text = "Runtime Toolbox"
        $Form1.ClientSize = '450, 235'
        $Form1.FormBorderStyle = 'FixedSingle'
    
    
    #install button
        
    $form1.Controls.Add($button1)
        $button1.TabIndex = 4
        $button1.Width = 75
        $button1.Height = 23
        $button1.Text = "Install"
        $button1.Location = New-Object System.Drawing.Point(27,156)
        $button1.add_Click($handler_button1_Click)
        
    #Stust console
    $form1.Controls.Add($listBox1)    
        $listBox1.Width = 301
        $listBox1.Height = 212
        $listBox1.Location = New-Object System.Drawing.Point(137,13)
        $listBox1.TabIndex = 3
        
    #checkbox
    
    #MSVC 2015-2022
    $form1.Controls.Add($checkBox1)
        $checkBox1.Width = 104
        $checkBox1.Height = 40 
        $checkBox1.location = New-Object System.Drawing.Point(27,13)
        $checkBox1.Text = "C++ runtime 2015-2022"
        
        
    #Java
    $form1.Controls.Add($checkBox2)
        $form1.Controls.Add($checkBox2)
        $checkBox2.Width = 104
        $checkBox2.Height = 40 
        $checkBox2.location = New-Object System.Drawing.Point(27,50)
        $checkBox2.Text = "Java runtime"
        
    #.net 4.8
    $form1.Controls.Add($checkBox3)
        $checkBox3.Width = 104
        $checkBox3.Height = 40 
        $checkBox3.location = New-Object System.Drawing.Point(27,100)
        $checkBox3.Text = ".NET Framework 4.8"
    
    #Show the Form
    $form1.ShowDialog()
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