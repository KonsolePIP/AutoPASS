@echo off
mode 87, 21
chcp 65001
color 4

SETLOCAL EnableDelayedExpansion
echo.
Call :ColorText 9 "   #####    ##    ##### ##### ####  #### #  "
echo.
Call :ColorText 9 "  #   #   #  #   #     #     #   # #___ #   "
echo.
Call :ColorText 9 " #####  ######  ----# ----# #   # #    #    "
echo.
Call :ColorText 9 "#     #      # ##### ##### ####  #### ##### "
echo.
echo.
echo ========================
echo = Você tem certeza que =
echo =       ================================
echo = Queira deletar todas as suas senhas? =
echo ========================================
echo.
echo [1] - Sim
echo [2] - Não
set /p op= [?] - Numero: 

if %op% equ 1 goto DEL
if %op% equ 2 goto EXIT

:DEL
echo.
echo Deletando Arquivos...
echo =========================
echo = /////////////// = 00% =
echo =========================
ping 1.1.1.1 -n 1 -w 500 >nul
cls 
echo Deletando Arquivos...
echo =========================
echo = \\\//////////// = 11% =
echo =========================
ping 1.1.1.1 -n 1 -w 300 >nul
cls
echo.
del %temp%\senhas.txt
echo Deletando Arquivos...
echo =========================
echo = \\\\\////////// = 20% =
echo =========================
ping 1.1.1.1 -n 1 -w 700 >nul
cls
echo.
echo Deletando Arquivos...
echo =========================
echo = \\\\\\\\/////// = 55% =
echo =========================
ping 1.1.1.1 -n 1 -w 1000 >nul
cls
echo.
echo Deletando Arquivos...
echo =========================
echo = \\\\\\\\\\\//// = 70% =
echo =========================
ping 1.1.1.1 -n 1 -w 755 >nul
cls
echo.
del %temp%\senhas1.txt
echo Deletando Arquivos...
echo =========================
echo = \\\\\\\\\\\\\\/ = 99% =
echo =========================
ping 1.1.1.1 -n -w 2000 >nul
cls
echo.
echo Arquivos Deletados!
echo ==========================
echo = \\\\\\\\\\\\\\\ = 100% =
echo ==========================
del %temp%\senhas2.txt
pause
exit

:EXIT
:ColorText
@echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
