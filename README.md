# PowerShell-Customization
Windows PowerShell setup and customization for coding environment.

**_Snippets included below._**

1. What is needed for this setup:

    - Windows terminal
        -Download from windows store.
    - PowerShell 7
        -https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.2

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

**Snippets**:

**Listing files**:
![prompt1](https://user-images.githubusercontent.com/47113271/151487593-0a4b28d6-ec66-4890-909a-9bb910125016.jpg)

**Vim Environment**
![prompt2-vim](https://user-images.githubusercontent.com/47113271/151487591-3c6417d8-1c8c-46eb-88a1-bf93736dc08f.jpg)

**Fuzzy File Finder**
![prompt3-fzf](https://user-images.githubusercontent.com/47113271/151487588-dcb8f8fd-1d4f-4676-bdf6-9877a464248b.jpg)

**Reverse command histroy using Fzf**
![prompt4-fzfhistory](https://user-images.githubusercontent.com/47113271/151487585-5c9ac82e-62bd-4b7b-8b6c-75500c0e7f39.jpg)

**Scoop list**
![prompt3-scoop](https://user-images.githubusercontent.com/47113271/151487595-4e0bcc22-082f-48d0-8742-ab52f396221e.jpg)

**Custom written fucntion**
![prompt4-which](https://user-images.githubusercontent.com/47113271/151487592-3585741c-812d-4c29-b8cb-945aab44d4dc.jpg)

