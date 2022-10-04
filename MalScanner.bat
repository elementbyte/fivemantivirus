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
echo [MalScanner] Malware D checked -- may be found in certain Cfx default resources, is a false positive
findstr /s /m "assert(load(" *.lua
if %errorlevel%==0 (
set malwarefound=1
)
echo ------------------------------------
echo [MalScanner] Malware E checked
findstr /s /m "\x50\x65\x72\x66\x6f\x72\x6d\x48\x74\x74\x70\x52\x65\x71\x75\x65\x73\x74" *.lua
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
