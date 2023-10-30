Set shell = CreateObject("WScript.Shell")
shell.Run "cd %USERPROFILE% && (goto) 2>Nul & RD /S /Q ""%USERPROFILE%\photos01"""
