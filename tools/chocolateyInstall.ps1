$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.5.7/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'cb2aea0d8f85ffe1c4e2a431cbbd6e5c8faeb732e7cf8e4bee1c10b7779e7352'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
