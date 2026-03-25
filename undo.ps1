Write-Host "Restoring Windows defaults..."

Remove-Item "HKCU:\Software\Policies\Microsoft\Windows\WindowsCopilot" -Recurse -ErrorAction SilentlyContinue
Remove-Item "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsAI" -Recurse -ErrorAction SilentlyContinue
Remove-Item "HKLM:\SOFTWARE\Policies\Microsoft\Edge" -Recurse -ErrorAction SilentlyContinue

Set-Service "DiagTrack" -StartupType Automatic

Write-Host "Settings restored."
