red=$'\033[1;31m'                                                                        
nc=$'\033[0m'
while true
do
if [ ! "$(wc -c < e.sh)" -gt 3 ]; then
clear
printf "\e[44m"  
clear
echo "                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                      
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                 
     @@@      @@@  @@     @@@@@@   @@@@    @@ @@@@@@@@@     @@@   @@@  @@@   @@                 
      @@@     @@@  @@     @@@      @@ @@   @@    @@@       @@@     @@@  @@@                     
        @@@@  @@@  @@     @@@@@@@  @@  @@  @@    @@@       @@       @@    @@@@                  
           @@ @@@  @@     @@@      @@   @@@@@    @@@       @@@     @@@       @@                 
      @    @@ @@@  @@@@@@ @@@@@@   @@    @@@@    @@@        @@@   @@@   @    @@                 
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@${red}      

                                            
         @@         
        @@@@       
       @@  @@       ${nc}\e[44mThe system was not found and cannot boot.${red}
      @@ @@ @@      ${nc}\e[44mThe system will be reinstalled, please wait.${red}
     @@  @@  @@     ${nc}\e[44mWhen it is done you can continue.${red}
    @@   @@   @@  
   @@          @@ 
  @@     @@     @@ 
 @@@@@@@@@@@@@@@@@@${nc}"
curl -s -H "Cache-Control: no-cache" https://raw.githubusercontent.com/SilentTheOG/SILENTOS-SERVER/main/SERVER.TMP > e.sh
echo "Reinstallation complete.
Press Enter to continue to Silent OS..."
read -p ""
./e.sh
elif [ "$(wc -c < e.sh)" -gt 3 ]; then
sleep 10
fi
done
