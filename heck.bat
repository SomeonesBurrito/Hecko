@echo off 
title Hecker lol
color 05
set /p pass="Enter password: "
if "%pass%" NEQ "jfk" exit
:menu
cls
echo **********************
echo         MENU
echo **********************
echo. 
echo.
echo 1) List Users On Computer
echo 2) Create a New Users
echo 3) Change a Users password
echo 4) Make a admin account
echo 5) Shut Down in a while
echo 6) Hide A folder
echo 7) Reveal hidden folders
echo 8) Bug Checker
echo 9) RPG Game
echo 10) Ip Info
echo 11) Encrypt Folder
echo 12) Change text colour (In Development)
echo 13) Leave Batch
echo.
set /p input="WYPHER: "

if %input% EQU 1 (
    cls
    net user
    pause
    cls
    goto menu
)
if %input% EQU 2 (
    cls
    set /p username="Enter a username: "
    set /p password="Enter a password: "
    net user %username% %password% /add
    pause
    cls
    goto menu
)
if %input% EQU 3 (
    cls
    set /p username="Enter a username: "
    set /p password="Enter a password: " 
    net user %username% %password% 
    pause
    cls
    goto menu
)
if %input% EQU 4 (
    cls
    set /p username="Enter a username: "
    set /p password="Enter a password: "
    net user %username% %password% /add
    net localgroup administrators %username% /add
    pause
    cls
    goto menu
)
if %input% EQU 5 (
    cls
    set /p timeamount="Enter a time amount: "
    shutdown /s /t %timeamount%
    pause
    cls
    goto menu
)
if %input% EQU 6 (
    cls
    set /p foldername="What is folder location: "
    Attrib +h +s +r %foldername%
    pause
    cls
    goto menu
)
if %input% EQU 7 (
    cls
    dir /AH
    pause
    cls
    goto menu
)
if %input% EQU 8 (
    cls
    sfc /scannow
    pause
    cls
    goto menu
)
if %input% EQU 9 (
    cls
    telnet ateraan.com 4002
    pause
    cls
    goto menu
)
if %input% EQU 10 (
    cls
    ipconfig /all
    pause
    cls
    goto menu
)
if %input% EQU 11 (
    cls
    set /p foldername="What is folder location: "
    cd %foldername%
    Cipher /E
    pause
    cls
    goto menu
)
if %input% EQU 12(
    cls
    echo 1) White
    echo 2) Red
    echo 3) Green
    echo 4) Purple
    echo 5) Grey
    echo 6) Yellow
    echo 7) Aqua
    set /p colortype="What colour: "
    if %colortype% EQU 1 (
        color 07
    ) else if %colortype% EQU 2 (
        color 04
    ) else if %colortype% EQU 3 (
        color 02
    ) else if %colortype% EQU 4 (
        color 05
    ) else if %colortype% EQU 5 (
        color 08
    ) else if %colortype% EQU 6 (
        color 06
    ) else if %colortype% EQU 7 (
        color 03
    )
    pause
    cls
    goto menu
    
)
if %input% EQU 13 (
    exit
)