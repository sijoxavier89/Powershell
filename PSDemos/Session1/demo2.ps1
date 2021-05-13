$modvar ="hello from module"

function first()
{
 $fvar = "first var"
 Write-Host $fvar
 Write-Host $modvar
 second
}

function second()
{
  Write-Host $modvar
  Write-Host $fvar
}

function greet($user, $msg="GM")
{
  Write-Host "Hi $usr , $msg"
}

greet -usr "Ajit" -msg "GA"