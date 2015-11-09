# Getting started
## Compiling Scapple
- Download `Scapple-installer.exe` (Scapple for Windows) from https://www.literatureandlatte.com/scapple.php
- Place `Scapple-installer.exe` into the `tools/` directory of this repository.
- From the top directory, run `choco pack scapple.nuspec`
- The nupkg file will be generated into the top level directory.

## Installing Scapple
From an Adminstrator console:
```
choco install -y scapple.1.0.0.0.nupkg
```  
 

## Uninstalling Scapple
From an Adminstrator console:
```
choco uninstall -y scapple
```  
 

