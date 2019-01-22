SET PYTHONHOME=c:\Anaconda3
if not exist %PYTHONHOME%  SET PYTHONHOME=C:\Program Files\Anaconda3
SET PYTHONPATH=%PYTHONPATH%;%PYTHONHOME%\Lib\site-packages
PATH %PYTHONHOME%\Scripts;%PATH%

echo Python %PYTHON_V% shell