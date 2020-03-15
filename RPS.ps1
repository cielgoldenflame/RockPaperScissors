$global:choices = 'Rock','Paper','Scissors'
$Global:user = $null
$Global:computer = $null
$Global:gameon = $true
$Global:ua = $null

function Computer {
  $Global:computer = Get-Random -InputObject $global:choices
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

while($Global:gameon -eq $true) {
     Clear-Host
     Computer
     $Global:user = Read-Host "Choose your weapon`n(R)ock`n(P)aper`n(S)cissors"
     if (($Global:user -ne 'r') -and ($Global:user -ne 'p') -and ($Global:user -ne 's')) {
        Clear-Host
     }else {
           switch ($Global:user) {
            'r' {$Global:user = 'Rock'}
            'p' {$Global:user = 'Paper'}
            's' {$Global:user = 'Scissors'}
           }
           Clear-Host
           Write-Host "$Global:user vs $Global:computer"
           Comparison
           $Global:ua = Read-Host "Play Again? Y/N"
           switch ($Global:ua) {
                "Y" {$Global:gameon = $true}
                "N" {$Global:gameon = $false}
           }
     }
}

Write-Host "Thanks For Playing`nChris Lichner 2020"