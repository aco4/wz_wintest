@echo off
setlocal

:: Parameters
set "WARZONE_EXE=C:\Users\john\warzone2100_win_x64_archive\warzone2100_win_x64_archive\bin\warzone2100.exe"
set "WARZONE_DIR=C:\Users\john\AppData\Roaming\Warzone 2100 Project\Warzone 2100 naval"
set "TEST_FOLDER=%~1\test%2"

:: Derived variables
set "MOD_SOURCE=%~dp0testsuites\%TEST_FOLDER%\mod\*"
set "MAP_SOURCE=%~dp0testsuites\%TEST_FOLDER%\map\*"
set "AUTOHOST_FILE=%~dp0testsuites\%TEST_FOLDER%\autohost.json"
set "LAUNCH_BAT=%~dp0testsuites\%TEST_FOLDER%\launch.bat"

:: Build test files
powershell -Command "Compress-Archive -Path '%MOD_SOURCE%' -DestinationPath 'mod.zip' -Force"
powershell -Command "Compress-Archive -Path '%MAP_SOURCE%' -DestinationPath 'map.zip' -Force"
rename "map.zip" "map.wz"

:: Load test files
move /Y "mod.zip" "%WARZONE_DIR%\mods\autoload"
move /Y "map.wz" "%WARZONE_DIR%\maps"
copy /Y "%AUTOHOST_FILE%" "%WARZONE_DIR%\autohost"

:: Run the test-specific launch instructions using WARZONE_EXE
call "%LAUNCH_BAT%"

endlocal
