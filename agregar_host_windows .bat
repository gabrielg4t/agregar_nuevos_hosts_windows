@echo off
COLOR 0A
MODE con:cols=60 lines=20

cls
echo ������������������������������������������ͻ
echo   HOSTS WINDOWS
echo ��������������������������������������������
echo �                                          �
echo �                                          �
echo �        Agregando Nuevo Host              �
echo �                                          �
echo �  Cambiando atributos:                    �
echo �  %WINDIR%\system32\drivers\etc\hosts     �
echo �                                          �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]

attrib -r %WINDIR%\system32\drivers\etc\hosts
timeout -t 2 >> nul


cls
echo ������������������������������������������ͻ
echo   HOSTS WINDOWS
echo ��������������������������������������������
echo �                                          �
echo �                                          �
echo �        Agregando Nuevo Host              �
echo �                                          �
echo �  Detectando el path del HOSTS ...        �
echo �  Agregando nuevas lineas ...             �
echo �                                          �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]

IF "%OS%"=="Windows_NT" (
SET HOSTFILE=%windir%\system32\drivers\etc\hosts
) ELSE (
SET HOSTFILE=%windir%\hosts
)
ECHO 127.0.0.1 http://www.driver-soft.com>> %HOSTFILE%
ECHO 127.0.0.1 www.driver-soft.com>> %HOSTFILE%

timeout -t 2 >> nul


cls
echo ������������������������������������������ͻ
echo   HOSTS WINDOWS
echo ��������������������������������������������
echo �                                          �
echo �                                          �
echo �        Agregando Nuevo Host              �
echo �                                          �
echo �  Cambiando atributos de solo lectura:    �
echo �  %WINDIR%\system32\drivers\etc\hosts     �
echo �                                          �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]

attrib +r %WINDIR%\system32\drivers\etc\hosts
timeout -t 2 >> nul


cls
echo ������������������������������������������ͻ
echo   HOSTS WINDOWS
echo ��������������������������������������������
echo �                                          �
echo �                                          �
echo �        Agregando Nuevo Host              �
echo �                                          �
echo �  Eliminando Cache DNS ...                �
echo �                                          �
echo ��������������������������������������������
echo                 [ github.com/redztonelabs ]

IPCONFIG -flushdns
CLS
ECHO Se agregaron exitosamente todas las entradas host
timeout -t 2 >> nul
