<<<<<<< HEAD
#!/bin/bash
cmdf(){
    if [ $arg == "/e" ]; then
        exit 0
    elif [ $arg == "/m" ]; then
        cmd0m=1
        cmd0=M
        e
    elif [ $arg == "/r" ]; then
        e
        ON
    elif [ $arg == "/s" ]; then
        setup=1
        echo "0" > CONFIG/CONFIG.CFG
        e
        ON
    elif [ $arg == "/DEVMODE" ]; then
        exec 2>/dev/tty
        devm=1
        e
        ON
    elif [ $arg == "/?" ]; then
        echo "Shutdown command arguments:
        /e - Exits the window
        /r - Restarts the system
        /m - Restarts and boots into boot menu
        /s - Restarts into setup"
    else
        echo "Invalid or empty argument, use 'shutdown /?' for a list of arguments."
    fi
=======
cmdf(){
if [ $arg == "/e" ]; then
exit 0
elif [ $arg == "/m" ]; then
cmd0m=1
cmd0=M
e
elif [ $arg == "/r" ]; then
e
ON
elif [ $arg == "/s" ]; then
setup=1
echo "0" > CONFIG/CONFIG.CFG
e
ON
elif [ $arg == "/DEVMODE" ]; then
exec 2>/dev/tty
devm=1
e
ON
elif [ $arg == "/?" ]; then
echo "Shutdown command arguments:
/e - Exits the window
/r - Restarts the system
/m - Restarts and boots into boot menu
/s - Restarts into setup"
else
echo "Invalid or empty argument, use 'shutdown /?' for a list of arguments."
fi
>>>>>>> 61722c7ec2524f922e8eb23a89bd584087064ee6
}
