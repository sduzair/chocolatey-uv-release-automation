$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.11.29/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'a047d55651bc3e0ca24595b25ec4cfcb10f9dca9fb56514e661269b37d4fae68'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
