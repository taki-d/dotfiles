#Requires -Version 5.1
[CmdletBinding(SupportsShouldProcess)]
param()

$ErrorActionPreference = 'Stop'
if ($env:OS -ne 'Windows_NT') {
    throw 'This setup script requires Windows.'
}

$source = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '../pkgs/powershell')).ProviderPath
$documents = [Environment]::GetFolderPath('MyDocuments')
if ([string]::IsNullOrWhiteSpace($documents)) {
    throw 'Could not locate the user Documents directory.'
}

# Keep Modules and host-specific profiles in their existing directories.
$loader = ". (Join-Path `$PSScriptRoot 'dotfiles\profile.ps1')"
$plans = foreach ($edition in @('WindowsPowerShell', 'PowerShell')) {
    $directory = Join-Path $documents $edition
    $junction = Join-Path $directory 'dotfiles'
    $profile = Join-Path $directory 'profile.ps1'
    $existingLink = Get-Item -LiteralPath $junction -Force -ErrorAction SilentlyContinue
    if ($null -ne $existingLink) {
        if ($existingLink.LinkType -ne 'Junction' -or
            @($existingLink.Target).Count -ne 1 -or
            [string]@($existingLink.Target)[0] -ne $source) {
            throw "Existing path conflicts with setup: $junction. Move it aside and rerun."
        }
    }
    if (Test-Path -LiteralPath $profile) {
        if (-not (Test-Path -LiteralPath $profile -PathType Leaf) -or
            ([string](Get-Content -LiteralPath $profile -Raw)).Trim() -ne $loader) {
            throw "Existing profile conflicts with setup: $profile. Back it up and move it aside, or manually add: $loader"
        }
    }
    [PSCustomObject]@{
        Directory = $directory
        Junction = $junction
        Profile = $profile
        CreateJunction = $null -eq $existingLink
        CreateProfile = -not (Test-Path -LiteralPath $profile)
    }
}

# Validate both editions before making changes. Repeated runs are safe.
foreach ($plan in $plans) {
    if ($PSCmdlet.ShouldProcess($plan.Directory, 'Install shared PowerShell profile with a directory junction')) {
        New-Item -ItemType Directory -Path $plan.Directory -Force | Out-Null
        if ($plan.CreateJunction) {
            New-Item -ItemType Junction -Path $plan.Junction -Target $source | Out-Null
        }
        if ($plan.CreateProfile) {
            Set-Content -LiteralPath $plan.Profile -Value $loader -Encoding ASCII
        }
        Write-Host "Configured: $($plan.Profile)"
    }
}
