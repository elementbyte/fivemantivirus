@echo off
echo [MalScanner] Welcome. Press enter to begin scanning.
pause
echo [MalScanner] Cipher Malware A checked
findstr /s /m "random_char" *.lua
echo ------------------------------------
echo [MalScanner] Cipher Malware B checked
findstr /s /m "Enchanced_Tabs" *.lua
echo ------------------------------------
echo [MalScanner] Cipher Malware C checked
findstr /s /m "helpCode" *.lua
echo ------------------------------------
if %errorlevel%==0 (
echo [MalScanner] Malware found! Check the above logged bad resource files. They contain malicious code. Use source comparison to remove it.
) else (
echo [MalScanner] No malware found.
)

pause
