# WinRM'i etkinleştir
Enable-PSRemoting -Force

# WinRM yapılandırması
Set-Item WSMan:\localhost\Service\AllowUnencrypted $true
Set-Item WSMan:\localhost\Service\Auth\Basic $true
Set-Item WSMan:\localhost\Shell\MaxShellsPerUser 50
Set-Item WSMan:\localhost\Shell\MaxConcurrentUsers 10
