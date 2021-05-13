#set-location "C:\PSDemos\session3"

# initating object from dotnet code
$lst1 = New-Object System.Collections.ArrayList

$lst1.GetType()
$lst1.Add(100)
$lst1.Add("sx")

foreach($item in $lst1)
{
  $item
}

$lst2 = New-Object -TypeName "System.Collections.Generic.Dictionary[int,string]" 

$lst2.GetType()
$lst2.Add(1,"Mumbai")
$lst2.Add(2, "Pune")
foreach($k in $lst2.Keys){
  "Value=$($lst2[$K])"
}

#conecting to ms sql
$sqlconn = New-Object System.Data.SqlClient.SqlConnection  -ArgumentList "server=psserver.database.windows.net;database=psdb;user id=ajitjog;password=sqlserver@123"$sqlconn.Open()$sqlcmd = New-Object System.Data.SqlClient.SqlCommand -ArgumentList "select * from emp",$sqlconn$rdr = $sqlcmd.ExecuteReader()while($rdr.Read()){  Write-Host "Emp Name = $($rdr['ename'])   Sal = $($rdr['esal'])"}$rdr.Close()