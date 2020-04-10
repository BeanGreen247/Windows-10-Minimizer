@echo off
echo "Enableing Windows Update"
sc config wuauserv start= auto
exit