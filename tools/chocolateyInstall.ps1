$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.4.25/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'c5c7fa084ae4e8ac9e3b0b6c4c7b61e9355eb0c86801c4c7728c0cb142701f38'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
