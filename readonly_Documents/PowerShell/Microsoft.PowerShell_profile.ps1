# Tab Completion for choco; See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Starship Prompt
Invoke-Expression (&starship init powershell)

# Folder Icons
Import-Module -Name Terminal-Icons