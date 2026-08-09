@echo off
title Network Adapter Reset
echo Available adapters:
netsh interface show interface
echo.
set /p "ADAPTER=Enter exact adapter name to reset: "
netsh interface set interface name="%ADAPTER%" admin=disabled
timeout /t 2 /nobreak >nul
netsh interface set interface name="%ADAPTER%" admin=enabled
echo.
echo Adapter reset attempted.
pause
