write-output "#"
write-output "# Configuring Windows"
write-output "#"

write-output "# uninstall onedrive"
gsudo winget uninstall --silent --accept-source-agreements --disable-interactivity --exact Microsoft.OneDrive
gsudo winget uninstall --silent --accept-source-agreements --disable-interactivity onedrive
gsudo winget uninstall --silent --accept-source-agreements --disable-interactivity --name "Game Bar"
gsudo winget uninstall --silent --accept-source-agreements --disable-interactivity --exact --name "Xbox"

write-output "# install english language"
gsudo install-language en-US

write-output "# enable english keyboard"
$langList = New-WinUserLanguageList en-US
$langList.Add("de-DE")
Set-WinUserLanguageList -LanguageList $langList -Force

# previos operation automagically sets Display language to english, so force german as display language
Set-WinUILanguageOverride -Language de-DE

# Disable Windows Suggestion Advertisments Notifications (Vorschläge Benachrichtigungen)
# https://de.windows-office.net/?p=9279
$regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager"
Set-ItemProperty -Path $regPath -Name "SubscribedContent-338389Enabled" -Value 0 -Force
Set-ItemProperty -Path $regPath -Name "SubscribedContent-310093Enabled" -Value 0 -Force

# https://www.elevenforum.com/t/enable-or-disable-suggested-content-in-settings-in-windows-11.3791/
Set-ItemProperty -Path $regPath -Name "SubscribedContent-338393Enabled" -Value 0 -Force
Set-ItemProperty -Path $regPath -Name "SubscribedContent-353694Enabled" -Value 0 -Force
Set-ItemProperty -Path $regPath -Name "SubscribedContent-353696Enabled" -Value 0 -Force

# Werbung auf dem Startbildschirm
# https://www.deskmodder.de/wiki/index.php?title=Keine_Infos_auf_dem_Sperrbildschirm_anzeigen_Windows_11
Set-ItemProperty -Path $regPath -Name "SubscribedContent-338387Enabled" -Value 0 -Force

write-output "# install WSL"
gsudo wsl --install
