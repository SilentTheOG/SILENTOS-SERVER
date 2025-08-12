<<<<<<< HEAD
#!/bin/bash
cmdf(){
    read -p "What file would you like to see the contents of? " sedfile 2>/dev/tty
    sed '' "$sedfile"
    echo ""
}
=======
read -p "What file would you like to see the contents of? " sedfile 2>/dev/tty
sed  "$sedfile"
echo ""
>>>>>>> 61722c7ec2524f922e8eb23a89bd584087064ee6
