$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.10.10/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'd31a30f1dfb96e630a08d5a9b3f3f551254b7ed6e9b7e495f46a4232661c7252'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
