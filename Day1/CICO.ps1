[System.Collections.ArrayList]$totals = @{}
$current = 0
Get-Content .\input.txt | ForEach-Object {
    if($_ -ne "")
    {
        $current = $current + $_
    }
    else {
        $totals.Add($current) > $null
        $current = 0
    }
}

#Part1
Write-Host Part 1
$totals | Measure-Object -Maximum

Write-Host Part 2
$totals = $totals | Sort-Object -Descending 
$totals[0..2] | Measure-Object -Sum