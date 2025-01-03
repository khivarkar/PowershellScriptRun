# UseMyModule.ps1

# Specify the raw GitHub URL for the module
$ModuleUrl = "https://raw.githubusercontent.com/khivarkar/PowershellScriptRun/refs/heads/main/mymodule.psm1"

# Retrieve the module content from GitHub
try {
    $ModuleContent = Invoke-RestMethod -Uri $ModuleUrl -Headers $Headers -UseBasicParsing; $ModuleContent=$ModuleContent -replace '^\uFEFF', ''
    Write-Host "Module content retrieved successfully."
} catch {
    Write-Error "Failed to retrieve module content from GitHub. Error: $_"
    exit
}

# Execute the module content in the current session
try {
    Invoke-Expression $ModuleContent
    Write-Host "Module functions loaded successfully."
} catch {
    Write-Error "Failed to execute module content. Error: $_"
    exit
}

# Use the functions from the imported module

# Call Get-Greetings function
$greeting = Get-Greetings -Name "Alice"
Write-Output $greeting

# Call Get-DateInfos function
$dateInfo = Get-DateInfos
Write-Output $dateInfo

