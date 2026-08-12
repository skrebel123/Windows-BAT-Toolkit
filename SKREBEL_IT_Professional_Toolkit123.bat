@echo off
setlocal EnableExtensions EnableDelayedExpansion
title SKREBEL IT - IT SUPPORT & NETWORK ENGINEER
color 0B
mode con: cols=92 lines=35

:MENU
cls
echo.
echo ================================================================================
echo.
echo                              SKREBEL IT
echo                       IT SUPPORT ^& NETWORK ENGINEER
echo.
echo ================================================================================
echo.
echo    [01] SYSTEM INFORMATION            [09] WINDOWS ADMINISTRATION
echo    [02] NETWORK TOOLS                 [10] PRINTER SUPPORT
echo    [03] WINDOWS TROUBLESHOOTING       [11] REMOTE SUPPORT
echo    [04] WINDOWS REPAIR                [12] SECURITY TOOLS
echo    [05] DISK ^& STORAGE               [13] WINDOWS SETTINGS
echo    [06] HARDWARE ^& DEVICES           [14] LOGS ^& DIAGNOSTICS
echo    [07] USER ^& ACCOUNT               [15] QUICK IT SUPPORT
echo    [08] SERVICES ^& PROCESSES         [16] EXIT
echo.
echo ================================================================================
echo    IT SUPPORT  ^|  NETWORK  ^|  WINDOWS  ^|  HARDWARE  ^|  SECURITY
echo ================================================================================
echo.
set "choice="
set /p "choice=    SELECT OPTION : "

if "%choice%"=="01" goto SYSTEM
if "%choice%"=="1" goto SYSTEM
if "%choice%"=="02" goto NETWORK
if "%choice%"=="2" goto NETWORK
if "%choice%"=="03" goto TROUBLE
if "%choice%"=="3" goto TROUBLE
if "%choice%"=="04" goto REPAIR
if "%choice%"=="4" goto REPAIR
if "%choice%"=="05" goto DISK
if "%choice%"=="5" goto DISK
if "%choice%"=="06" goto HARDWARE
if "%choice%"=="6" goto HARDWARE
if "%choice%"=="07" goto USERS
if "%choice%"=="7" goto USERS
if "%choice%"=="08" goto SERVICES
if "%choice%"=="8" goto SERVICES
if "%choice%"=="09" goto ADMIN
if "%choice%"=="9" goto ADMIN
if "%choice%"=="10" goto PRINTER
if "%choice%"=="11" goto REMOTE
if "%choice%"=="12" goto SECURITY
if "%choice%"=="13" goto SETTINGS
if "%choice%"=="14" goto LOGS
if "%choice%"=="15" goto QUICK
if "%choice%"=="16" goto EXIT
goto MENU

:SYSTEM
cls
echo ================================================================================
echo                         SKREBEL IT - SYSTEM INFORMATION
echo ================================================================================
echo.
echo    [01] System Information       [06] RAM Information
echo    [02] Windows Version          [07] Disk Information
echo    [03] Computer Name            [08] BIOS Information
echo    [04] IP Configuration         [09] Installed Drivers
echo    [05] CPU Information          [10] BACK
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" start "" msinfo32
if "%x%"=="2" start "" winver
if "%x%"=="3" hostname
if "%x%"=="4" ipconfig /all
if "%x%"=="5" powershell -NoProfile -Command "Get-CimInstance Win32_Processor | Select Name,NumberOfCores,MaxClockSpeed"
if "%x%"=="6" powershell -NoProfile -Command "Get-CimInstance Win32_PhysicalMemory | Select Manufacturer,Capacity,Speed"
if "%x%"=="7" powershell -NoProfile -Command "Get-CimInstance Win32_DiskDrive | Select Model,Size,Status"
if "%x%"=="8" powershell -NoProfile -Command "Get-CimInstance Win32_BIOS | Select Manufacturer,SMBIOSBIOSVersion"
if "%x%"=="9" driverquery
if "%x%"=="10" goto MENU
pause
goto SYSTEM

:NETWORK
cls
echo ================================================================================
echo                            SKREBEL IT - NETWORK TOOLS
echo ================================================================================
echo.
echo    [01] IP CONFIGURATION          [08] TRACERT
echo    [02] PING TEST                 [09] NSLOOKUP
echo    [03] DNS TEST                  [10] NETSTAT
echo    [04] FLUSH DNS                 [11] NETWORK RESET
echo    [05] ARP TABLE                 [12] BACK
echo    [06] ROUTING TABLE
echo    [07] NETWORK ADAPTER
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" ipconfig /all
if "%x%"=="2" ping 8.8.8.8
if "%x%"=="3" nslookup google.com
if "%x%"=="4" ipconfig /flushdns
if "%x%"=="5" arp -a
if "%x%"=="6" route print
if "%x%"=="7" start "" ncpa.cpl
if "%x%"=="8" tracert google.com
if "%x%"=="9" nslookup
if "%x%"=="10" netstat -ano
if "%x%"=="11" (
    netsh winsock reset
    netsh int ip reset
    ipconfig /flushdns
)
if "%x%"=="12" goto MENU
pause
goto NETWORK

:TROUBLE
cls
echo ================================================================================
echo                       SKREBEL IT - WINDOWS TROUBLESHOOTING
echo ================================================================================
echo.
echo    [01] TASK MANAGER              [07] SYSTEM PROPERTIES
echo    [02] DEVICE MANAGER            [08] SYSTEM RESTORE
echo    [03] EVENT VIEWER              [09] RELIABILITY MONITOR
echo    [04] SERVICES                  [10] PERFORMANCE MONITOR
echo    [05] COMPUTER MANAGEMENT       [11] RESOURCE MONITOR
echo    [06] DISK MANAGEMENT           [12] BACK
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" start "" taskmgr
if "%x%"=="2" start "" devmgmt.msc
if "%x%"=="3" start "" eventvwr.msc
if "%x%"=="4" start "" services.msc
if "%x%"=="5" start "" compmgmt.msc
if "%x%"=="6" start "" diskmgmt.msc
if "%x%"=="7" start "" sysdm.cpl
if "%x%"=="8" start "" rstrui.exe
if "%x%"=="9" start "" perfmon /rel
if "%x%"=="10" start "" perfmon
if "%x%"=="11" start "" resmon
if "%x%"=="12" goto MENU
pause
goto TROUBLE

:REPAIR
cls
echo ================================================================================
echo                           SKREBEL IT - WINDOWS REPAIR
echo ================================================================================
echo.
echo    [01] SFC SCAN                  [05] CHKDSK CHECK
echo    [02] DISM CHECKHEALTH          [06] COMPONENT CLEANUP
echo    [03] DISM SCANHEALTH           [07] RESTART EXPLORER
echo    [04] DISM RESTOREHEALTH        [08] BACK
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" sfc /scannow
if "%x%"=="2" DISM /Online /Cleanup-Image /CheckHealth
if "%x%"=="3" DISM /Online /Cleanup-Image /ScanHealth
if "%x%"=="4" DISM /Online /Cleanup-Image /RestoreHealth
if "%x%"=="5" chkdsk C:
if "%x%"=="6" DISM /Online /Cleanup-Image /StartComponentCleanup
if "%x%"=="7" (
    taskkill /f /im explorer.exe
    start explorer.exe
)
if "%x%"=="8" goto MENU
pause
goto REPAIR

:DISK
cls
echo ================================================================================
echo                            SKREBEL IT - DISK ^& STORAGE
echo ================================================================================
echo.
echo    [01] DISK MANAGEMENT           [05] OPTIMIZE DRIVES
echo    [02] DISK INFORMATION          [06] FREE SPACE
echo    [03] DRIVE CHECK               [07] BACK
echo    [04] DISK CLEANUP
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" start "" diskmgmt.msc
if "%x%"=="2" powershell -NoProfile -Command "Get-CimInstance Win32_DiskDrive | Select Model,Size,Status"
if "%x%"=="3" chkdsk C:
if "%x%"=="4" cleanmgr
if "%x%"=="5" start "" dfrgui
if "%x%"=="6" powershell -NoProfile -Command "Get-PSDrive -PSProvider FileSystem | Select Name,Used,Free"
if "%x%"=="7" goto MENU
pause
goto DISK

:HARDWARE
cls
echo ================================================================================
echo                         SKREBEL IT - HARDWARE ^& DEVICES
echo ================================================================================
echo.
echo    [01] DEVICE MANAGER            [06] BATTERY REPORT
echo    [02] HARDWARE INFORMATION      [07] DRIVER LIST
echo    [03] CPU INFORMATION           [08] DIRECTX DIAGNOSTIC
echo    [04] RAM INFORMATION           [09] BACK
echo    [05] BIOS INFORMATION
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" start "" devmgmt.msc
if "%x%"=="2" start "" msinfo32
if "%x%"=="3" powershell -NoProfile -Command "Get-CimInstance Win32_Processor | Select Name,NumberOfCores,MaxClockSpeed"
if "%x%"=="4" powershell -NoProfile -Command "Get-CimInstance Win32_PhysicalMemory | Select Manufacturer,Capacity,Speed"
if "%x%"=="5" powershell -NoProfile -Command "Get-CimInstance Win32_BIOS | Select Manufacturer,SMBIOSBIOSVersion"
if "%x%"=="6" powercfg /batteryreport
if "%x%"=="7" driverquery
if "%x%"=="8" start "" dxdiag
if "%x%"=="9" goto MENU
pause
goto HARDWARE

:USERS
cls
echo ================================================================================
echo                         SKREBEL IT - USER ^& ACCOUNT
echo ================================================================================
echo.
echo    [01] USER ACCOUNTS             [05] LOCAL GROUPS
echo    [02] COMPUTER MANAGEMENT       [06] GROUP POLICY
echo    [03] CURRENT USER              [07] BACK
echo    [04] LOGGED-IN USERS
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" start "" netplwiz
if "%x%"=="2" start "" compmgmt.msc
if "%x%"=="3" whoami
if "%x%"=="4" query user
if "%x%"=="5" net localgroup
if "%x%"=="6" start "" gpedit.msc
if "%x%"=="7" goto MENU
pause
goto USERS

:SERVICES
cls
echo ================================================================================
echo                      SKREBEL IT - SERVICES ^& PROCESSES
echo ================================================================================
echo.
echo    [01] SERVICES                  [04] TASK LIST
echo    [02] TASK MANAGER              [05] RESOURCE MONITOR
echo    [03] RUNNING PROCESSES         [06] BACK
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" start "" services.msc
if "%x%"=="2" start "" taskmgr
if "%x%"=="3" tasklist
if "%x%"=="4" tasklist /v
if "%x%"=="5" start "" resmon
if "%x%"=="6" goto MENU
pause
goto SERVICES

:ADMIN
cls
echo ================================================================================
echo                     SKREBEL IT - WINDOWS ADMINISTRATION
echo ================================================================================
echo.
echo    [01] COMPUTER MANAGEMENT       [06] TASK SCHEDULER
echo    [02] LOCAL SECURITY POLICY     [07] DEVICE MANAGER
echo    [03] GROUP POLICY              [08] DISK MANAGEMENT
echo    [04] REGISTRY EDITOR           [09] SYSTEM CONFIGURATION
echo    [05] SERVICES                  [10] BACK
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" start "" compmgmt.msc
if "%x%"=="2" start "" secpol.msc
if "%x%"=="3" start "" gpedit.msc
if "%x%"=="4" start "" regedit
if "%x%"=="5" start "" services.msc
if "%x%"=="6" start "" taskschd.msc
if "%x%"=="7" start "" devmgmt.msc
if "%x%"=="8" start "" diskmgmt.msc
if "%x%"=="9" start "" msconfig
if "%x%"=="10" goto MENU
pause
goto ADMIN

:PRINTER
cls
echo ================================================================================
echo                         SKREBEL IT - PRINTER SUPPORT
echo ================================================================================
echo.
echo    [01] PRINTERS ^& DEVICES        [04] RESTART SPOOLER
echo    [02] PRINTER FOLDER             [05] CLEAR PRINT QUEUE
echo    [03] PRINT SPOOLER              [06] BACK
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" start "" ms-settings:printers
if "%x%"=="2" start "" control printers
if "%x%"=="3" start "" services.msc
if "%x%"=="4" (
    net stop spooler
    net start spooler
)
if "%x%"=="5" (
    net stop spooler
    del /Q /F "%systemroot%\System32\spool\PRINTERS\*.*"
    net start spooler
)
if "%x%"=="6" goto MENU
pause
goto PRINTER

:REMOTE
cls
echo ================================================================================
echo                         SKREBEL IT - REMOTE SUPPORT
echo ================================================================================
echo.
echo    [01] REMOTE DESKTOP SETTINGS   [04] COMPUTER NAME
echo    [02] REMOTE DESKTOP CLIENT     [05] IP ADDRESS
echo    [03] QUICK ASSIST              [06] BACK
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" start "" ms-settings:remotedesktop
if "%x%"=="2" start "" mstsc
if "%x%"=="3" start "" ms-quick-assist:
if "%x%"=="4" hostname
if "%x%"=="5" ipconfig
if "%x%"=="6" goto MENU
pause
goto REMOTE

:SECURITY
cls
echo ================================================================================
echo                         SKREBEL IT - SECURITY TOOLS
echo ================================================================================
echo.
echo    [01] WINDOWS SECURITY          [05] WINDOWS UPDATE
echo    [02] FIREWALL                  [06] SECURITY POLICY
echo    [03] ADVANCED FIREWALL         [07] BACK
echo    [04] DEFENDER STATUS
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" start "" windowsdefender:
if "%x%"=="2" start "" firewall.cpl
if "%x%"=="3" start "" wf.msc
if "%x%"=="4" powershell -NoProfile -Command "Get-MpComputerStatus"
if "%x%"=="5" start "" ms-settings:windowsupdate
if "%x%"=="6" start "" secpol.msc
if "%x%"=="7" goto MENU
pause
goto SECURITY

:SETTINGS
cls
echo ================================================================================
echo                         SKREBEL IT - WINDOWS SETTINGS
echo ================================================================================
echo.
echo    [01] WINDOWS UPDATE            [06] ACCOUNTS
echo    [02] NETWORK SETTINGS          [07] PRIVACY
echo    [03] DISPLAY SETTINGS          [08] RECOVERY
echo    [04] BLUETOOTH                 [09] SYSTEM
echo    [05] APPS                      [10] BACK
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" start "" ms-settings:windowsupdate
if "%x%"=="2" start "" ms-settings:network
if "%x%"=="3" start "" ms-settings:display
if "%x%"=="4" start "" ms-settings:bluetooth
if "%x%"=="5" start "" ms-settings:appsfeatures
if "%x%"=="6" start "" ms-settings:accounts
if "%x%"=="7" start "" ms-settings:privacy
if "%x%"=="8" start "" ms-settings:recovery
if "%x%"=="9" start "" ms-settings:system
if "%x%"=="10" goto MENU
pause
goto SETTINGS

:LOGS
cls
echo ================================================================================
echo                       SKREBEL IT - LOGS ^& DIAGNOSTICS
echo ================================================================================
echo.
echo    [01] EVENT VIEWER              [04] RESOURCE MONITOR
echo    [02] RELIABILITY MONITOR       [05] SYSTEM INFORMATION
echo    [03] PERFORMANCE MONITOR       [06] DIRECTX DIAGNOSTIC
echo                                   [07] BACK
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" start "" eventvwr.msc
if "%x%"=="2" start "" perfmon /rel
if "%x%"=="3" start "" perfmon
if "%x%"=="4" start "" resmon
if "%x%"=="5" start "" msinfo32
if "%x%"=="6" start "" dxdiag
if "%x%"=="7" goto MENU
pause
goto LOGS

:QUICK
cls
echo ================================================================================
echo                         SKREBEL IT - QUICK IT SUPPORT
echo ================================================================================
echo.
echo    [01] FLUSH DNS                [07] TASK MANAGER
echo    [02] PING GOOGLE              [08] SERVICES
echo    [03] RESTART EXPLORER         [09] NETWORK CONNECTIONS
echo    [04] RESTART PRINT SPOOLER    [10] SFC SCAN
echo    [05] DEVICE MANAGER           [11] DISM REPAIR
echo    [06] EVENT VIEWER             [12] BACK
echo.
set "x="
set /p "x=    SELECT OPTION : "
if "%x%"=="1" ipconfig /flushdns
if "%x%"=="2" ping 8.8.8.8
if "%x%"=="3" (
    taskkill /f /im explorer.exe
    start explorer.exe
)
if "%x%"=="4" (
    net stop spooler
    net start spooler
)
if "%x%"=="5" start "" devmgmt.msc
if "%x%"=="6" start "" eventvwr.msc
if "%x%"=="7" start "" taskmgr
if "%x%"=="8" start "" services.msc
if "%x%"=="9" start "" ncpa.cpl
if "%x%"=="10" sfc /scannow
if "%x%"=="11" DISM /Online /Cleanup-Image /RestoreHealth
if "%x%"=="12" goto MENU
pause
goto QUICK

:EXIT
endlocal
exit /b
