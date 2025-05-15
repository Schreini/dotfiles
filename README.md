# Dotfiles managed with chezmoi

## Install

```powershell
winget install --silent --accept-source-agreements --accept-package-agreements --disable-interactivity --exact twpayne.chezmoi; `
winget install --silent --accept-source-agreements --accept-package-agreements --disable-interactivity --exact Microsoft.PowerShell; `
$env:path=[System.Environment]::GetEnvironmentVariable("Path", "Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path", "User"); `
chezmoi init --apply schreini;
```

top vorlage:
https://github.com/Nitestack/dotfiles/blob/master/README.md



TODO:
write init script

# Docs
## Interpreters

https://www.chezmoi.io/reference/configuration-file/interpreters/

[interpreters.ps1]
    command = "pwsh"
    args = ["-NoLogo"]

1. Source:

    Source Directory: This is where Chezmoi stores the desired state of your dotfiles. It's essentially your dotfiles repository. By default, it's located at ~/.local/share/chezmoi.
    Source State: This represents the content and configuration of your dotfiles as they exist in the source directory. It includes the files themselves, their permissions, and any templates used to generate them.

2. Target:

    Target: A target is a file, directory, or symbolic link that Chezmoi manages in your destination directory (typically your home directory). It's the actual file that Chezmoi creates or updates based on the source state.
    Target State: This is the desired state of a specific target file or directory, as computed by Chezmoi from the source state, configuration, and any templates.

3. Destination:

    Destination Directory: This is the directory where you want your dotfiles to reside. It's usually your home directory (~), but it can be any directory you specify.
    Destination State: This is the current state of the files and directories in your destination directory. It's what actually exists on your system before Chezmoi makes any changes.