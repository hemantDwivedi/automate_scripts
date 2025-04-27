$log_time = Get-Date -Format "HH:mm:ss"

$start_log = "Script started at $log_time`n"
$end_log = "Script ended at $log_time`n"

Write-Output $log

$file = Get-Content -Path "./Hello.txt"

Write-Output "File content: `n"
Write-Output "$file`n"

Set-Content -Path "./Hello.txt" -Value "Hello, World!"

Start-Sleep 3

git status
git add .
git commit -m "Updated Hello.txt with new content"
git push origin main

Write-Output $log
