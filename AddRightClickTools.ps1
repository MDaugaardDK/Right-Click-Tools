# Run this script with admin rights
$Add_Button_Key = "Write a name for the button"
$command_Key = "command"
$Shell_Registry_Key = "HKCR:\Directory\Background\shell"
$AddAppli_Registry_Key = "HKCR:\Directory\Background\shell\$Add_Button_Key"
$Cmd_Registry_Key = "HKCR:\Directory\Background\shell\$Add_Button_Key\command"
$String_cmd = "C:\\Windows\\system32\\WindowsPowerShell\\v1.0\\powershell.exe -executionpolicy bypass -file C:\\ProgramData\\Enter_file_name.ps1 -NoExit -Command Set-Location -LiteralPath '%V'" 
 
New-PSDrive -PSProvider registry -Root HKEY_CLASSES_ROOT -Name HKCR
New-Item -Path $Shell_Registry_Key -Name $Add_Button_Key
New-Item -Path $AddAppli_Registry_Key -Name $command_Key
Set-Item -Path $Cmd_Registry_Key -Value $String_cmd

# Remember to copy your script to "C:\ProgramData\" ! And specify the filename in line 7.
# Check this blog for more information http://www.systanddeploy.com/2018/08/unblock-your-downloaded-files-with.html