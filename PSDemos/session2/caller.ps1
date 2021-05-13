$author="sijox"
function Cube($no)
{
  retuen $no * $no * $no
}

# cller variables will be in parent scope of 
# callme but not otherverse 
& ".\callme.ps1"

# . operator allows to call function from called function
".\callme.ps1"
Square 10