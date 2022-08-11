<p align="center">
	&bull;
	<a href="#about-runtime-toolbox">about runtime toolbox</a>
	&bull;
	<a href="#how-to-use">How to use</a>
	&bull;
	<a href="#supported-runtime-list">Supported runtime list</a>
	&bull;
</p>

***

# About Runtime Toolbox

Runtime Toolbox is a free and open-source tool to automate the most commonly used runtime installations.

It’s coded on PowerShell and features both the GUI and script versions.


<img src="https://upload.wikimedia.org/wikipedia/commons/0/05/Windows_10_Logo.svg" height="30px"/> &emsp; <img src="https://upload.wikimedia.org/wikipedia/commons/e/e6/Windows_11_logo.svg" height="30px"/>

<p align="left">

  <a href="https://github.com/THEBOSSMAGNUS/Runtime_Toolbox/releases/latest"><img src="https://img.shields.io/github/v/release/THEBOSSMAGNUS/Runtime_Toolbox"></a>
  <a href="https://github.com/THEBOSSMAGNUS/Runtime_Toolbox/releases"><img src="https://img.shields.io/github/v/release/THEBOSSMAGNUS/Runtime_Toolbox?include_prereleases&label=pre-release&style=flat"></a>
 
  <a href="https://github.com/THEBOSSMAGNUS/Runtime_Toolbox/commits/main"><img src="https://img.shields.io/github/commit-activity/m/THEBOSSMAGNUS/Runtime_Toolbox?label=Commits&style=flat"></a>
 
 <img src="https://img.shields.io/badge/PowerShell%205.1%20&%207.2-Ready-blue.svg?color=5391FE&style=flat&logo=powershell">
</p>



# How to use

First of all, you need to choose which versions to use.

The features are the same but there are some pros and cons

> I personally  suggest the Gui .exe version

 

## GUI vs Script

|                                          | Script                             | GUI                |
| ---------------------------------------- |:----------------------------------:|:------------------:|
| Easy to use                              | :exclamation: it's a CLI           | :white_check_mark: |
| You can choose <br/>wich runtime install | :exclamation:need to edit the code | :white_check_mark: |
| Automatizable                            | :white_check_mark:                 | :red_circle:       |
| Bug                                      | shouldn't                          | There are some known isues      |

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
* .Net Framework 3.5
* .net 6 Desktop runtime
* Powershell 7
* Directx 9

###### NOTE: .NET framework 3.5 is installed/activated with windows optional features; everything else with [winget](https://docs.microsoft.com/windows/package-manager/winget/) package menager
