# wz_wintest
A Warzone 2100 testing framework for Windows

## Extensive control
Each test has access to 4 components. Combined, the test gains significant power and ability:
Component|Usage
---|---
Script-generated map|Test exact geography, features, or other environmental requirements
Mod|Automate droid actions, spawn objects, log output, and more
`autohost.json`|Specify tech level, alliance mode, AI bots, and more
`launch.bat`|Test in skirmish or multiplayer with multiple clients

## Write a test
1. Choose a namespace to represent the scope of the test
   - e.g. "naval"
2. Create the namespace folder in `testsuites/`
   - e.g. `testsuites/naval`
3. Create a folder for the first test. It must be named "test1":
   - e.g. `testsuites/naval/test1`
4. Write the map, mod, autohost JSON, and launch script.
   - see `helloWorld` for an example

## Run the test
1. Edit `wz_wintest/test.bat` and set the parameters:
```batch
set "WARZONE_EXE=C:\Users\john\warzone2100_win_x64_archive\warzone2100_win_x64_archive\bin\warzone2100.exe"
set "WARZONE_DIR=C:\Users\john\AppData\Roaming\Warzone 2100 Project\Warzone 2100 navalTest"
```
2. Open Powershell and navigate to the repository
   - e.g. `PS C:\Users\john\wz_wintest>`
3. Run the first test
   - e.g. `.\test.bat naval 1`
4. Verify the result by observation (or with the mod, if possible)

