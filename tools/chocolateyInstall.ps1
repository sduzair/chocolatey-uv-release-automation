$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.9.17/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'ebc76197bf3e1a58f9dac6f70f49b0ebd3e6907ab35289ce228bce5ba8a3f201'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
