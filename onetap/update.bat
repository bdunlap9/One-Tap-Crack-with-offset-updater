rem I'm don't want add comments, so, idk, read script. :d 
@echo off
mode con: cols=80 lines=30 
chcp 65001
:starter
cls
call :random_color
title Onetap Crack Offset Updater
set language=unknown
echo.
echo.
echo		        @-------------------------------------------@
echo 	        #					    #
echo		        #          ONETAP OFFSET UPDATER            #  
echo		        #           SIGNATURES : 0x000cb            #
echo	 		#					    #
echo		        @-------------------------------------------@
echo.
echo.
ping 0.0.0.0 -n 5 > nul 
echo THIS IS A SMALL BATCH THAT HELPS YOU KEEP THE ONETAP CRACK DLL UP TO DATE.
ping 0.0.0.0 -n 4 > nul 
echo.
echo NOTE : BEFORE BEGGINING THE PROCESS PLEASE COPY client_panorama.dll FROM
echo \Counter-Strike Global Offensive\csgo\bin\client_panorama.dll AND PASTE IT HERE.
ping 0.0.0.0 -n 6 > nul 
echo.
echo.
echo TO START THE PROCESS SIMPLY WRITE START.
echo.
set /p language="> "
if "%language%"=="start" goto :updater
if "%language%"=="start" goto :updater
goto language_not_selected
:updater
cls
ping 0.0.0.0 -n 1 > nul
echo.
echo.
call :language_interpreter %language%, "SEARCHING FOR NEW OFFSETS. THIS PROCESS CAN TAKE UP TO 2-3 MINS." , "PLEASE WAIT..."
call :updater_search_module, :patcher
:patcher
ping 0.0.0.0 -n 4 > nul
echo.
call :language_interpreter %language%, "OFFSETS FOUND." , "PATCHING ONETAP..."
call :patcher_module, :end
:end
ping 0.0.0.0 -n 6 > nul
echo.
call :language_interpreter %language%, "ONETAP WAS SUCCESSFULLY UPDATED." , "ENJOY TAPPING!"
ping 0.0.0.0 -n 2 > nul.
echo.
echo.
call :language_interpreter %language%, "ALSO IF YOU LIKE THE CHEAT,PLEASE CONSIDER BUYING IT AT", "onetap.su"
ping 0.0.0.0 -n 3 > nul
start https://onetap.su
echo.
echo.
ping 0.0.0.0 -n 2 > nul
exit
:updater_search_module
cd updater
updater.exe signatures.txt offsets.txt ../client_panorama.dll
cd ..
goto %~1
:patcher_module
cd patcher
patcher.exe ../updater/offsets.txt ../onetap.dll
cd..
goto %~1
:language_not_selected
color 4
cls
echo.
echo.
echo		        @-------------------------------------------@
echo 	        #					    #
echo		        #             WRONG TEXT INPUT              #  
echo		        #	     PLEASE TYPE start.	    	    #
echo	 		#					    #
echo		        @-------------------------------------------@
ping 0.0.0.0 -n 5 > nul
goto :starter
:random_color
set /a random=%random% %% 16
set HEX=0123456789ABCDEF
call set random_color=%%HEX:~%random%,1%%%%,1%%
color %random_color%
:language_interpreter
 if "%~1"=="start" (
	echo %~2
 )
 if "%~1"=="start" ( 
     echo %~3
 )