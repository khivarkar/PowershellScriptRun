$filePath = "C:\Temp\BlankFile.txt"
 
if (-not (Test-Path -Path (Split-Path -Path $filePath))) {
    New-Item -ItemType Directory -Path (Split-Path -Path $filePath) | Out-Null
}
 
Set-Content -Path $filePath -Value ""
 
Write-Host "Blank text file created at $filePath"
