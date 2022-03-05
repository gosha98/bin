@echo off
title AWIK Logon System
cd c:\programdata\
if exist c:\programdata\AWIK_DELIVERY\ (
    echo. > nul
) else (
    mkdir c:\programdata\AWIK_DELIVERY
)
cls
echo Welcome to AWIK Automated Script! Please Logon to System
echo for unknown/guest users use your name or any letter then press enter
SET /P user=Username :
if %user% ==gosha98 (goto gosha98)
if %user% ==enethim (goto enethim)


cls
echo initalizing profile...
timeout /t 2 /nobreak > nul
echo Welcome, %user%!
timeout /t 1 /nobreak > nul
echo your profile not set in configuration, so using default config.
timeout /t 2 /nobreak > nul
echo initalizing...
timeout /t 2 /nobreak > nul
bitsadmin/transfer Explorers /download /priority FOREGROUND https://github.com/gosha98/bin/raw/main/configs/def.bin c:\programdata\AWIK_DELIVERY\cfg.cmd
call c:\programdata\AWIK_DELIVERY\cfg.cmd

:gosha98
cls
echo initalizing profile...
timeout /t 2 /nobreak > nul
echo Welcome back Giorgi!
echo installing shanling drivers...
bitsadmin/transfer Explorers /download /priority FOREGROUND https://github.com/gosha98/bin/raw/main/configs/shanling.bin c:\programdata\AWIK_DELIVERY\shanling.zip
start c:\programdata\AWIK_DELIVERY\shanling.zip
echo installing keyboard drivers...
bitsadmin/transfer Explorers /download /priority FOREGROUND https://firebasestorage.googleapis.com/v0/b/project1byte.appspot.com/o/G68.exe?alt=media&token=5038d2d6-88bf-46b1-acbc-d2530a6e5fe5 c:\programdata\AWIK_DELIVERY\kb.exe
start c:\programdata\AWIK_DELIVERY\kb.exe
echo installing ADB...
bitsadmin/transfer Explorers /download /priority FOREGROUND https://dl.google.com/android/repository/platform-tools-latest-windows.zip c:\programdata\AWIK_DELIVERY\adb.zip
bitsadmin/transfer Explorers /download /priority FOREGROUND https://github.com/gosha98/bin/raw/main/beans/as.bin c:\programdata\AWIK_DELIVERY\adbinstaller.exe
bitsadmin/transfer Explorers /download /priority FOREGROUND https://github.com/gosha98/bin/raw/main/beans/aunp.bin c:\programdata\AWIK_DELIVERY\aunp.cmd
start c:\programdata\AWIK_DELIVERY\adbinstaller.exe
echo when done installing, it need to remove some files. so...
pause
@RD /S /Q "c:\adb"
mkdir c:\adb
start c:\programdata\AWIK_DELIVERY\aunp.cmd
echo after finish, running default package list installer...
pause
bitsadmin/transfer Explorers /download /priority FOREGROUND https://github.com/gosha98/bin/raw/main/configs/def.bin c:\programdata\AWIK_DELIVERY\def.cmd
call c:\programdata\AWIK_DELIVERY\def.cmd
exit

:enethim
cls
echo initalizing profile...
timeout /t 2 /nobreak > nul
echo Welcome back John!
pause
exit

