while true
do
[ ! "$(wc -c < testlol.sh)" -gt 3 ]; then
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
curl -s -H "Cache-Control: no-cache" https://raw.githubusercontent.com/SilentTheOG/SILENTOS-SERVER/main/SERVER.TMP > testlol.sh
echo "Reinstallation complete.
Press Enter to continue to Silent OS..."
read -p ""
./testlol.sh
elif [ "$(wc -c < testlol.sh)" -gt 3 ]; then
sleep 10
fi
done
