@echo off
title ZB
mode con cols=100 lines=15
color 47
echo 

:0
cls
echo
echo ————修改文件名/添加序号/修改后缀————
echo.&echo 请输入文件夹的路径，或拖放文件夹到本窗口
set LJ=
set /p LJ=:
if /i "%LJ%"=="" goto 0

:1
set/p oSuf=输入要修改的文件后缀名:
if "%oSuf%"=="" goto 1

:2
set/p fileName=输入新的文件前名:
if "%fileName%"=="" goto 2

set/p eSuf=输入新的文件后缀(直接回车键 保持原格式后缀):
if "%eSuf%"=="" set eSuf=%oSuf%

setlocal EnableDelayedExpansion
set /a a=0

for %%i in ("%LJ%\*.%oSuf%") do ( 
set /a a+=1
echo %%i "修改为:" !fileName!!a!.%eSuf%
ren "%%i" "!fileName!!a!.%eSuf%"
)
echo 批量重命名完成

:judge
set /p o=打开文件夹查看? (Y):
if /i "%o%"=="y" goto yes
goto 0

:yes
start %LJ%
goto 0