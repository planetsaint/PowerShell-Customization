# Prompt
Import-Module posh-git
Import-Module oh-my-posh

# Terminal Icons
Import-Module -Name Terminal-Icons

# Theme
# Themes I like: thecyberden, larserikfinholt, clean-detailed, atomic, M365Princess, amro, bubbles, bubblesline 
Set-PoshPrompt bubblesline

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
# Set these to your Git installation path:
Set-Alias tig 'E:\Installations\Git\usr\bin\tig.exe'
Set-Alias less 'E:\Installations\Git\usr\bin\less.exe'

# Utilities
function which($command){
	Get-Command -Name $command -ErrorAction SilentlyContinue |
		Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
