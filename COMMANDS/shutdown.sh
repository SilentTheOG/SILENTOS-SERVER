#!/bin/bash
if [ $arg == "/e" ] || [ -z $arg ]; then
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
  echo "Shutdown command flags:
  /e - Exits the window
  /r - Restarts the system
  /m - Restarts and boots into boot menu
  /s - Restarts into setup"
else
  echo "Unknown flag $arg: use /? for a list of flags"
fi
