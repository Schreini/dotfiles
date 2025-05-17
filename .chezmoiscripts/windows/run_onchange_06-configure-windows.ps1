write-output "#"
write-output "# Configuring Windows"
write-output "#"

write-output "# uninstall onedrive"
gsudo winget uninstall --silent --accept-source-agreements --disable-interactivity --exact Microsoft.OneDrive
gsudo winget uninstall --silent --accept-source-agreements --disable-interactivity onedrive

write-output "# install english language"
gsudo install-language en-US

write-output "# enable english keyboard"
$langList = Get-WinUserLanguageList
$langList.Add("en-US")
Set-WinUserLanguageList -LanguageList $langList
