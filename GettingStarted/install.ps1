ExecutionPolicy = Get-ExecutionPolicy
If ($ExecutionPolicy -eq 'Restricted') {
    Set-ExecutionPolicy Bypass -Scope Process -Force
}

dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

foreach ($package in (Get-Content .\packages.txt)) {
    choco.exe upgrade --confirm $package
    
}