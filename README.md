# PowerShell-Customization
Windows PowerShell setup and customization for coding environment.

1. What is needed for this setup:

    - Windows terminal
    - PowerShell 7

1. **Install Scoop package manager**:
```
iwr -useb get.scoop | iex
```
2. **Install curl, sudo, (any packages needed for your native development)**:
```
 scoop install curl sudo jg nvm
```
3. **Install git**:
```
 winget install -e --id Git.Git
```
4. **Install neovim**:
```
 scoop install neovim
```
5. **Make .config Folder** for powershell enviroment profile path:
```
mkdir C:\User\'username'\.config\powershell
```
6. **Clone repository** to powershell config folder:
```
git clone https://github.com/planetsaint/PowerShell-Customization.git C:\Users\'username'\.config\powershell\
```
7.  **Copy files to powershell config folder**:
```
cd PowerShell-Customization && cp * <C:\User\'username'\.config\powershell>
```
8. Add user profile to powershell folder: 
```
nvim $PROFILE.CurrentUserCurrentHost
```
9. **Install Oh-My-Posh**:
```
Install-Module posh-git -Scope CurrentUser -Force
```
```
Install-Module oh-my-posh -Scope CurrentUser -Force
```
10. Add path (In nvim window):
```
. $env:USERPROFILE\.config\powershell.ps1

```
11. **Install Terminal Icons**:
```
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
```
12. **Install PsReadline**:
```
Install-Module -Name PsReadline -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
```
13. **Install Fuzzy Finder**:
```
Install-Module -Name PsFzf -Scope CurrentUser -Force
```

14. Install Nerd Font included in Root directory '_CascadiaCode.Nerd.Font.Complete.ttf_'.
15. Select said font in windows terminal settings.
16. Open windows terminal JSON themes, paste contents of '_Settings.JSON_' in file and save.
