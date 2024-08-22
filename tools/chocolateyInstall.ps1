$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/v0.3.1/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs