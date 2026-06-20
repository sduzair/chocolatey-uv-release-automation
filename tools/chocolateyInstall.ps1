$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.11.23/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '02ad29f07e674d68726ba3bb1ff25b335d83515756e2b1a194bb56c3cc30e07c'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
