# MyModule.psm1

function Get-Greeting {
    param (
        [string]$Name = "User"
    )
    "Hello, $Name! Welcome to PowerShell."
}

function Get-DateInfo {
    "Today's date is: $(Get-Date -Format 'dddd, MMMM dd, yyyy')"
}
