@echo off
echo [MalScanner] Welcome. Press enter to begin scanning.
pause
echo [MalScanner] Malware A checked
findstr /s /m "random_char" *.lua
echo ------------------------------------
echo [MalScanner] Malware B checked
findstr /s /m "Enchanced_Tabs" *.lua
echo ------------------------------------
echo [MalScanner] Malware C checked
findstr /s /m "helpCode" *.lua
echo ------------------------------------
echo [MalScanner] Malware D checked
findstr /s /m "assert(load(d))" *.lua
echo ------------------------------------
if %errorlevel%==0 (
echo [MalScanner] Malware found! Check the above logged bad resource files. They contain malicious code. Use source comparison to remove it.
) else (
echo [MalScanner] No malware found.
)

pause
