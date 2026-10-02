$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.12.22/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'ea1397797a0ca15f63516dd0f49c2dde9776db9be5861cab152ebe8ad199894d'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
