Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Invoke-WebRequest -Uri https://aka.ms/wsl-ubuntu-1804 -OutFile Ubuntu-1804.appx -UseBasicParsing
Rename-Item ~/Ubuntu-1804.appx Ubuntu-1804.zip
Expand-Archive ~/Ubuntu-1804.zip C:/Distros/Ubuntu-1804
C:/Distros/Ubuntu-1804/ubuntu1804.exe
Remove-Item ~/Ubuntu-1804.zip