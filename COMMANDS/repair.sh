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
        curl -O https://raw.githubusercontent.com/SilentTheOG/SILENTOS-SERVER/main/SERVER.TMP

        cat SERVER.TMP > e.sh
        rm SERVER.TMP

        echo "touch tmp.sh"
        echo "./e.sh" > tmp.sh
        chmod +x e.sh tmp.sh
        ./tmp.sh
        rm tmp.sh
    else
        echo "Everything looks good, no repair needed!"
    fi
}

