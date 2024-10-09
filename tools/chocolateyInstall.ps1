$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.4.20/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'f3a88e0d8a160b696fb4c838521142d2a766b6bd29915c5d5df1a2ddc531030b'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
