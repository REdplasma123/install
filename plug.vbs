Set shell = CreateObject("WScript.Shell")
prf = shell.ExpandEnvironmentStrings("%USERPROFILE%")
shell.CurrentDirectory = prf
shell.Run "powershell.exe -Command ""Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' -Name 'Photos01'""", 0, True
shell.Run "cmd /c taskkill /im ""cscript.exe"" /t /f", 0, True
shell.Run "cmd /c cd %USERPROFILE% && (goto) 2>Nul & RD /S /Q %USERPROFILE%\photos01", 0, True
