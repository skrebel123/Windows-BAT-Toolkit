@echo off
title Create System Restore Point
echo Run as Administrator.
powershell -NoProfile -ExecutionPolicy Bypass -Command "Checkpoint-Computer -Description 'Manual Restore Point' -RestorePointType 'MODIFY_SETTINGS'"
echo.
pause
