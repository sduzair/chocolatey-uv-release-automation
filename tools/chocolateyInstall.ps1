$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.13.8/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '529e78a9cec6cd7e3e014f7ecd8bda0c113969d4ed0f2efeedb85c30943325b8'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
