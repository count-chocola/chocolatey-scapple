## Vat?
These files are ~~vat's~~ what's needed to locally package the lovely organization program [Scapple](https://www.literatureandlatte.com/scapple.php) for use with the [Chocolatey NuGet](https://chocolatey.org/) package manager.

## Vhy?_
Because:
- Attended installations on Windows suck _(ah. ah. ahhh…)_.
- You want to manage your PC using [Puppet](https://puppetlabs.com/presentations/puppet-windows-now-youre-getting-chocolatey) and a privately-hosted [Chocolatey Server](https://github.com/chocolatey/choco/wiki/How-To-Host-Feed).
- Local packaging is the best you can do with chocolatey and commerical software.
  - You don't have wider distribution rights, even if it's shareware.
  - Chocolatey's most popular automatic packaging method's [license](http://realdimensions.net/licenses/chocolateypackageupdater/license.txt) requires you to purchase a license for private use.

## Getting started
### Compiling Scapple
- Download `Scapple-installer.exe` (Scapple for Windows) from https://www.literatureandlatte.com/scapple.php
- Place `Scapple-installer.exe` into the `tools/` directory of this repository.
- From the top directory, run `choco pack scapple.nuspec`
- The nupkg file will be generated into the top level directory.

### Installing Scapple
From an Adminstrator console:
```
choco install -y scapple.1.0.0.0.nupkg
```  
 
### Uninstalling Scapple
From an Adminstrator console:
```
choco uninstall -y scapple
```  
 

