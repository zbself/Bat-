@echo off
title Byller
mode con cols=50 lines=15
color 47
:0
cls
echo
echo ————后缀名不区分大小写，输入时不加 . ————

echo.&echo 请输入文件夹的路径，或拖放文件夹到本窗口
set LJ=
set /p LJ=:
if /i "%LJ%"=="" goto 0
:1
set q=
set /p q=输入要修改的后缀名:
if /i "%q%"=="" goto 1
set h=
:2
set /p h=输入修改后的后缀名:
if /i "%h%"=="" goto 2

for /r %LJ% %%i in (*.%q%) do ren %%i *.%h%
echo.&echo               后缀名已批量修改成功！

:judge
set /p o=打开文件夹查看? (Y):
if /i "%o%"=="y" goto yes
goto 0

:yes
start %LJ%
goto 0