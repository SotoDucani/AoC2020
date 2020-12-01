$Content = Get-Content "$($PSScriptRoot)\Input.txt"

foreach ($x in $Content) {
    foreach ($y in $Content) {
        foreach ($z in $Content) {
            $sum = [int]$x + [int]$y + [int]$z
            if ($sum -eq 2020 ) {
                $res = [int]$x * [int]$y * [int]$z
            }
        }
    }
}

Set-Content -Value $res -Path "$($PSScriptRoot)\Pt2Output.txt"