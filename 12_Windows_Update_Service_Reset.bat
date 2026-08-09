@echo off
title Windows Update Cache Reset
echo Run as Administrator.
net stop wuauserv
net stop bits
net stop cryptsvc
ren "%windir%\SoftwareDistribution" SoftwareDistribution.old
ren "%windir%\System32\catroot2" catroot2.old
net start cryptsvc
net start bits
net start wuauserv
echo.
echo Windows Update cache reset completed.
pause
