write-output "#"
write-output "# Installing Essentials"
write-output "#"
winget install --silent --accept-source-agreements --accept-package-agreements --disable-interactivity --exact Microsoft.PowerShell
winget install --silent --accept-source-agreements --accept-package-agreements --disable-interactivity --exact gerardog.gsudo
gsudo config CacheMode Auto
