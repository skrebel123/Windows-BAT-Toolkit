@echo off
title Kill Process
set /p "PROC=Enter process name (example: notepad.exe): "
taskkill /f /im "%PROC%"
echo.
pause
