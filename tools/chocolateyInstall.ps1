$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.11.17/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '35fc29e03e62f3cda769bc12773f3cb70ce305d0d36c0d8bd0c117dd0b3fcd14'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
