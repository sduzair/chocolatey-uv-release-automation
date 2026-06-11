$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.11.20/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '4c281f1b6b9ccb14d9567ebde9a218a7cabfb35e5ffe8c1d4ef5e2821a655474'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
