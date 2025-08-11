#!/bin/bash
cmdf() {
    if declare -f e > /dev/null; then
        BTL="YES"
    else
        BTL="NO"
    fi

    echo "NATIVE BOOTLOADER WORKING: $BTL"
    echo "SYSTEM CRITICAL FUNCTION: $SYS"

    read -p "Press Enter to continue..." 2>/dev/tty

    if [ "$SYS" = "NO" ] || [ "$BTL" = "NO" ]; then
        echo "Repair needed, working on it..."
        # TODO: Make this use MY REPO!!!
        curl -O https://raw.githubusercontent.com/SilentTheOG/SILENTOS-SERVER/main/SERVER.TMP

        cat SERVER.TMP > $0
        rm SERVER.TMP

        echo "touch tmp.sh"
        echo "./$0" > tmp.sh
        chmod +x $0 tmp.sh
        ./tmp.sh
        rm tmp.sh
    else
        echo "Everything looks good, no repair needed!"
    fi
}
