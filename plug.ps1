Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
PowerShell.exe -WindowStyle hidden {
Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' -Name 'Photos01'
Remove-Item -Path $env:USERPROFILE\photos01
}
