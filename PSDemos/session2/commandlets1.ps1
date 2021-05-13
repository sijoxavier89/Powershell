Get-ChildItem "C:\" 

New-Item "C:\psdemos\A" -ItemType directory

Set-content "C:\psdemos\a\name.txt" -Value "sijox, franklin, TN"
Add-Content "C:\psdemos\a\name.txt" -Value ".Net, Azure"

$lines="C:\psdemos\a\name.txt"
Get-Content $lines

[system.Io.file]::ReadAllLines("C:\psdemos\a\name.txt")


get-service | select-object -First 5 

get-service | Where-Object {$_.Status -eq "Running"}
get-service | Where-Object {$_.Status -eq "Stopped"} | select-object -First 2

$services=get-service | Where-Object {$_.Name -like "note"}

foreach($svc in $services)
{
  $svc.Stop() 
}
 
Get-Process | Sort-Object -Property CPU | Select-Object -First 5

Get-Process | Sort-Object -Property WS | Select-Object -First 5

get-process | select-object -property processname, threads, CPU -first 5

Invoke-Item "notepad"