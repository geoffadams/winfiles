$Advanced = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Write-Host "Applying configuration to Explorer..."
Set-ItemProperty $Advanced Hidden 1
Set-ItemProperty $Advanced HideFileExt 0
Set-ItemProperty $Advanced SeparateProcess 1
Set-ItemProperty $Advanced HideDrivesWithNoMedia 0
Set-ItemProperty $Advanced HideMergeConflicts 0
Set-ItemProperty $Advanced PersistBrowsers 1
Set-ItemProperty $Advanced NavPaneExpandToCurrentFolder 1
$CabinetState = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CabinetState"
Set-ItemProperty $CabinetState FullPath 1
Write-Host "Restarting explorer shell to apply registry changes"
Stop-Process -processname explorer