$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.7.16/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = '409d19c14a9b1ce83bf7331dbda89984802efb3a2fbf9ffdf149b22ab9cf2826'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
