﻿$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName    = 'wingide101'
  installerType  = 'exe'
  url            = 'https://wingware.com/pub/wing-101/8.0.1.0/wing-101-8.0.1.0.exe'
  checksum       = '6aee5bfe848902438af93fd05ebe76699f6a1643586bc80e5c8f562afb9a8522'
  checksumType   = 'sha256'
  silentArgs     = '/VERYSILENT'
  validExitCodes = @(0, 3010, 1641)
  softwareName   = 'WingIDE101'
  toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
}
Install-ChocolateyPackage @packageArgs
