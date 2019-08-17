$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www.ridgecrop.demon.co.uk/guiformat.exe'
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = "$(Join-Path $toolsDir 'guiformat.exe')"
  url           = $url
  softwareName  = 'guiformat*'
  checksum      = '647FB4F5108AF632C3D52FEC34934922C50C70585697504E92FB80B3B7D05EE3'
  checksumType  = 'sha256'
}
Get-ChocolateyWebFile @packageArgs
