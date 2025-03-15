blbg=$'\e[44m'
red=$'\033[1;91m'                                                                        
nc=$'\033[0m'
while true
do
if [ ! "$(wc -c < e.sh)" -gt 3 ]; then
clear
printf "\e[44m"  
clear
printf "                                                                                                                                                                                                                                                                                                            
                                                                                                                                                                                                                                                                                      
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@                 
     @@@      @@@  @@     @@@@@@   @@@@    @@ @@@@@@@@@     @@@    @@@  @@@   @@                 
      @@@     @@@  @@     @@@      @@ @@   @@    @@@       @@@ X   X @@  @@@                     
        @@@@  @@@  @@     @@@@@@@  @@  @@  @@    @@@       @@  ####  @@    @@@@                  
           @@ @@@  @@     @@@      @@   @@@@@    @@@       @@ #    # @@       @@                 
      @    @@ @@@  @@@@@@ @@@@@@   @@    @@@@    @@@        @@@    @@@   @    @@                 
      @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@${red}      

                                            
         @@         
        @@@@       
       @@  @@       ${blbg}The system was not found or has been destroyed.
      @@ @@ @@      ${blbg}The sustem cannot continue this session.
     @@  @@  @@     ${blbg}Silent OS will be reinstalled, please wait.
    @@   @@   @@    ${blbg}When it is installed you can continue.
   @@          @@ 
  @@     @@     @@ 
 @@@@@@@@@@@@@@@@@@${nc}
${blbg}Contact Silent on discord if needed. User:walmartbagfred
 "
curl -s -H "Cache-Control: no-cache" https://raw.githubusercontent.com/SilentTheOG/SILENTOS-SERVER/main/SERVER.TMP > e.sh
printf "${blbg}Reinstallation complete.
Press Enter to continue to Silent OS..."
read -p ""
clear
printf "${nc}"
clear
echo "Removing colour..."
clear
./e.sh
elif [ "$(wc -c < e.sh)" -gt 3 ]; then
sleep 10
fi
done
