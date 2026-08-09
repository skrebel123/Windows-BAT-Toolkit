@echo off
title Backup Desktop
set "DEST=%USERPROFILE%\Desktop\Desktop_Backup"
mkdir "%DEST%" 2>nul
robocopy "%USERPROFILE%\Desktop" "%DEST%" /E /XD "%DEST%" /R:1 /W:1
echo.
echo Desktop backup completed.
pause
