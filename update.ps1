import-Module chocolatey-au

function global:au_GetLatest {
    $releases = 'https://api.github.com/repos/astral-sh/uv/releases/latest'
    $json = Invoke-RestMethod -Uri $releases -Headers @{"Authorization" = "token $env:github_api_key"}
    $version = $json.tag_name.TrimStart('v')
    # Get the URL for the main zip file
    $url = $json.assets | Where-Object { $_.name -eq 'uv-x86_64-pc-windows-msvc.zip' } | Select-Object -ExpandProperty browser_download_url
    # Get the checksum URL
    $checksumUrl = $json.assets | Where-Object { $_.name -eq 'uv-x86_64-pc-windows-msvc.zip.sha256' } | Select-Object -ExpandProperty browser_download_url
    # Fetch the checksum value
    $checksumOutput = Invoke-RestMethod -Uri $checksumUrl -Headers @{"Authorization" = "token $env:github_api_key"}
    # Extract only the checksum from the output
    $checksum = $checksumOutput -split '\s+' | Select-Object -First 1  # Split by whitespace and take the first part
    
    # Return version, URL, and checksum
    return @{
        Version = $version
        URL64   = $url
        Checksum64 = $checksum.Trim()  # Trim any whitespace
    }
}

function global:au_SearchReplace {
    @{
        ".\tools\chocolateyInstall.ps1" = @{
            "(^[$]url64\s*=\s*)('.*')"      = "`$1'$($Latest.URL64)'"
            "(^[$]checksum64\s*=\s*)('.*')" = "`$1'$($Latest.Checksum64)'"
        }
    }
}

# Get the latest version
$Latest = au_GetLatest

# Update the package
update -ChecksumFor 64

# Output the version number for use in the workflow
$Latest.Version