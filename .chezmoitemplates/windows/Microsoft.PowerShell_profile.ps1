# Print PowerShell version
<#
Write-Output "PowerShell Version: $($PSVersionTable.PSVersion)"

# Check if it's Windows PowerShell or PowerShell Core
if ($PSVersionTable.PSEdition -eq 'Core') {
  Write-Output "You are running PowerShell Core (or 7+)."
} elseif ($PSVersionTable.PSEdition -eq 'Desktop') {
  Write-Output "You are running Windows PowerShell."
} else {
  Write-Output "Unknown PowerShell edition."
}
#>

# Tab Completion for choco; See https://ch0.co/tab-completion for details.
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Starship Prompt
Invoke-Expression (&starship init powershell)

# Folder Icons
if (Get-Module -Name Terminal-Icons -ListAvailable) { Import-Module -Name Terminal-Icons }
else {Write-Output "No Terminal-Icons"}

# Aliases
New-Alias -Name chez -Value chezmoi
