# URL of the Google Drive file
$url = "https://github.com/RadYio/RTK/raw/refs/heads/main/AmongUs.wav"

# Destination path for the file
$destinationPath = "C:\Windows\Media\CustomUSBConnect.wav"

# Download the file
Invoke-WebRequest -Uri $url -OutFile $destinationPath

# Registry path for the USB connection sound
$registryPath = "HKCU:\AppEvents\Schemes\Apps\.Default\DeviceConnect\.Current"

# Set the downloaded sound file as the new sound
Set-ItemProperty -Path $registryPath -Name "(default)" -Value $destinationPath
