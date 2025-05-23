$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.7.7/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'a27a1fdf3f6b850dfb45fb009f7ea0fe3db1a59f692ebdc64c24ff8dbd0467d1'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
