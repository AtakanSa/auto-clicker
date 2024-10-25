# Python yükleme için gerekli URL
$pythonInstaller = "https://www.python.org/ftp/python/3.10.0/python-3.10.0-amd64.exe"

# Python'u indirin
Invoke-WebRequest -Uri $pythonInstaller -OutFile "C:\Temp\python-installer.exe"

# Python'u yükleyin (quiet modda)
Start-Process "C:\Temp\python-installer.exe" -ArgumentList "/quiet InstallAllUsers=1 PrependPath=1" -Wait

# Temizlik
Remove-Item "C:\Temp\python-installer.exe"
