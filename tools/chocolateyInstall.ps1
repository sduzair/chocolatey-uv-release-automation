$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.6.2/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '5f33c3cc5c183775cc51b3e661a0d2ce31142d32a50406a67c7ad0321fc841d9'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
