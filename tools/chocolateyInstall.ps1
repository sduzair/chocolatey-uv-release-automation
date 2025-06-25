$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.7.15/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'b78c2d265e74b21b1c04b5b4ffd61c5c7b8110f9188e24949ee9f6fd5fbaf0a8'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
