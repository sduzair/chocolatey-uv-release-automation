$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.7.11/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '0f4ef69fde75bb8bcfba7ecf0a4134d8875578cd2e98c9fcfc21573e746c70ac'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
