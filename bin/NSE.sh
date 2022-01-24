#!/bin/bash

Adv_Scan_Banner()
{
  version_check=$(cat Version.md)
  clear
  echo " "
  printf "\e[1;91m      _______  ______            _______  _        _______  _______  ______       _______  _______  _______  _       \e[0m\n"
  printf "\e[1;91m     (  ___  )(  __  \ |\     /|(  ___  )( (    /|(  ____ \(  ____ \(  __  \     (  ____ \(  ____ \(  ___  )( (    /|  \e[0m\n"
  printf "\e[1;92m     | (   ) || (  \  )| )   ( || (   ) ||  \  ( || (    \/| (    \/| (  \  )    | (    \/| (    \/| (   ) ||  \  ( | \e[0m\n"
  printf "\e[1;92m     | (___) || |   ) || |   | || (___) ||   \ | || |      | (__    | |   ) |    | (_____ | |      | (___) ||   \ | | \e[0m\n"
  printf "\e[1;92m     |  ___  || |   | |( (   ) )|  ___  || (\ \) || |      |  __)   | |   | |    (_____  )| |      |  ___  || (\ \) |  \e[0m\n"
  printf "\e[1;92m     | (   ) || |   ) | \ \_/ / | (   ) || | \   || |      | (      | |   ) |          ) || |      | (   ) || | \   |\e[0m\n"
  printf "\e[1;91m     | )   ( || (__/  )  \   /  | )   ( || )  \  || (____/\| (____/\| (__/  )    /\____) || (____/\| )   ( || )  \  |\e[0m\n"
  printf "\e[1;91m     |/     \|(______/    \_/   |/     \||/    )_)(_______/(_______/(______/_____\_______)(_______/|/     \||/    )_)\e[0m\n"
  printf "\n"
  printf "                     \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m          Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m            \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                     \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m           Follow me on Instagram and Twitter: @Zero_Prime9\e[0m           \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                     \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m        Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t        \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                     \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                  Visit: https://www.zeroprime9.com                   \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                     \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                           Version: $version_check \e[0m                             \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                     \e[1;93m____________________________________________________________________________________\e[0m\n\n"
  printf "                      \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;77m     Using the fullest of everything gives us richer information   \e[0m\e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                     \e[1;93m____________________________________________________________________________________\e[0m\n"
  
  printf "\n"
}


User_IP_FILE_Adv_Input()
{
  clear
  Adv_Scan_Banner
  cd ..
  IP_Adv_Input=" "
  Conti_Adv="n"
  while [[ "$Conti_Adv" == "n" ]];
  do
    echo $'                      \e[96m\e[1;36m ================================================================================'
    echo $'                                        \e[1;92m Automatically selected:\e[1;91m IP Address/Website                     \e[0m'
    echo $'                      \e[96m\e[1;36m ================================================================================'
    read -p $'                       \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter Web Address/IP Address: \e[0m' IP_Adv_Input
    echo $'                       \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered Web Address/IP Address is: \e[0m' $IP_Adv_Input
    read -p $'                       \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to continue with the Web Address/IP Address [y/n]: \e[0m' Conti_Adv

    if [ "$Conti_Adv" == "y" ]
    then
      Adv_Scan_NSE
  else
    echo " "
    echo $'                     \e[96m\e[1;93m  ================================================================================'
    echo $'                                       \e[31m            Re-enter your choice'
    echo $'                     \e[96m\e[1;93m  ================================================================================'
    sleep 2
    echo " "
    User_IP_FILE_Adv_Input
  fi
      #To check if the choice is Netbios and Nikto and The choice is yes:

  done
} 



Adv_Scan_NSE()
{
  clear
  Adv_Scan_Banner
  nse_scan_sc=" "
  echo $'                     \e[36m ================================================================================'
  echo $'                                      \e[31m        Target IP Address: \e[1;1m' $IP_Adv_Input
  echo $'                     \e[36m ================================================================================'
  echo " "
  echo $'                                \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Web Application Firewall Detection \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Eternal Blue Attack Detection \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] DNS Bruteforce \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Traceroute Geographic Location \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Website Sitemap Generator \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] WHOIS Domain  \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m] Common Vulnerability Detection \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  echo " "
  read -p $'                                \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1-10 or 0]: \e[0m' nse_scan_sc
  echo " "
  clear
  Adv_Scan_Banner

  file_location_ADV="Scanned_Target/Advanced_Scan/NSE_Scan"
  if [ -e $file_location_ADV ]
  then
      :
  else
      cd Scanned_Target/Advanced_Scan
      mkdir NSE_Scan
      cd ../..
  fi


  NSE_1="Scanned_Target/Advanced_Scan/NSE_Scan/WAFD.log"
  NSE_2="Scanned_Target/Advanced_Scan/NSE_Scan/Eternal_Blue.log"
  NSE_3="Scanned_Target/Advanced_Scan/NSE_Scan/DNS_BF.log"
  NSE_4="Scanned_Target/Advanced_Scan/NSE_Scan/Traceroute_Geo.log"
  NSE_5="Scanned_Target/Advanced_Scan/NSE_Scan/Sitemap.log"
  NSE_6="Scanned_Target/Advanced_Scan/NSE_Scan/Whois.log"
  NSE_7="Scanned_Target/Advanced_Scan/NSE_Scan/CVE.log"

  case $nse_scan_sc in

    "1") 
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           echo -e '                              \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m                  A touch of analysis innit                 \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                              \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m    You have selected:\e[1;91m Web Application Firewall Detecton    \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           if [[ -e $NSE_1 ]];
           then
             sleep 4
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $NSE_1
             echo "==============================" >> $NSE_1
             echo  $(date) >> $NSE_1
             echo "==============================" >> $NSE_1
             echo " " >> $NSE_1
             nmap -p80 --script http-waf-detect $IP_Adv_Input >> $NSE_1 
             echo "==============================" >> $NSE_1
             echo " "
             sleep 4
             echo " "
             cat $NSE_1
             echo " "
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
            echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Advanced_Scan/NSE_Scan/
             touch WAFD.log
             echo "==============================" >> WAFD.log
             echo $(date) >> WAFD.log
             echo "==============================" >> WAFD.log
             echo " " >> WAFD.log
             nmap -p80 --script http-waf-detect $IP_Adv_Input >> WAFD.log
             echo "==============================" >> WAFD.log
             echo " "
             cat WAFD.log
             echo " "
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Advanced_Scan/NSE_Scan for more Information\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi

    ;;

    

    "2") 
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           echo -e '                              \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m       Heard of Wannacry, well they made them cry     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                              \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m    You have selected:\e[1;91m EternalBlue Attack Detection   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           if [[ -e $NSE_2 ]];
           then
             sleep 4
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $NSE_2
             echo "==============================" >> $NSE_2
             echo  $(date) >> $NSE_2
             echo "==============================" >> $NSE_2
             echo " " >> $NSE_2
             nmap -p445 --script smb-vuln-ms17-010 $IP_Adv_Input >> $NSE_2
             echo "==============================" >> $NSE_2
             echo " "
             sleep 4
             echo " "
             cat $NSE_2
             echo " "
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
            echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Advanced_Scan/NSE_Scan/
             touch Eternal_Blue.log
             echo "==============================" >> Eternal_Blue.log
             echo $(date) >> Eternal_Blue.log
             echo "==============================" >> Eternal_Blue.log
             echo " " >> Eternal_Blue.log
             nmap -p445 --script smb-vuln-ms17-010 $IP_Adv_Input >> Eternal_Blue.log
             echo "==============================" >> Eternal_Blue.log
             echo " "
             cat Eternal_Blue.log
             echo " "
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Advanced_Scan/NSE_Scan for more Information\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi

    ;;

    "3") 
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           echo -e '                              \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m       Heard of Wannacry, well they made them cry     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                              \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m    You have selected:\e[1;91m EternalBlue Attack Detection   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           if [[ -e $NSE_3 ]];
           then
             sleep 4
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $NSE_3
             echo "==============================" >> $NSE_3
             echo  $(date) >> $NSE_3
             echo "==============================" >> $NSE_3
             echo " " >> $NSE_3
             nmap --script dns-brute $IP_Adv_Input >> $NSE_3
             echo "==============================" >> $NSE_3
             echo " "
             sleep 4
             echo " "
             cat $NSE_3
             echo " "
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
            echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Advanced_Scan/NSE_Scan/
             touch DNS_BF.log
             echo "==============================" >> DNS_BF.log
             echo $(date) >> DNS_BF.log
             echo "==============================" >> DNS_BF.log
             echo " " >> DNS_BF.log
             nmap --script dns-brute $IP_Adv_Input >> DNS_BF.log
             echo "==============================" >> DNS_BF.log
             echo " "
             cat DNS_BF.log
             echo " "
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Advanced_Scan/NSE_Scan for more Information\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi

    ;;

    "4") 
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           echo -e '                              \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m          Tracing my way back with some geolocation     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                              \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m    You have selected:\e[1;91m Traceroute Geographic Location   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           if [[ -e $NSE_4 ]];
           then
             sleep 4
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $NSE_4
             echo "==============================" >> $NSE_4
             echo  $(date) >> $NSE_4
             echo "==============================" >> $NSE_4
             echo " " >> $NSE_4
             nmap --traceroute --script traceroute-geolocation $IP_Adv_Input >> $NSE_4
             echo "==============================" >> $NSE_4
             echo " "
             sleep 4
             echo " "
             cat $NSE_4
             echo " "
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
            echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Advanced_Scan/NSE_Scan/
             touch Traceroute_Geo.log
             echo "==============================" >> Traceroute_Geo.log
             echo $(date) >> Traceroute_Geo.log
             echo "==============================" >> Traceroute_Geo.log
             echo " " >> Traceroute_Geo.log
             nmap --traceroute --script traceroute-geolocation $IP_Adv_Input >> Traceroute_Geo.log
             echo "==============================" >> Traceroute_Geo.log
             echo " "
             cat Traceroute_Geo.log
             echo " "
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Advanced_Scan/NSE_Scan for more Information\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi
    ;;

    "5") 
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           echo -e '                              \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m          A blueprint of the website helps        \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                              \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m    You have selected:\e[1;91m Website Sitemap Generator  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           if [[ -e $NSE_5 ]];
           then
             sleep 4
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $NSE_5
             echo "==============================" >> $NSE_5
             echo  $(date) >> $NSE_5
             echo "==============================" >> $NSE_5
             echo " " >> $NSE_5
             nmap --script http-sitemap-generator -p 80 $IP_Adv_Input >> $NSE_5
             echo "==============================" >> $NSE_5
             echo " "
             sleep 4
             echo " "
             cat $NSE_5
             echo " "
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Advanced_Scan/NSE_Scan/
             touch Sitemap.log
             echo "==============================" >> Sitemap.log
             echo $(date) >> Sitemap.log
             echo "==============================" >> Sitemap.log
             echo " " >> Sitemap.log
             nmap --script http-sitemap-generator -p 80 $IP_Adv_Input >> Sitemap.log
             echo "==============================" >> Sitemap.log
             echo " "
             cat Sitemap.log
             echo " "
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Advanced_Scan/NSE_Scan for more Information\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi

    ;;

    "6") 
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           echo -e '                                 \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m       Information Information alot of it    \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                                 \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m        You have selected:\e[1;91m WHOIS Domain      \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           if [[ -e $NSE_6 ]];
           then
             sleep 4
             echo -e "                                 \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $NSE_6
             echo "==============================" >> $NSE_6
             echo  $(date) >> $NSE_6
             echo "==============================" >> $NSE_6
             echo " " >> $NSE_6
             nmap --script http-sitemap-generator -p 80 $IP_Adv_Input >> $NSE_6
             echo "==============================" >> $NSE_6
             echo " "
             sleep 4
             echo " "
             cat $NSE_6
             echo " "
             echo -e "                                 \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                 \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "                                 \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                                 \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
             echo -e "                                 \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Advanced_Scan/NSE_Scan/
             touch Whois.log
             echo "==============================" >> Whois.log
             echo $(date) >> Whois.log
             echo "==============================" >> Whois.log
             echo " " >> Whois.log
             nmap --script http-sitemap-generator -p 80 $IP_Adv_Input >> Whois.log
             echo "==============================" >> Whois.log
             echo " "
             cat Whois.log
             echo " "
             echo -e "                                 \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                 \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Advanced_Scan/NSE_Scan for more Information\e[0m"
             echo -e "                                 \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi
    ;;
    "7") 
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           echo -e '                              \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m        Ah vuvlnerabilities it is the way to go        \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                              \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m    You have selected:\e[1;91m Common Vulnerability Detection  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                       \e[96m\e[1;1m ==============================================================================='
           if [[ -e $NSE_7 ]];
           then
             sleep 4
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $NSE_7
             echo "==============================" >> $NSE_7
             echo  $(date) >> $NSE_7
             echo "==============================" >> $NSE_7
             echo " " >> $NSE_7
             nmap -sV --script vulners $IP_Adv_Input >> $NSE_7
             echo "==============================" >> $NSE_7
             echo " "
             sleep 4
             echo " "
             cat $NSE_7
             echo " "
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Advanced_Scan/NSE_Scan/
             touch CVE.log
             echo "==============================" >> CVE.log
             echo $(date) >> CVE.log
             echo "==============================" >> CVE.log
             echo " " >> CVE.log
             nmap -sV --script vulners $IP_Adv_Input >> CVE.log
             echo "==============================" >> CVE.log
             echo " "
             cat CVE.log
             echo " "
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Advanced_Scan/NSE_Scan for more Information\e[0m"
             echo -e "                              \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi
    
        ;;
    
    "0") 
          Adv_Scan_Banner
          EXIT_MENU_CHOICE_ADV="5" # Choice for IP or FILE
          while [[ "$EXIT_MENU_CHOICE_ADV" -ge "3" ]];
          do 
            echo ""
            echo $'                      \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Head back to main menu \e[0m'
            echo $'                      \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Re-enter Targer \e[0m'
            echo $'                      \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
            echo "" 
            read -p $'                      \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' EXIT_MENU_CHOICE_ADV
            echo " "

            if [ "$EXIT_MENU_CHOICE_ADV" == "1" ]
              then  
                ./Nmap_ToolK1t.sh
            elif [ "$EXIT_MENU_CHOICE_ADV" == "2" ]
              then 
                  cd bin/
                  ./Advanced_Scan.sh
                  cd ..
            elif [ "$EXIT_MENU_CHOICE_ADV" == "0" ]
              then
                  Adv_Scan_NSE
            else
                  clear
                  Adv_Scan_Banner                      
                  echo $'             s        \e[96m\e[1;93m ================================================================================'
                  echo $'                                         \e[31m            Re-enter your choice'
                  echo $'                     \e[96m\e[1;93m ================================================================================'
            fi 
          done
        ;;
    *)
          echo $'                     \e[96m\e[1;93m ================================================================================'
          echo $'                                         \e[31m            Re-enter your choice'
          echo $'                     \e[96m\e[1;93m ================================================================================'
          sleep 3
          Adv_Scan_NSE
      ;;

  esac
}

EXIT_FUN() #Script underneath after finishing of tool
{
  echo " "
  echo " "
  echo -e "                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;35m           Sometimes it's wise to scan before you exploit.           \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] "
  echo -e "                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;35m               More the information, Easier the scan                 \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] "
  echo " "
}
Adv_Scan_Banner
User_IP_FILE_Adv_Input
