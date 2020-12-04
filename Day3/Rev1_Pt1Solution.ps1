$Content = Get-Content "$($PSScriptRoot)\Input.txt"

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

    if(($col + 3) -gt $maxcol) {
        $mod = $maxcol % $col
        $col = 3 - $mod - 1
        $row = $row + 1
    } else {
        $col = $col + 3
        $row = $row + 1
    }
}

Set-Content -Value $treecount -Path "$($PSScriptRoot)\Rev1_Pt1Output.txt"