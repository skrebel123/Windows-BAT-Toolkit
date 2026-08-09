@echo off
title Power Efficiency Report
set "REPORT=%USERPROFILE%\Desktop\energy-report.html"
powercfg /energy /output "%REPORT%"
echo.
echo Energy report saved to:
echo %REPORT%
pause
