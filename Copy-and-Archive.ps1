$sourceDir = "L:\Data\IS Info\2019 Projects\MPOD\J-Block Remediation\2008-Remidiation"
$archiveDir = $sourceDir + "\Archive"
$files = Get-ChildItem $sourceDir | Where-Object { $_.Name -like 'Jblock-mPOD_Migration*' }
$dateMinus = Get-Date
$dateMinus = $dateMinus.AddDays(-1)
$dateMinus = $dateMinus.ToString("yyyy-MM-dd")

Set-Location $sourceDir

foreach ($file in $files)
{

    $archiveFile = $archiveDir + "\" + $file.BaseName + "_" + $dateMinus + $file.Extension
    Copy-Item $file $archiveFile

}
