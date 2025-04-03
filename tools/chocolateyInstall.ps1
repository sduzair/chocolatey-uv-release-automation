$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.6.12/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '30fdf26c209f0cb7c97d3b08a26ab4e78ce5ae0e031b88798cbaccc0f24f452b'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
