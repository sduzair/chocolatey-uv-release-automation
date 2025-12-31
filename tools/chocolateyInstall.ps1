$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.9.21/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'd27952e73183ef8f6ee8c2a50cf8b3f2e08e01b6a9279a00a85cb261ea8d8337'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
