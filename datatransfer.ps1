$location = Read-Host "Enter the file path location"
$destination = Read-Host "Enter the file path destination"

# Check if the path exists
if (Test-Path $location) {
    Write-Host "The file path exists: $location"
} else {
    Write-Host "The file path does not exist: $location"
    exit 1
}

if (Test-Path $destination) {
    Write-Host "The file path exists: $destination"
} else {
    Write-Host "The file path does not exist: $destination"
    exit 1
}

# Robocopy

robocopy $location $destination /E