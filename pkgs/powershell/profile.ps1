# Shared by Windows PowerShell 5.1 and PowerShell 7.
if (Get-Module -Name PSReadLine) {
    Set-PSReadLineOption -EditMode Emacs -HistorySaveStyle SaveIncrementally
    Set-PSReadLineKeyHandler -Key Tab -Function MenuComplete
    Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
    Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

    # The PSReadLine bundled with Windows PowerShell 5.1 has no predictions.
    if ((Get-Command Set-PSReadLineOption).Parameters.ContainsKey('PredictionSource')) {
        Set-PSReadLineOption -PredictionSource History
    }
}

if (Get-Command nvim -CommandType Application -ErrorAction SilentlyContinue) {
    Set-Alias -Name n -Value nvim -Scope Global
    $env:EDITOR = 'nvim'
    $env:VISUAL = 'nvim'
}

function global:.. { Set-Location .. }
function global:... { Set-Location ../.. }
function global:reload-profile { . $PROFILE.CurrentUserAllHosts }

# Machine-specific overrides; this file is ignored by Git.
$localProfile = Join-Path $PSScriptRoot 'profile.local.ps1'
if (Test-Path -LiteralPath $localProfile -PathType Leaf) {
    . $localProfile
}
