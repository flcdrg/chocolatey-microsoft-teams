$ErrorActionPreference = 'Stop';

$packageName= 'microsoft-teams'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://statics.teams.microsoft.com/production-windows/1.0.00.6903/Teams_windows.exe'
$url64      = 'https://statics.teams.microsoft.com/production-windows-x64/1.0.00.6903/Teams_windows_x64.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'EXE'
  url           = $url
  url64bit      = $url64

  softwareName  = 'microsoft-teams*'

  checksum      = 'F2A7C0DC2497D0BFCE6955DBE7999B05654216742BB3FC126958F0A1ADDDA2E8'
  checksumType  = 'sha256'
  checksum64    = '08F034A08BB826A5E3217E5487593F95399BEBD69DBB9C5514A5C59E3A922CFF'
  checksumType64= 'sha256'

  silentArgs    = "-s"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs