@echo off
copy autostart.bat "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
echo "Please reboot your PC...."
echo "Done. Press a key to exit"
pause
exit