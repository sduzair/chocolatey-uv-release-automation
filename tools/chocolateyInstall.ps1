$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.8.20/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'e2aa89b78f0a0fa7cbf9d42508c7a962bda803425d8ec3e9cf7a69fb00cf6791'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
