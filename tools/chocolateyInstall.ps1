$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.8.9/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'b08d68a0d86e4d0d1b5fa439ffa73ac90df2305c595f617ba9d9b5e8740a8efb'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
