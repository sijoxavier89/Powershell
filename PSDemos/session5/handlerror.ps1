try{
Write-Host "Line 1"

$r=10/5
$r

Write-Host "line 2"

$r=10/0
$r

Write-Host "Line 3"
}
catch
{
Write-Host $PSItem.exception.message

}
finally
{
  "done"
}
