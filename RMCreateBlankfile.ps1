# Define the file path
$filePath = "C:\Tempo\BlankFile1.txt"

# Create or overwrite the file as blank
New-Item -ItemType File -Path $filePath -Force | Out-Null

# Optional: Confirmation message
Write-Host "Blank text file created at $filePath"
