@echo off
title Battery Report
set "REPORT=%USERPROFILE%\Desktop\battery-report.html"
powercfg /batteryreport /output "%REPORT%"
echo.
echo Battery report saved to:
echo %REPORT%
start "" "%REPORT%"
pause
