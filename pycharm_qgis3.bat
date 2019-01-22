call %~dp0\bat\pycharm_env.bat
call %~dp0\bat\qgis3_env.bat
start "PyCharm aware of QGIS" /B %PYCHARM% %*