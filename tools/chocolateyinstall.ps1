$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'scapple' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileType      = 'exe'

$validExitCodes= @(0, 3010, 1641)
$installerExe = 'Scapple-installer.exe'
$file = "$toolsDir\$installerExe"

$silentArgs    ='--unattendedmodeui none --mode unattended'     # silent

Install-ChocolateyInstallPackage $packageName $fileType $silentArgs $file -validExitCodes $validExitCodes
$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  #MSI
  validExitCodes= @(0, 3010, 1641)
  silentArgs    ='--unattendedmodeui minimal --mode unattended' # "/s /S /q /Q /quiet /silent /SILENT /VERYSILENT -s" # try any of these to get the silent installer

  # optional
  registryUninstallerKey = 'scapple' #ensure this is the value in the registry
  checksum      = ''
  checksumType  = 'md5' #default is md5, can also be sha1
  checksum64    = ''
  checksumType64= 'md5' #default is checksumType
}
