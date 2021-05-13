

function AddNos($n1,$n2){
   return $n1+$n2
}

function MultiplyNos($n1,$n2){
   return $n1*$n2
}

function AddMultiplyNos($n1,$n2)
{
     $r1 = AddNos $n1 $n2
     $r2 = MultiplyNos $n1 $n2

     $result=@($r1,$r2)

   return $result
}

Export-ModuleMember AddMultiplyNos
