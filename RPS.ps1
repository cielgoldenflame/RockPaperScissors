<#
Plan 
    computer var stores options for computer
    function for computer choose
        get-random
    read-host = var
    switches?
        if & elseif
#>

$global:choices = 'rock','paper','scissors'
$Global:user = $null
$Global:computer = $null
$Global:gameon = $true

function Computer {
  $Global:computer = Get-Random -InputObject $global:choices
}
function User {
    Clear-Host
    $Global:user = Read-Host "Choose your weapon`n(R)ock`n(P)aper`n(S)cissors"
    if (($Global:user -ne 'r') -and ($Global:user -ne 'p') -and ($Global:user -ne 's')) {
       Clear-Host
       $Global:gameon = $false 
    }else {
        switch ($Global:user) {
           'r' {$Global:user = 'rock'}
           'p' {$Global:user = 'paper'}
           's' {$Global:user = 'scissors'}
        }
    }
}

function Comparison {
   if ($Global:user -eq $Global:computer) {
        Write-Host "TIE"
   }elseif (($Global:user -eq 'rock') -and ($Global:computer -eq 'paper')) {
        Write-Host "YOU LOOSE"
   }elseif (($Global:user -eq 'rock') -and ($Global:computer -eq 'scissors')) {
        Write-Host "YOU WIN"
   }elseif (($Global:user -eq 'paper') -and ($Global:computer -eq 'scissors')) {
        Write-Host "YOU LOOSE"
   }elseif (($Global:user -eq 'paper') -and ($Global:computer -eq 'rock')) {
        Write-Host "YOU WIN"
   }elseif (($Global:user -eq 'scissors') -and ($Global:computer -eq 'rock')) {
        Write-Host "YOU LOOSE"
   }elseif (($Global:user -eq 'scissors') -and ($Global:computer -eq 'paper')) {
        Write-Host "YOU WIN"
   }
}

User
Computer
if($Global:gameon -eq $true) {
    Clear-Host
    Write-Host "$Global:user vs $Global:computer"
    Comparison
}elseif ($Global:gameon -eq $false) {
    "You typed $Global:user"
}