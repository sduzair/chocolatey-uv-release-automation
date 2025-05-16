$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.7.4/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '966d0dd8d86f02f94128714180cd5ff42cd2ea9b33b86fc197f25cfa066aaea1'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
