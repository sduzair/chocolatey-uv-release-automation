$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.6.0/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '65836dae55d3a63e5fc1d51ae52e6ea175aaab1c82c4a6660d46462b27d19c2a'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
