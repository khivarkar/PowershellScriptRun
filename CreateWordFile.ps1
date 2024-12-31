# Ensure the Word Interop Assembly is available
Add-Type -AssemblyName Microsoft.Office.Interop.Word

# Define the file path for the new Word document
$WordFilePath = "C:\Temp\BlankWordFile.docx"

# Create a new Word application object
$WordApp = New-Object -ComObject Word.Application

try {
    # Add a new document
    $Document = $WordApp.Documents.Add()

    # Save the document
    $Document.SaveAs([ref]$WordFilePath)

    Write-Output "Blank Word file created successfully at $WordFilePath"
} catch {
    Write-Error "Error creating Word document: $_"
} finally {
    # Close the document and quit Word
    $Document.Close($false) | Out-Null
    $WordApp.Quit() | Out-Null

    # Release COM objects
    [System.Runtime.InteropServices.Marshal]::ReleaseComObject($Document) | Out-Null
    [System.Runtime.InteropServices.Marshal]::ReleaseComObject($WordApp) | Out-Null
    [GC]::Collect()
    [GC]::WaitForPendingFinalizers()
}
