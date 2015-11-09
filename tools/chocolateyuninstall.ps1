$file="${Env:ProgramFiles(x86)}\Scapple\uninstall.exe"
$silentArgs    ='--unattendedmodeui none --mode unattended'     # silent

Uninstall-ChocolateyPackage 'scapple' 'exe' $silentArgs $file -validExitCodes @(0)
