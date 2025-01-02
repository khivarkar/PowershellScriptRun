# Define the file path and name
$filePath = "C:\Tempo\BlankFile.txt"
 
# Create the blank text file (overwrites if it exists)
Set-Content -Path $filePath -Value ""
 
# Output confirmation
Write-Host "Blank text file created at $filePath"