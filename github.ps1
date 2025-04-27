$log_time = Get-Date -Format "HH:mm:ss"

$log = "Script started at $log_time`n"

$

Write-Output $log
Open-GitHubLoginPage -chrome_path $chrome_path -github_login_page $github_login_page
Write-Output $log
