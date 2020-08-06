@echo off
color 09
echo ############################
echo ## Program made by LinuX  ##
echo ## Discord: malijoso#1195 ##
echo ############################
echo(
echo        #    #
echo(
echo      ##      ##
echo        ######
timeout /t 3 /nobreak > NUL
cls

color 0f
:start
cls
:firstAsk    
    set /p "a=Enter the first number: " || goto :firstAsk

    setlocal enabledelayedexpansion 
    for /f "delims=0123456789" %%a in ("!a!") do set "a="
    endlocal & set "a=%a%"

    if not defined a (
	color 0c
        echo invalid input
	timeout /t 1 /nobreak > NUL
	color 0f
        goto firstAsk
    )

echo ################################################

:loop
start "" https://www.youtube.com/watch?v=j9V78UbdzWI
START C:\Windows\NOTEPAD.EXE
goto loop

:secAsk    
    set /p "b=Enter the second number: " || goto :secAsk

    setlocal enabledelayedexpansion 
    for /f "delims=0123456789" %%a in ("!b!") do set "b="
    endlocal & set "b=%b%"

    if not defined b (
	color 0c
        echo invalid input
	timeout /t 1 /nobreak > NUL
	color 0f
        goto secAsk
    )

echo ################################################

echo Type "1" to sum numbers
echo Type "2" to minus numbers
echo Type "3" to multiply numbers
echo Type "4" to divide numbers

echo ################################################

:choice
set /p thing=What do u want to do?
if /i %thing% EQU 1 goto sum
if /i %thing% EQU 2 goto minus
if /i %thing% EQU 3 goto multiply
if /i %thing% EQU 4 goto divide
color 0c
echo invalid input! Please type the numbers to choose the operation!
timeout /t 1 /nobreak > NUL
color 0f
goto choice

:sum
set /a c=%a%+%b%
goto end

:minus
set /a c=%a%-%b%
goto end

:multiply
set /a c=%a%*%b%
goto end

:divide
set /a c=%a%/%b%
goto end


:end
echo ################################################
echo The answer is %c%
goto choic


echo ################################################

:choic
set /p esc=Do u want to exit or calculate again? (y/n)
if /i %esc% EQU y goto start
if /i %esc% EQU n goto realEnd
color 0c
echo invalid input!
timeout /t 1 /nobreak > NUL
color 0f
goto choic

echo ################################################

:realEnd
echo Good bye!
timeout /t 1 /nobreak > NUL
exit
