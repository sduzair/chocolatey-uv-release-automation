$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.8.12/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '3fb92ce0860db7cb094ddeeb1ac521532fdd3e61d0a130f7bbc6be54caca7c2e'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
