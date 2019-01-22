call %~dp0\bat\Set32bit.bat
call %~dp0\bat\pycharm_env.bat
call %~dp0\bat\qgis3_env.bat %1
start "PyCharm aware of QGIS" /B %PYCHARM% %*