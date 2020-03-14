<#
Plan 
    computer var stores options for computer
    function for computer choose
        get-random
    read-host = var
    switches?
        if & elseif
#>

$global:computer = 'rock','paper','scissors'
$Global:user = $null

function Computer {
  Get-Random -InputObject $global:computer
}
function User {
    Clear-Host
    $Global:user = Read-Host "Choose your weapon`n(R)ock`n(P)aper`n(S)cissors"
    if (($Global:user -ne 'r') -and ($Global:user -ne 'p') -and ($Global:user -ne 's')) {
        return "You typed $Global:user"
    }        
    switch ($Global:user) {
        'r' {$Global:user = 'rock'}
        'p' {$Global:user = 'paper'}
        's' {$Global:user = 'scissors'}
    }
}

User
$Global:user;Computer
