pwsh.exe "./kein-problem.ps1"
# Es ist aber nichts schlimmes passiert
if ($LASTEXITCODE -ne 0) {
  Write-Error "Etwas schlimmes ist passiert"
  exit 1
}

$returnVal = pwsh.exe -Command "./problem.ps1"
Write-Host "$returnVal"
# Jetz passiert etwas schlimmes
if ($LASTEXITCODE -ne 0) {
  Write-Error "Etwas schlimmes ist passiert"
  exit 1
}

Write-Host "Aber mich kümmert es nicht..."
Write-Host "und laufe munter weiter"