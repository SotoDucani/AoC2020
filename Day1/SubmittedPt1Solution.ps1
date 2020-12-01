$Content = Get-Content "$($PSScriptRoot)\Input.txt"

foreach ($x in $Content) {
    foreach ($y in $Content) {
        $sum = [int]$x + [int]$y
        if ($sum -eq 2020 ) {
            $res = [int]$x * [int]$y
        }
    }
}

Set-Content -Value $res -Path "$($PSScriptRoot)\Pt1Output.txt"