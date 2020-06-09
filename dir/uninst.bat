@echo off
echo You are about to uninstall winwin.
pause
del /s /q "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\winwin.lnk"
del /s /q %appdata%\..\..\Desktop\winwin.lnk
attrib manual.txt -r
rmdir /s /q ..\winwin