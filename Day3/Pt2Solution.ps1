$Content = Get-Content "$($PSScriptRoot)\Input.txt"

$tests = @((1,1),(3,1),(5,1),(7,1),(1,2))
$result = 1

foreach ($test in $tests) {
    $row = 0
    $col = 0
    $treecount = 0
    while ($row -lt $content.count){
        $maxcol = $Content[$row].ToCharArray().Count - 1

        $pointValue = $Content[$row].ToCharArray()[$col]
        #Write-Host "Row: $row Col: $col"
        if($pointValue -eq "#"){
            $treecount = $treecount + 1
            #Write-Host "Hit a tree."
        }
        #Read-Host

        if(($col + $test[0]) -gt $maxcol) {
            $mod = $maxcol % $col
            $col = $test[0] - $mod - 1
            $row = $row + $test[1]
        } else {
            $col = $col + $test[0]
            $row = $row + $test[1]
        }
    }
    $result = $result * $treecount
}


Set-Content -Value $result -Path "$($PSScriptRoot)\Pt2Output.txt"