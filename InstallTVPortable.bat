@ECHO OFF
powershell.exe -Command "Invoke-WebRequest -OutFile ./TVPortable.zip https://download.teamviewer.com/download/version_11x/TeamViewerPortable.zip"
mkdir C:\Teamviewer11
powershell Expand-Archive ./TVPortable.zip -DestinationPath C:\Teamviewer11\

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\OneDrive\Desktop\Teamviewer11Portable.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "C:\Teamviewer11\Teamviewer.exe" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%
pause
cscript /nologo %SCRIPT%
pause
del %SCRIPT%

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"
echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\Teamviewer11Portable.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "C:\Teamviewer11\Teamviewer.exe" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%
pause
cscript /nologo %SCRIPT%
pause
del %SCRIPT%
