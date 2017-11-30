@echo off
title Byller
mode con cols=50 lines=15
color 47
:0
cls
echo
echo ————删除某后缀文件 . ————

echo.&echo 请输入文件夹的路径，或拖放文件夹到本窗口
set LJ=
set /p LJ=:
if /i "%LJ%"=="" goto 0
:1
set q=
set /p q=输入要删除的文件后缀名:
if /i "%q%"=="" goto 1

:del
cd /d %LJ%
del /s *.%q%

echo.&echo            删除成功！

:judge
set /p o=		打开文件夹查看? (Y):
if /i "%o%"=="y" goto yes
goto 0

:yes
start %LJ%
goto 0