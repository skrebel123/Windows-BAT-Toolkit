@echo off
title Backup User Documents
set "DEST=%USERPROFILE%\Desktop\Documents_Backup"
mkdir "%DEST%" 2>nul
robocopy "%USERPROFILE%\Documents" "%DEST%" /E /R:1 /W:1
echo.
echo Backup completed: %DEST%
pause
