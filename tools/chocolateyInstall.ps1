$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.9.14/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '7ca7a43da656d9c5fd4b40ce6e8de19bc46d51e026c9dfd4909c1bc8b25f88bc'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
