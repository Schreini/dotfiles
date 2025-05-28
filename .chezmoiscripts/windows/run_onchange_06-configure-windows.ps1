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
