@echo off
set malwarefound=0
echo You must put this in your resoures directory!
echo [MalScanner] Welcome. Press enter to begin scanning.
pause
echo [MalScanner] Malware A checked
findstr /s /m "random_char" *.lua
if %errorlevel%==0 (
set malwarefound=1
)
echo ------------------------------------
echo [MalScanner] Malware B checked
findstr /s /m "Enchanced_Tabs" *.lua
if %errorlevel%==0 (
set malwarefound=1
)
echo ------------------------------------
echo [MalScanner] Malware C checked
findstr /s /m "helpCode" *.lua
if %errorlevel%==0 (
set malwarefound=1
)
echo ------------------------------------
echo [MalScanner] Malware D checked
findstr /s /m "assert(load(" *.lua
if %errorlevel%==0 (
set malwarefound=1
)
echo ------------------------------------
echo [MalScanner] Malware E checked
findstr /s /m "\x61\x73\x73\x65\x72\x74" *.lua
if %errorlevel%==0 (
set malwarefound=1
)
echo ------------------------------------
echo [MalScanner] Malware F checked
findstr /s /m "helperServer" *.lua
if %errorlevel%==0 (
set malwarefound=1
)
echo ------------------------------------
if %malwarefound%==1 (
echo [MalScanner] Malware found! Check the above logged bad resource files. They contain malicious code. Use source comparison to remove it.
) else (
echo [MalScanner] No malware found.
)

pause
