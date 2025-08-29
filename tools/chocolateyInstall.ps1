$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.8.14/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '3f68ab95d2856e6b238e0e3f4255a723ccdc2cf1d4b8e53f5a4f5a47b645dc72'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
