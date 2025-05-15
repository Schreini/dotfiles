write-output "#"
write-output "# Installing Essentials"
write-output "#"
winget install --silent --accept-source-agreements --accept-package-agreements --disable-interactivity --exact Microsoft.PowerShell
winget install --silent --accept-source-agreements --accept-package-agreements --disable-interactivity --exact gerardog.gsudo

$env:path=[System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User")

gsudo config CacheMode Auto
