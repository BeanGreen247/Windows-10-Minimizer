@echo off
echo "Enableing Windows Update"
sc config wuauserv start= auto
echo "Done. Press a key to exit"
pause
exit