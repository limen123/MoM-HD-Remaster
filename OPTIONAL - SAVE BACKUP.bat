@echo off
if exist "Save Backup\" (GOTO :NEXT) else (mkdir "Save Backup\" && GOTO :NEXT)

:NEXT
  IF exist "%CD:~0,2%\users\%USERNAME%\Documents\" (ECHO Window will automatically close when backups are created && ECHO Creating backups.. && >NUL xcopy /s /i "%CD:~0,2%\users\%USERNAME%\Documents\KINGDOM HEARTS Melody of Memory\Epic Games Store\" "Save Backup\" ) else (ECHO Directory does not exist! Please run the installer on your main drive and try again. && pause)