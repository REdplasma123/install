Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
PowerShell.exe -WindowStyle hidden {[void][Reflection.Assembly]::LoadWithPartialName('Microsoft.VisualBasic')
$title = 'Name'
$msg   = 'Enter your name:'
$text = [Microsoft.VisualBasic.Interaction]::InputBox($msg, $title)
Add-Type -AssemblyName PresentationCore,PresentationFramework
$msgBody = "Hello, " + $text + "!"
[System.Windows.MessageBox]::Show($msgBody)}
