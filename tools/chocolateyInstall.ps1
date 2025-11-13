$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.9.9/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'b1c5d78c5cb6804e556e07eeafbcdea7378107c2bd5c342dea0cdc05a607d8e5'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
