echo "NOTE: This only works on a Windows system!"
psc=0
read -p "Powershell command:" psc 2>/dev/tty
powershell -command "$psc"
