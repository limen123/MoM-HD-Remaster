@echo off
if exist Originals\ (GOTO :NEXT) else (mkdir Originals\ && GOTO :NEXT)

:NEXT
  ECHO Searching for default game directory..
  IF exist "%CD:~0,2%\%ProgramFiles%\Epic Games\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\" (ECHO Window will automatically close when backups are created && ECHO Creating backups.. && >NUL copy "%CD:~0,2%\%ProgramFiles%\Epic Games\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\*.*" "Originals\") else (ECHO Default directory not found! && GOTO :NEXT2)
  GOTO END_CASE
:NEXT2
  set /p id="Enter Game Directory: "
  IF exist "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\" (ECHO Window will automatically close when backups are created && ECHO Creating backups.. && >NUL copy "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\*.*" "Originals\") ELSE (ECHO Directory does not exist! Try again. && goto :NEXT2)
  GOTO END_CASE
:END_CASE
  EXIT /B
