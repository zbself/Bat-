@echo off
title Byller
mode con cols=50 lines=15
color 47
:0
cls
echo
echo ��������ɾ��ĳ��׺�ļ� . ��������

echo.&echo �������ļ��е�·�������Ϸ��ļ��е�������
set LJ=
set /p LJ=:
if /i "%LJ%"=="" goto 0
:1
set q=
set /p q=����Ҫɾ�����ļ���׺��:
if /i "%q%"=="" goto 1

:del
cd /d %LJ%
del /s *.%q%

echo.&echo            ɾ���ɹ���

:judge
set /p o=		���ļ��в鿴? (Y):
if /i "%o%"=="y" goto yes
goto 0

:yes
start %LJ%
goto 0