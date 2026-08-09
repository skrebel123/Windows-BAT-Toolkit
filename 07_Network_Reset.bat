@echo off
title Network Reset
echo Run this file as Administrator.
netsh winsock reset
netsh int ip reset
ipconfig /flushdns
echo.
echo Network reset commands completed.
echo Restart Windows now.
pause
