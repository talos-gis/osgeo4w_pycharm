if "%OSGEO4W_ROOT%"=="" exit /b 1

call "%OSGEO4W_ROOT%\bin\o4w_env.bat"

path %PATH%;%OSGEO4W_ROOT%\apps\qgis\bin
set PYTHONPATH=%PYTHONPATH%;%OSGEO4W_ROOT%\apps\qgis\python;%PYTHONHOME%\Lib\site-packages
set QGIS_PREFIX_PATH=%OSGEO4W_ROOT%\apps\qgis

echo Path = %PATH%
echo Python %PYTHONHOME% shell for QGIS