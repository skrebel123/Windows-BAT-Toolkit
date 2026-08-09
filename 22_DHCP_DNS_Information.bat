@echo off
title DHCP and DNS Information
ipconfig /all | findstr /i "DHCP Server DNS Servers"
echo.
pause
