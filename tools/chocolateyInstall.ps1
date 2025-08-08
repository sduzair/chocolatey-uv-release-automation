$ErrorActionPreference = 'Stop'

$packageName = 'uv'
$url64 = 'https://github.com/astral-sh/uv/releases/download/0.8.6/uv-x86_64-pc-windows-msvc.zip'

$checksum64 = 'f7ed402ea1e4d7fb2b2490e1a097e9849bfdaaa689521d290bdce5478db0428f'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= 'sha256'
}

Install-ChocolateyZipPackage @packageArgs
