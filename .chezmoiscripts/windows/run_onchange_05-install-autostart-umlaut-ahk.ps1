$source = "$env:USERPROFILE\Documents\AutoHotkey\Umlaut.ahk"
$shortcutPath = [System.IO.Path]::Combine($env:APPDATA, "Microsoft\Windows\Start Menu\Programs\Startup", "Umlaut.ahk.lnk")

$WshShell = New-Object -ComObject WScript.Shell
$shortcut = $WshShell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $source
$shortcut.Save()

write-output "# Umlaut.ahk link in Startmenu/Autostart created"

Start-Process $shortcutPath
write-output "# Umlaut.ahk started"
