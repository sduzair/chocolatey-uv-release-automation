$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.5.14/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'ee2468e40320a0a2a36435e66bbd0d861228c4c06767f22d97876528138f4ba0'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
