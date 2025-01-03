# MyModule.psm1

function Get-Greetings {
    param (
        [string]$Name = "User"
    )
    "Hello, $Name! Welcome to PowerShellss."
}

function Get-DateInfos {
    param (
        [int]$AddSeconds = 0  # Default value is 0, meaning no seconds will be added
    )

    # Get the current date and time
    $currentDate = Get-Date

    # Add the specified number of seconds to the current date and time
    $newDate = $currentDate.AddSeconds($AddSeconds)

    # Return the formatted date string
    "Today's date is: $($currentDate.ToString('dddd, MMMM dd, yyyy'))"
    "New Date (after adding $AddSeconds seconds): $($newDate.ToString('dddd, MMMM dd, yyyy HH:mm:ss'))"
}

