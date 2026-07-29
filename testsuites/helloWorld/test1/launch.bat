start "" /b "%WARZONE_EXE%" "--autohost=autohost.json"
timeout /t 3 /nobreak > nul
start "" /b "%WARZONE_EXE%" "--join=127.0.0.1:2100"
