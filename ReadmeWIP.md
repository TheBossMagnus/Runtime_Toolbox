# About Runtime Toolbox

Runtime Toolbox is a free and open-source tool to automate the most commonly used runtime installations.

It’s coded on PowerShell and features both the GUI and script versions.





# How to use

First of all, you need to choose which versions to use.

The features are the same but there are some pros and cons

> personally  suggest the Gui .exe version

 

## GUI vs Script

|                                          | Script                             | GUI                |
| ---------------------------------------- |:----------------------------------:|:------------------:|
| Easy to use                              | :exclamation: it's a CLI           | :white_check_mark: |
| You can choose <br/>wich runtime install | :exclamation:need to edit the code | :white_check_mark: |
| Automatizable                            | :white_check_mark:                 | :red_circle:       |
| Bug                                      | shouldn't                          | sometimes          |

## Available Format

Both GUI and script versions are released in .exe and .ps1 formats

**.ps1** is the standard Powershell format, it needs to be manually executed with admin privileges. You can easily edit the code with any text editor.

**.exe** version is the .ps1 script compiled with **[PS2EXE](https://github.com/MScholtes/PS2EXE)** Powershell's module. It automatically gets admin privileges, but it's not possible to edit his code

## Run it!

Now, from the [releases tab](https://github.com/THEBOSSMAGNUS/Runtime_Toolbox/releases) tab, download one of the available files and run it as an administrator...

- If you're using the script to confirm the execution answer y (yes) and wait around 3-5 minutes. When it says finished you can close it

- if you're using the GUI version select wanted runtime and click install. The GUI will freeze and everything will be installed in the background; when it is finished in the status console, a list of the installed runtime will appear. Now you can close the window.





# Supported Runtime list

*  C++ Redistributable
  + c++ 2015-2022
  + c++ 2013
  + c++ 2012
  + c++ 2010
  + c++ 2008 
  + c++ 2005
* Java
*  Xna framework
* .Net Framework
  + 4.8 
  + 3.5 
*  Silverlight
* Directx 9 (Directx 12 comes preinstalled with windows)

###### NOTE: .NET framework is installed/activated with windows optional features; everything else with [Chocolatey(choco)](https://chocolatey.org/) package menager
