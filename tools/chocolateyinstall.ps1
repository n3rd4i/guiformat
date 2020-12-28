$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://ridgecrop.co.uk/guiformat-x64.Exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$(Join-Path $toolsDir 'guiformat.exe')"
  url           = $url
  softwareName  = 'guiformat*'
  checksum      = '13D045F582D559C830F2E30F835AC56803844825FE6152D2D5F78367B19EDB9A'
  checksumType  = 'sha256'
}
Get-ChocolateyWebFile @packageArgs
