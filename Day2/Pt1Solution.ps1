$Content = Get-Content "$($PSScriptRoot)\Input.txt"

$valid = 0
foreach($line in $Content){
    $range,$letter,$password = $line.Split(" ")
    [int]$low,[int]$high = $range.split("-")

    $letterCount = 0
    $letterCount = ($password.toCharArray() | Where-Object -FilterScript {$_ -eq $letter.toCharArray()[0]}).count
    if (($low -le $letterCount) -and ($letterCount -le $high)) {
        $valid = $valid + 1
    }
}

Set-Content -Value $valid -Path "$($PSScriptRoot)\Pt1Output.txt"