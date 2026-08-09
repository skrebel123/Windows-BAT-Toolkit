@echo off
title Temp File Cleanup
echo Cleaning temporary files...
del /q /f /s "%TEMP%\*" >nul 2>&1
for /d %%D in ("%TEMP%\*") do rd /s /q "%%D" >nul 2>&1
echo.
echo Temp cleanup completed.
pause
