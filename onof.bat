@echo off
mode 80,45
title OneMenu by lintangtimur

cls
color 0a
echo.
echo Checking Permission..
goto checkPermission

:checkPermission
net session >nul 2>&1
if %errorlevel% == 0 (goto start) ELSE (goto exitRun)

:exitRun
color 0c
echo [*] Please run As Administrator
pause >nul
exit

:start
cls
echo OneMenu by lintangtimur
echo Author by jealno
echo [*] ACCESS GRANTED
echo.
goto checkservice

:main
echo.
echo =================================
echo [*] List Service
echo =================================
echo [*] Background Intelligent Transfer Service
echo [*] Delivery Optimization
echo [*] Windows Update
echo.
echo [1] On
echo [2] Off
set /p choice="Enter Menu [1/2]: "
if %choice%==1 (goto on)
if %choice%==2 (goto off)
else (goto error)

:error
msg * ERROR
goto start

:on
cls
sc config wuauserv start= auto
sc config dosvc start= auto
sc config bits start= auto
sc start wuauserv
sc start dosvc
sc start bits
pause
exit

:off
cls
sc stop wuauserv
sc stop dosvc
sc stop bits
sc config wuauserv start= disabled
sc config dosvc start= disabled
sc config bits start= disabled
pause
exit

:checkservice
sc query wuauserv | find "RUNNING"
if %errorlevel% GTR 0 (echo [*] Windows Update is NOT Running) ELSE (set wu=1)
sc query bits | find "RUNNING"
if %errorlevel% GTR 0 (echo [*] Background Intelligent Transfer Service is NOT Running) ELSE (set bi=1)
sc query dosvc | find "RUNNING"
if %errorlevel% GTR 0 (echo [*] Delivery Optimization is NOT Running) ELSE (set dos=1)
goto main