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

    if (($col + 3) -eq $maxcol+3) {
        $col = 2
        $row = $row + 1
        #Write-Host "Return"
    } elseif (($col + 3) -eq $maxcol+2) {
        $col = 1
        $row = $row + 1
        #Write-Host "Return"
    } elseif (($col + 3) -eq $maxcol+1) {
        $col = 0
        $row = $row + 1
        #Write-Host "Return"
    } else {
        $col = $col + 3
        $row = $row + 1
    }
}

Set-Content -Value $treecount -Path "$($PSScriptRoot)\Pt1Output.txt"