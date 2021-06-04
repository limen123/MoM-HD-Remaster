@echo off
ECHO ***********************************************************************
ECHO MAKE SURE YOU HAVE READ THE README AND CREATED YOUR BACKUPS BEFORE USE
ECHO 			    Choose a pack:
ECHO 1. Originals
ECHO 2. Remasters
ECHO 3. KH3
ECHO ***********************************************************************

:BEGIN
  set /p case="Select Option: "
  2>NUL CALL :CASE_%case%
  IF ERRORLEVEL 1 GOTO :DEFAULT_CASE
  ECHO Done!
  pause
  EXIT /B

:CASE_1
  IF exist "%CD:~0,3%\Program Files\Epic Games\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\" (ECHO Restoring Originals.. && >NUL copy "Originals\*.*" "%CD:~0,3%\Program Files\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\") ELSE (ECHO Default directory not found! && GOTO DIR_%case%)
  GOTO END_CASE
:CASE_2
  ECHO One-Winged Angel KH1 Remaster or KH2 Remaster?
  set /p seph="Select 1 or 2: "
  IF exist "%CD:~0,3%\Program Files\Epic Games\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\" (ECHO Installing Remastered tracks.. && >NUL copy "Remasters\I.5 and II.5\*.*" "%CD:~0,3%\Program Files\KH_MoM\\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\" && >NUL copy "Remasters\I.5 and II.5\%SEPH%\*.*" "%CD:~0,3%\Program Files\KH_MoM\\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\") ELSE (ECHO Default directory not found! && GOTO DIR_%case%)
  GOTO END_CASE
:CASE_3
  IF exist "%CD:~0,3%\Program Files\Epic Games\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\" (ECHO Installing KH3 tracks.. && >NUL copy "Remasters\KH3\*.*" "%CD:~0,3%\Program Files\KH_MoM\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\") ELSE (ECHO Default directory not found! && GOTO DIR_%case%)
  GOTO END_CASE
:DIR_1
  set /p id="Enter Game Directory: "
  IF exist "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\" (ECHO Restoring Originals.. && >NUL copy "Originals\*.*" "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\") ELSE (ECHO Directory does not exist! Try again. && goto :DIR_%case%)
  GOTO END_CASE
:DIR_2
  set /p id="Enter Game Directory: "
  IF exist "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\" (ECHO Installing Remastered tracks.. && >NUL copy "Remasters\I.5 and II.5\*.*" "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\" && >NUL copy "Remasters\I.5 and II.5\%SEPH%\*.*" "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\") ELSE (ECHO Directory does not exist! Try again. && goto :DIR_%case%)
  GOTO END_CASE
:DIR_3
  set /p id="Enter Game Directory: "
  IF exist "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\" (ECHO Installing KH3 tracks.. && >NUL copy "Remasters\KH3\*.*" "%id%\KINGDOM HEARTS Melody of Memory_Data\StreamingAssets\Sead\music\") ELSE (ECHO Directory does not exist! Try again. && goto :DIR_%case%)
  GOTO END_CASE
:DEFAULT_CASE
  ECHO Invalid Option "%case%"! Insert a valid option(1, 2, or 3) and try again.
  GOTO BEGIN
:END_CASE
  VER > NUL
  GOTO :EOF
