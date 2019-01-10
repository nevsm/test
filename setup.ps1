Write-Host "Installing chocolatey..."
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
Write-Host "Installing extras..."
$command = @'
cmd /c "C:\ProgramData\chocolatey\choco.exe" install googlechrome discord visualstudiocode steam nodejs-lts yarn 7zip -y
'@

Invoke-Expression -Command:$command
