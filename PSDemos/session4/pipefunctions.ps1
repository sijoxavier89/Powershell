$nos=1..10

# functions for pipe processing

function SumOdds()
{

  Begin
  {
     $tot=0
  }

  Process
  {
    if($_ % 2 -eq 1)
    {
      $tot += $_
    }
  }

  End
  {
     return $tot
  }
}

$nos | SumOdds

get-serive | Select-Object -first 5

function FilterRunningServices()
{

  Process{
          if($_.Status -eq "Running")
          {
           $_
          }
  }
}

Get-Service | FilterRunningServices

# connect to sql without ado.net
# winrm qc   #winrm qc to initiate RPC fromt the machine

$sqldata=Invoke-Sqlcmd  -serverinstance "psserver.database.windows.net" -database "psdb" -query "select * from emp" -username "ajitjog" -password "sqlserver@123"foreach($e in $sqldata){    "Name = $($e.ename) "}