$ScriptContent = @"
# Define the file path and name
$filePath = 'C:\Tempo\BlankFile.txt'

# Check if the directory exists; create it if it doesn't
if (-not (Test-Path -Path (Split-Path -Path $filePath))) { New-Item -ItemType Directory -Path (Split-Path -Path $filePath) | Out-Null }

# Create the blank text file (or overwrite if it exists)
Set-Content -Path $filePath -Value ''

# Output confirmation
Write-Host 'Blank text file created at $filePath'
"@

# Pass as a single string for Start-Process
Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command $($ScriptContent)" -Wait
