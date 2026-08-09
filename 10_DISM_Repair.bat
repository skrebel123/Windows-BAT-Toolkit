@echo off
title DISM Windows Image Repair
echo Run as Administrator.
DISM /Online /Cleanup-Image /RestoreHealth
echo.
pause
