call %~dp0\bat\Set32bit.bat
call %~dp0\bat\pycharm_env.bat
call %~dp0\bat\qgis2_env.bat
start "PyCharm aware of QGIS" /B %PYCHARM% %*