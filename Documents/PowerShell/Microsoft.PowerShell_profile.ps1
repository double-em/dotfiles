# Alias
Set-Alias vim nvim
Set-Alias vi nvim


Set-Alias -Name ls -Value Get-ChildItem
Set-Alias l ls

function list_all {Get-ChildItem -Force}
Set-Alias -Name ll -Value list_all

Set-Alias g git
Set-Alias grep findstr

function go_back_up($levels) {
    $path = ".."
    for ($i = 0; $i -lt $levels; $i++)
    {
        $path = $path + "\.."
    }

    Set-Location -Path $path
}

Set-Alias -Name .... -Value go_back_up(2)

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
