$Content = Get-Content "$($PSScriptRoot)\Input.txt"

$valid = 0
foreach($line in $Content){
    $locations,$letterfield,$password = $line.Split(" ")
    [int]$pos1,[int]$pos2 = $locations.split("-")

    $charArray = $password.toCharArray()
    $letter = $letterfield.toCharArray()[0]
    if (($charArray[$pos1-1] -eq $letter) -xor ($charArray[$pos2-1] -eq $letter)) {
        $valid = $valid + 1
    }
}

Set-Content -Value $valid -Path "$($PSScriptRoot)\Pt2Output.txt"