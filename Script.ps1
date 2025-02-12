# Align taskbar to left
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced -Name 'TaskbarAl' -Type 'DWord' -Value 0

# Enable dark mode
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0

# Disable transparency effects 
Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize -name 'EnableTransparency' -Type DWord -value 0

# Disable device and screen sleep 
powercfg /change standby-timeout-ac 0 
powercfg /change standby-timeout-dc 0 
powercfg /change monitor-timeout-ac 0 
powercfg /change monitor-timeout-dc 0

Stop-Process -Name explorer
