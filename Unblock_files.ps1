# Unblock_files.ps1# Copy this file in %programdata%
$Current_Folder =(get-location).path 
Get-ChildItem $Current_Folder -Recurse | Unblock-File