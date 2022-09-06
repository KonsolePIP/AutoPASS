@echo off
set ztmp=C:\Users\joaov\AppData\Local\Temp\ytmp
set MYFILES=C:\Users\joaov\AppData\Local\Temp\afolder
set bfcec=autopass.exe
set cmdline=
SHIFT /0
@echo off
mode 87, 21
chcp 65001
color 4
title AutoPASS v0.0.3

@echo off


for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do set "DEL=%%a"

SETLOCAL EnableDelayedExpansion
:Menu
color 4
cls
echo.
echo Computador: %computername%  Nome: %username%
echo.
echo.
Call :ColorText 9 "    ##    #   # ####### ###### #####    ##    ##### #####"
echo.
Call :ColorText 9 "   #  #   #   #   # #   #    # #   #   #  #   #     #    "
echo.
Call :ColorText 9 "  ######  #   #   # #   #    # #####  ######  ----# ----#"
echo.
Call :ColorText 9 " #      # #####   # #   ###### #     #      # ##### #####"
echo.
echo.
echo =====================
echo = Oque você deseja? =
echo =====================
echo.
echo [1] - Criar senhas
echo [2] - Ver senhas
echo [3] - Abrir arquivo
set /p op=Numero: 

if %op% equ 1 goto OP1
if %op% equ 2 goto SOC
if %op% equ 3 goto SOC1

:SOC1
color 4
cls
echo.
echo.
echo.
Call :ColorText 9 "    ##    #   # ####### ###### #####    ##    ##### #####"
echo.
Call :ColorText 9 "   #  #   #   #   # #   #    # #   #   #  #   #     #    "
echo.
Call :ColorText 9 "  ######  #   #   # #   #    # #####  ######  ----# ----#"
echo.
Call :ColorText 9 " #      # #####   # #   ###### #     #      # ##### #####"
echo.
echo.
echo ==================
echo = Sem ou com "-" =
echo =    =============
echo = Ou com nome? =
echo ================
echo.
echo [1] - Sem
echo [2] - Com
echo [3] - Com nome
set /p op=Numero: 

if %op% equ 1 goto SEM2
if %op% equ 2 goto COM2
if %op% equ 3 goto NCOM3


:SEM2
start %temp%\senhas.txt
pause
goto Menu

:COM2
start %temp%\senhas1.txt
pause
goto Menu

:NCOM3
start %temp%\senhas2.txt
pause
goto Menu

:SOC
color 4
cls
echo.
echo.
echo.
Call :ColorText 9 "    ##    #   # ####### ###### #####    ##    ##### #####"
echo.
Call :ColorText 9 "   #  #   #   #   # #   #    # #   #   #  #   #     #    "
echo.
Call :ColorText 9 "  ######  #   #   # #   #    # #####  ######  ----# ----#"
echo.
Call :ColorText 9 " #      # #####   # #   ###### #     #      # ##### #####"
echo.
echo.
echo ==============================
echo = Nome especifico na frente? =
echo =       ======================
echo = Ou com "-"? =
echo ===============
echo.
echo [1] - Sem
echo [2] - Com
echo [3] - Com Nome
set /p op=Numero: 

if %op% equ 1 goto OP2
if %op% equ 2 goto OP3



:OP4
cls
color 9
echo.
Call :ColorText 9 "   #    #####    ##    ####  ## ##   # ####"
echo.
Call :ColorText 9 "  #    #   #   #  #   #   # ## # #  # #    "
echo.
Call :ColorText 9 " #    #   #  ######  #   # ## #  # # # --# "
echo.
Call :ColorText 9 "#### ##### #      # ####  ## #   ## #####ooo"
ping 1.1.1.1 -n 5 -w 4500 >nul
echo.
echo.
echo.
type %temp%\senhas2.txt
echo.
Call :ColorText 0D "[Pressione qualquer tecla para continuar...]"
echo.
pause>nul
goto Menu


:OP2
cls
color 9
echo.
Call :ColorText 9 "   #    #####    ##    ####  ## ##   # ####"
echo.
Call :ColorText 9 "  #    #   #   #  #   #   # ## # #  # #    "
echo.
Call :ColorText 9 " #    #   #  ######  #   # ## #  # # # --# "
echo.
Call :ColorText 9 "#### ##### #      # ####  ## #   ## #####ooo"
ping 1.1.1.1 -n 5 -w 4500 >nul
echo.
echo.
echo.
type %temp%\senhas1.txt
echo.
Call :ColorText 0D "[Pressione qualquer tecla para continuar...]"
echo.
pause>nul
goto Menu

:OP3
cls
color 9
echo.
Call :ColorText 9 "   #    #####    ##    ####  ## ##   # ####"
echo.
Call :ColorText 9 "  #    #   #   #  #   #   # ## # #  # #    "
echo.
Call :ColorText 9 " #    #   #  ######  #   # ## #  # # # --# "
echo.
Call :ColorText 9 "#### ##### #      # ####  ## #   ## #####ooo"
ping 1.1.1.1 -n 5 -w 4500 >nul
echo.
echo.
echo.
type %temp%\senhas.txt
echo.
Call :ColorText 0D "[Pressione qualquer tecla para continuar...]"
echo.
pause>nul
goto Menu

:COMN1
cls
echo.
Call :ColorText 9 "   ##    #   # ####### ###### #####    ##    ##### #####"
echo.
Call :ColorText 9 "  #  #   #   #   # #   #    # #   #   #  #   #     #    "
echo.
Call :ColorText 9 " ######  #   #   # #   #    # #####  ######  ----# ----#"
echo.
Call :ColorText 9 "#      # #####   # #   ###### #     #      # ##### #####"
echo.
echo.
echo ======================
echo = Insira o nome aqui =
echo ======================
echo.
set /p nome= [?] - Nome: 
if %nome% neq "" goto NOME1

:NOME1
echo %nome%%random%%random%%random% >> %temp%\senhas2.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %nome%%random%%random%%random% >> %temp%\senhas2.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %nome%%random%%random%%random% >> %temp%\senhas2.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %nome%%random%%random%%random% >> %temp%\senhas2.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %nome%%random%%random%%random% >> %temp%\senhas2.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %nome%%random%%random%%random% >> %temp%\senhas2.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %nome%%random%%random%%random% >> %temp%\senhas2.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %nome%%random%%random%%random% >> %temp%\senhas2.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %nome%%random%%random%%random% >> %temp%\senhas2.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %nome%%random%%random%%random% >> %temp%\senhas2.txt
ping 1.1.1.1 -n 1 -w 500 >nul
pause
goto Menu


:OP1
cls
echo.
Call :ColorText 9 "   ##    #   # ####### ###### #####    ##    ##### #####"
echo.
Call :ColorText 9 "  #  #   #   #   # #   #    # #   #   #  #   #     #    "
echo.
Call :ColorText 9 " ######  #   #   # #   #    # #####  ######  ----# ----#"
echo.
Call :ColorText 9 "#      # #####   # #   ###### #     #      # ##### #####"
echo.
echo.
echo ==============================
echo = Nome especifico na frente? =
echo =       ======================
echo = Ou com "-"? =
echo ===============
echo [1] - Sem
echo [2] - Com
echo [3] - Nome especifico

set /p op2=Numero: 

if %op2% equ 1 goto SEM
if %op2% equ 2 goto COM
if %op2% equ 3 goto COMN1



:COM
echo %random%-%random%-%random% >> %temp%\senhas1.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%-%random%-%random% >> %temp%\senhas1.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%-%random%-%random% >> %temp%\senhas1.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%-%random%-%random% >> %temp%\senhas1.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%-%random%-%random% >> %temp%\senhas1.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%-%random%-%random% >> %temp%\senhas1.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%-%random%-%random% >> %temp%\senhas1.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%-%random%-%random% >> %temp%\senhas1.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%-%random%-%random% >> %temp%\senhas1.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%-%random%-%random% >> %temp%\senhas1.txt
ping 1.1.1.1 -n 1 -w 500 >nul
pause
goto Menu



:SEM
cls
echo %random%%random%%random% >> %temp%\senhas.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%%random%%random% >> %temp%\senhas.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%%random%%random% >> %temp%\senhas.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%%random%%random% >> %temp%\senhas.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%%random%%random% >> %temp%\senhas.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%%random%%random% >> %temp%\senhas.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%%random%%random% >> %temp%\senhas.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%%random%%random% >> %temp%\senhas.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%%random%%random% >> %temp%\senhas.txt
ping 1.1.1.1 -n 1 -w 500 >nul
echo %random%%random%%random% >> %temp%\senhas.txt
ping 1.1.1.1 -n 1 -w 500 >nul
pause
goto Menu



:ColorText
@echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1



