$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.9.26/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'eb02fd95d8e0eed462b4a67ecdd320d865b38c560bffcda9a0b87ec944bdf036'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
