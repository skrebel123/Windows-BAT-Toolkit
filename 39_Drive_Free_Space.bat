@echo off
title Drive Free Space
wmic logicaldisk get caption,size,freespace
echo.
pause
