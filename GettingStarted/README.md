# Getting Started

## Windows 10

### Enabling Powershell

PowerShell is a good way to getting to be used to get your windows computer setup for coding.

By default windows disables execution of scripts as a security measure. Therefore to use powershell scripts to setup your computer this functionality meeds to be enabled.

1. Press the "Windows" key
2. Type "powershell"
3. Press the "Right Cursor"
4. Locate "Run as Administrator"
5. Press "Return"
6. Locate the "Yes" button
7. Press "Return"

To enable powershell for the current logged in user only:
```powershell
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
```

To enable powersheel for all users logged in to the computer:
```powershell
Set-ExecutionPolicy Unrestricted -Scope LocalMachine -Force
```

### Installing Packages

In this directory there are an "install.ps1" script file along side an example "packages.txt" file.

The packages.txt file contains an example list of "chocolatey" packages to be installed on the computer.

Available packages can be found at [chocolatey.org](https://chocolatey.org/).

The install.ps1 script can be executed from powershell (as an administrator) to install all of the packages in the packages.txt file.

### Configuring Packages