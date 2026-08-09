@echo off
title Show IP Address
echo ===== IP ADDRESS =====
ipconfig | findstr /i "IPv4 Default Gateway"
echo.
pause
