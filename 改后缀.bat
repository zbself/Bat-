@echo off
title Byller
mode con cols=50 lines=15
color 47
:0
cls
echo
echo ����������׺�������ִ�Сд������ʱ���� . ��������

echo.&echo �������ļ��е�·�������Ϸ��ļ��е�������
set LJ=
set /p LJ=:
if /i "%LJ%"=="" goto 0
:1
set q=
set /p q=����Ҫ�޸ĵĺ�׺��:
if /i "%q%"=="" goto 1
set h=
:2
set /p h=�����޸ĺ�ĺ�׺��:
if /i "%h%"=="" goto 2

for /r %LJ% %%i in (*.%q%) do ren %%i *.%h%
echo.&echo               ��׺���������޸ĳɹ���

:judge
set /p o=�����������������ļ��в鿴? (Y):
if /i "%o%"=="y" goto yes
goto 0

:yes
start %LJ%
goto 0