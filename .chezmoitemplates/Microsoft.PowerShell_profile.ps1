chezmoi update; & $PROFILE

# Alias
Set-Alias vim nvim
Set-Alias vi nvim

Set-Alias -Name ls -Value Get-ChildItem
Set-Alias l ls

function ListAll {Get-ChildItem -Force}
Set-Alias -Name ll -Value ListAll

Set-Alias g git
function CommitAll ($Message) {git add .; git commit -m $Message}
Set-Alias -Name ga -Value CommitAll
Set-Alias grep findstr

function Location-Back {
    param (
        [int]$Levels
    )

    $path = ".."
    for ($i = 1; $i -lt $Levels; $i++)
    {
        $path = $path + "\.."
    }

    Set-Location -Path $path
}

function Back1 {Location-Back 1}
function Back2 {Location-Back 2}
function Back3 {Location-Back 3}
function Back4 {Location-Back 4}
function Back5 {Location-Back 5}
function Back6 {Location-Back 6}

Set-Alias -Name .. -Value Back1
Set-Alias -Name .... -Value Back2
Set-Alias -Name ...... -Value Back3
Set-Alias -Name ........ -Value Back4
Set-Alias -Name .......... -Value Back5
Set-Alias -Name ............ -Value Back6

function UpdateProfile {chezmoi apply; & $PROFILE}
Set-Alias -Name update -Value UpdateProfile

Import-Module oh-my-posh
Set-PoshPrompt -Theme spaceship

Import-Module -Name Terminal-Icons

# PSReadLine
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None
Set-PSReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

Import-Module PSFzf
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'

# Utilities
function which ($command) {
    Get-Command -Name $command -ErrorAction SilentlyContinue | 
        Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
