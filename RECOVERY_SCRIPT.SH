while true
do
if [ ! "$(wc -c < e.sh)" -gt 3 ]; then
clear
printf "\e[44m"  
clear
echo "                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                      
      @@@@@@@ @@@  @@     @@@@@@@  @@@     @@ @@@@@@@@       @@@@@@@@   @@@@@@@                 
     @@@      @@@  @@     @@@      @@@@    @@    @@@        @@      @@ @@@                      
      @@@     @@@  @@     @@@      @@ @@   @@    @@@       @@       @@@ @@@                     
        @@@@  @@@  @@     @@@@@@@  @@  @@  @@    @@@       @@       @@@   @@@@                  
           @@ @@@  @@     @@@      @@   @@@@@    @@@       @@@      @@       @@                 
      @    @@ @@@  @@     @@@      @@    @@@@    @@@        @@@    @@   @    @@                 
      @@@@@    @   @@@@@@@ @@@@@@  @@     @@@     @           @@@@@     @@@@@      

                                            
         @@         
        @@@@       
       @@  @@       The system was not found and cannot boot.
      @@ @@ @@      The system will be reinstalled, please wait.
     @@  @@  @@     When it is done you can continue.
    @@   @@   @@  
   @@          @@ 
  @@     @@     @@ 
 @@@@@@@@@@@@@@@@@@"
curl -s -H "Cache-Control: no-cache" https://raw.githubusercontent.com/SilentTheOG/SILENTOS-SERVER/main/SERVER.TMP > e.sh
echo "Reinstallation complete.
Press Enter to continue to Silent OS..."
read -p ""
./e.sh
elif [ "$(wc -c < e.sh)" -gt 3 ]; then
sleep 10
fi
done
