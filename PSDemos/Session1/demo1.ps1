Set-Location "c:\psdemos\session1"
$n1=100
$n2=200

$n3 = $n2 + $n1

$n3

Get-ExecutionPolicy

Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

$n1.GetType()
$n1="hello"
$n1.GetType()

[System.Int32]$num = 101
$num = "abc" # will throw error

$arr1 = 10, 20, 30
[System.String]$arr2 = @("mumbai", "pune", "nashik")

#loop
for($i=0;$i -lt $arr1.Length;$i++)
{
    Write-Host "value is $($arr1[$i])"
}


foreach($c in $arr2)
{
  Write-Host "value is $c"
}

# odd or even 

foreach($num in $arr1)
{
  if($num % 2 -eq 0)
  { 
    "$num is even"
  }else
  {
    "$num is odd" 
  }
}

# switch
[System.String]$arr3 = @("mumbai", "pune", "nashik")
foreach($c in $arr3)
{
   switch -CaseSensitive -Wildcard ($c)
   { 
     "[a-z]a[a-z]*" { "$c is selected"; break; }
      default { "$c is on hold"; break; }
   }
}

# key value pair

$capitals = @{
 "mumbai"= "mah"
  "bangalore"="karnataka"
   "chennai"= "TN"
}

foreach($k in $capitals.Keys)
{
  "capital of $($capitals[$k]) is $k"
}