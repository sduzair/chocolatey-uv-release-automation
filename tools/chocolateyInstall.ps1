$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.5.13/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'c8a2e7e8bd87866fd1d52dbd4b4c0d85f328a6dcdeff17b85cc9c9af447ef3c3'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
