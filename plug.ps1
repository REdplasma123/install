Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
PowerShell.exe -WindowStyle hidden {
Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' -Name 'Photos01'
taskkill /IM "cscript.exe" /F
cmd /c del /Q %userprofile%\photos01
}
