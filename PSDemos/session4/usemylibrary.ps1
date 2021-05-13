set-location "C:\PSDemos\session4"

[system.Reflection.assembly]::LoadFile("C:\PSDemos\session4\MyLibrary.dll")

$citiacc = New-Object MyLibrary.MyClasses.CitiAccount

$citiacc.Deposit(5000)
$citiacc.Deposit(15000)

$bal = $citiacc.GetBalance(6000)

Write-Host "Balance : $bal"

$citiacc.Withdraw(6000)
$bal = $citiacc.GetBalance()

Write-Host "Balance after withdraw: $bal"
