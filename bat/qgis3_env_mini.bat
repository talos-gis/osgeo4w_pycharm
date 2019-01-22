SET OSGEO_PF=%ProgramFiles%
SET OSGEO4W_ROOT=%OSGEO_PF%\QGIS 3.0

rem o4w_env.bat
REM start with clean path
set path=%OSGEO4W_ROOT%\bin;%WINDIR%\system32;%WINDIR%;%WINDIR%\system32\WBem

rem py3_env.bat
SET PYTHONPATH=
SET PYTHONHOME=%OSGEO4W_ROOT%\apps\Python36
PATH %OSGEO4W_ROOT%\apps\Python36;%OSGEO4W_ROOT%\apps\Python36\Scripts;%PATH%

rem qgis_env.bat
path %PATH%;%OSGEO4W_ROOT%\apps\qgis\bin
set PYTHONPATH=%PYTHONPATH%;%OSGEO4W_ROOT%\apps\qgis\python;%PYTHONHOME%\Lib\site-packages
