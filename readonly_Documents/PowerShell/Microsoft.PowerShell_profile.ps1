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
New-Alias -Name grep -Value select-string
New-Alias -Name winmerge -value WinMergeU
New-Alias -Name lgit -Value lazygit

remove-alias ls
function Eza-Icons { & (Get-Command eza).Source --icons=always } # New-Alias kann nicht mit Parametern arbeiten...
new-alias -Name ls -Value Eza-Icons

function Eza-La { & (Get-Command eza).Source -la --icons=always }
Set-Alias -Name la -Value Eza-La

function Git-Status-Short { & (Get-Command git).Source status --short }
Set-Alias -Name gs -Value Git-Status-Short
