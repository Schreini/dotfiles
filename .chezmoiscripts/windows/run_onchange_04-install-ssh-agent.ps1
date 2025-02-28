gsudo Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
gsudo set-service -name ssh-agent -StartupType Automatic
gsudo start-service ssh-agent
[Environment]::SetEnvironmentVariable("GIT_SSH", "$((Get-Command ssh).Source)", [System.EnvironmentVariableTarget]::User)
