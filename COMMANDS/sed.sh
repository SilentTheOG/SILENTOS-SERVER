#!/bin/bash
cmdf(){
    read -p "What file would you like to see the contents of? " sedfile 2>/dev/tty
    sed '' "$sedfile"
    echo ""
}
