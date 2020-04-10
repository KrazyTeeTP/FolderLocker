:iSTART
@echo off
cls
set inputFolderNameHere=Private
set inputYourNameHere=KrazyTeeTP
set inputYourPasswordHere=passwordhere
if exist "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto iUNLOCK
if not exist %inputFolderNameHere% goto iMDPrivate

:iCONFIRM
cls
echo.
echo		Developed by. %inputYourNameHere%
echo.
echo Are you positive to lock this folder? (Y/N) 
set /p "choiS=>
if %choiS%==Y goto iLOCK
if %choiS%==y goto iLOCK
if %choiS%==N goto iEND
if %choiS%==n goto iEND
cls
echo.
echo		Developed by. %inputYourNameHere%
echo.
echo [Error.] Invalid choice
pause >nul
goto iCONFIRM

:iLOCK
cls
echo.
echo		Developed by. %inputYourNameHere%
echo.
ren %inputFolderNameHere% "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo (Success.) Folder locked
pause >nul
goto iEND

:iUNLOCK
cls
echo.
echo		Developed by. %inputYourNameHere%
echo.
echo Enter your password to unlock your secured folder
set /p "pass=>
if not %pass%==%inputYourPasswordHere% goto iFAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" %inputFolderNameHere%
cls
echo.
echo		Developed by. %inputYourNameHere%
echo.
echo (Success.) Folder unlocked successfully
pause >nul
goto iEND

:iFAIL
cls
echo.
echo		Developed by. %inputYourNameHere%
echo.
echo [Error.] Password not match
pause >nul
goto iUNLOCK

:iMDPrivate
md %inputFolderNameHere%
echo.
echo		Developed by. %inputYourNameHere%
echo.
echo %inputFolderNameHere% created successfully :)
pause >nul
goto iEND

:iEND
cls
echo.
echo		Developed by. %inputYourNameHere%
echo.
echo Do you wan't to Quit? (Y/N)
set /p "quit=>
if %quit%==Y goto :eof
if %quit%==y goto :eof
if %quit%==N goto iSTART
if %quit%==n goto iSTART
cls
echo.
echo		Developed by. %inputYourNameHere%
echo.
echo [Error.] Invalid choice
pause >nul
goto iEND