@echo off
title ZB
mode con cols=100 lines=15
color 47
echo 

:0
cls
echo
echo ���������޸��ļ���/������/�޸ĺ�׺��������
echo.&echo �������ļ��е�·�������Ϸ��ļ��е�������
set LJ=
set /p LJ=:
if /i "%LJ%"=="" goto 0

:1
set/p oSuf=����Ҫ�޸ĵ��ļ���׺��:
if "%oSuf%"=="" goto 1

:2
set/p fileName=�����µ��ļ�ǰ��:
if "%fileName%"=="" goto 2

set/p eSuf=�����µ��ļ���׺(ֱ�ӻس��� ����ԭ��ʽ��׺):
if "%eSuf%"=="" set eSuf=%oSuf%

setlocal EnableDelayedExpansion
set /a a=0

for %%i in ("%LJ%\*.%oSuf%") do ( 
set /a a+=1
echo %%i "�޸�Ϊ:" !fileName!!a!.%eSuf%
ren "%%i" "!fileName!!a!.%eSuf%"
)
echo �������������

:judge
set /p o=�����������������ļ��в鿴? (Y):
if /i "%o%"=="y" goto yes
goto 0

:yes
start %LJ%
goto 0