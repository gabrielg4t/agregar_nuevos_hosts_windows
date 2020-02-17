@echo off
COLOR 0A
MODE con:cols=60 lines=20

cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo   HOSTS WINDOWS
echo ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎ
echo ³                                          ³
echo ³                                          ³
echo ³        Agregando Nuevo Host              ³
echo ³                                          ³
echo ³  Cambiando atributos:                    ³
echo ³  %WINDIR%\system32\drivers\etc\hosts     ³
echo ³                                          ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo                 [ github.com/redztonelabs ]

attrib -r %WINDIR%\system32\drivers\etc\hosts
timeout -t 2 >> nul


cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo   HOSTS WINDOWS
echo ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎ
echo ³                                          ³
echo ³                                          ³
echo ³        Agregando Nuevo Host              ³
echo ³                                          ³
echo ³  Detectando el path del HOSTS ...        ³
echo ³  Agregando nuevas lineas ...             ³
echo ³                                          ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
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
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo   HOSTS WINDOWS
echo ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎ
echo ³                                          ³
echo ³                                          ³
echo ³        Agregando Nuevo Host              ³
echo ³                                          ³
echo ³  Cambiando atributos de solo lectura:    ³
echo ³  %WINDIR%\system32\drivers\etc\hosts     ³
echo ³                                          ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo                 [ github.com/redztonelabs ]

attrib +r %WINDIR%\system32\drivers\etc\hosts
timeout -t 2 >> nul


cls
echo ÉÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍ»
echo   HOSTS WINDOWS
echo ÌÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÎ
echo ³                                          ³
echo ³                                          ³
echo ³        Agregando Nuevo Host              ³
echo ³                                          ³
echo ³  Eliminando Cache DNS ...                ³
echo ³                                          ³
echo ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo                 [ github.com/redztonelabs ]

IPCONFIG -flushdns
CLS
ECHO Se agregaron exitosamente todas las entradas host
timeout -t 2 >> nul
