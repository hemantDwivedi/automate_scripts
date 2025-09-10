# Capture start time
$log_time = Get-Date -Format "HH:mm:ss"
$start_log = "Script started at $log_time`n"
Write-Output $start_log

# Get current datetime
$currentDate = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Write into Hello.txt (overwrite with new content)
Set-Content -Path "./Hello.txt" -Value "Writing At: $currentDate"

# Display file content
$file = Get-Content -Path "./Hello.txt"
Write-Output "File content:`n$file`n"

# Sleep for 2 seconds (simulate work)
Start-Sleep 2

# Git operations
git status
git add .
git commit -m "Updated Hello.txt with current datetime"
git push origin main

# Capture end time
$end_log = "Script ended at $(Get-Date -Format 'HH:mm:ss')`n"
Write-Output $end_log