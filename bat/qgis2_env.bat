SET OSGEO_PF=%ProgramFiles%
IF DEFINED ProgramW6432 (IF NOT DEFINED OSGEO4W_32ON64 (SET OSGEO_PF=%ProgramW6432%))

                                                          SET OSGEO4W_ROOT=%OSGEO_PF%\QGIS 2.18
if not exist "%OSGEO4W_ROOT%" SET OSGEO4W_ROOT=c:\OSGeo4W64

SET GRASS_V=7.0.5
call %~dp0\qgis_env.bat
if ERRORLEVEL 1 exit /b 1

echo Grass Version = %GRASS_V%
call "%OSGEO4W_ROOT%"\apps\grass\grass-%GRASS_V%\etc\env.bat
path %PATH%;%OSGEO4W_ROOT%\apps\grass\grass-%GRASS_V%\lib