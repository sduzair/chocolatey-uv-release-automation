$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.9.1/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '8dba20107ebcd38f3a8e4acfeb7b209d594e112a3be8d1cea69fe6d501a69fdf'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
