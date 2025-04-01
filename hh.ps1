# Disable Internet Explorer
Disable-WindowsOptionalFeature -FeatureName Internet-Explorer-Optional-amd64 -Online -NoRestart

# Download a file to the Desktop
$DesktopPath = [System.Environment]::GetFolderPath('Desktop')
Invoke-WebRequest -Uri "YOUR_FILE_URL" -OutFile "$DesktopPath\FILENAME"

# Install Docker
Invoke-WebRequest -Uri "https://desktop.docker.com/win/main/amd64/Docker%20Desktop%20Installer.exe" -OutFile "C:\DockerInstaller.exe"
Start-Process -FilePath "C:\DockerInstaller.exe" -ArgumentList "/quiet" -Wait

# Wait for installation to complete before proceeding
Start-Sleep -Seconds 60

# Restart VM to apply changes
Restart-Computer -Force
