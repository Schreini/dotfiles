write-output "#"
write-output "# Configuring Windows"
write-output "#"
gsudo winget uninstall --silent --accept-source-agreements --disable-interactivity --exact Microsoft.OneDrive
gsudo winget uninstall --silent --accept-source-agreements --disable-interactivity onedrive
