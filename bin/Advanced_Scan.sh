#!/bin/bash
#Author: Farzan Nobi Aka Zero_Prime9
#Nmap_Toolk1t Subtool Advanced_Scan



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
      Adv_Scan_Choice_IP
  else
    echo " "
    echo $'                     \e[96m\e[1;93m  ================================================================================'
    echo $'                                          \e[31m            Re-enter your choice'
    echo $'                     \e[96m\e[1;93m  ================================================================================'
    sleep 2
    echo " "
    User_IP_FILE_Adv_Input
  fi
      #To check if the choice is Netbios and Nikto and The choice is yes:

  done
} 


Adv_Scan_Choice_IP()
{
  clear
  Adv_Scan_Banner
  adv_scan_sc=" "
  echo $'                      \e[36m ================================================================================'
  echo $'                                       \e[31m        Target IP Address: \e[1;1m' $IP_Adv_Input
  echo $'                      \e[36m ================================================================================'
  echo " "
  echo $'                                \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] SCTP INIT Scan \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] SCTP Cookie Echo Scan \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] TCP Acknowledge Scan \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] TCP Maimon Scan \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] TCP Custom Flag Scan \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] FTP Bounce Scan \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m] Nmap Script Engine Scan [NSE] \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  echo " "
  read -p $'                                \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1-10 or 0]: \e[0m' adv_scan_sc
  clear
  Adv_Scan_Banner
  echo ""
  file_location_ADV="Scanned_Target/Advanced_Scan"
  if [ -e $file_location_ADV ]
  then
      :
  else
      cd Scanned_Target
      mkdir Advanced_Scan
      cd ..
  fi
  
  file_loc_sctp_init="Scanned_Target/Advanced_Scan/SCTP_Init.log"
  file_loc_sctp_echo="Scanned_Target/Advanced_Scan/SCTP_Cookie.log"
  file_loc_TCP_Ack="Scanned_Target/Advanced_Scan/TCP_ACK.log"
  file_loc_TCP_maimon="Scanned_Target/Advanced_Scan/TCP_Maimon.log"
  file_loc_CFS="Scanned_Target/Advanced_Scan/TCP_Custom.log"
  file_loc_ftp="Scanned_Target/Advanced_Scan/FTP_Bounce.log"

  case $adv_scan_sc in

      "1") 
           echo $'                               \e[96m\e[1;1m =============================================================='
           echo -e '                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m  If you heard of SS7 then you know ;)   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m  You have selected:\e[1;91m SCTP INIT Scan      \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                               \e[96m\e[1;1m =============================================================='
           if [[ -e $file_loc_sctp_init  ]];
           then
             sleep 4
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $file_loc_sctp_init
             echo "==============================" >> $file_loc_sctp_init
             echo                                        $(date) >> $file_loc_sctp_init
             echo "==============================" >> $file_loc_sctp_init
             echo " " >> $file_loc_sctp_init
             nmap -sn -PY $IP_Adv_Input >> $file_loc_sctp_init 
             echo "==============================" >> $file_loc_sctp_init
             echo " "
             sleep 4
             echo " "
             cat $file_loc_sctp_init
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Advanced_Scan/ for more Information\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
              echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Advanced_Scan
             touch SCTP_Init.log
             echo "==============================" >> SCTP_Init.log
             echo $(date) >> SCTP_Init.log
             echo "==============================" >> SCTP_Init.log
             echo " " >> SCTP_Init.log
             nmap -sn -PY $IP_Adv_Input >> SCTP_Init.log
             echo "==============================" >> SCTP_Init.log
             echo " "
             cat SCTP_Init.log
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Advanced_Scan/ for more Information\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi

      ;;

      "2") 
           echo $'                               \e[96m\e[1;1m =============================================================='
           echo -e '                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m     Error: 4 way handshake-disrupted      \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m  You have selected:\e[1;91m SCTP Cookie Echo Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                               \e[96m\e[1;1m =============================================================='
           if [[ -e $file_loc_sctp_echo  ]];
           then
             sleep 4
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $file_loc_sctp_echo
             echo "==============================" >> $file_loc_sctp_echo
             echo $(date) >> $file_loc_sctp_echo
             echo "==============================" >> $file_loc_sctp_echo
             echo " " >> $file_loc_sctp_echo
             nmap -sZ $IP_Adv_Input >> $file_loc_sctp_echo
             echo "==============================" >> $file_loc_sctp_echo
             echo " "
             sleep 4
             echo " "
             cat $file_loc_sctp_echo
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View View Scanned_Target/Advanced_Scan/ for more Information\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Advanced_Scan
             touch SCTP_Cookie.log
             echo "==============================" >> SCTP_Cookie.log
             echo $(date) >> SCTP_Cookie.log
             echo "==============================" >> SCTP_Cookie.log
             echo " " >> SCTP_Cookie.log
             nmap -sZ $IP_Adv_Input >> SCTP_Cookie.log
             echo "==============================" >> SCTP_Cookie.log
             echo " "
             cat SCTP_Cookie.log
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View View Scanned_Target/Advanced_Scan/ for more Information\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi

      ;;

      "3") 
           echo $'                               \e[96m\e[1;1m =============================================================='
           echo -e '                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Analysing Firewall state seems intresting \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m  You have selected:\e[1;91m TCP Acknowledge Scan  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                               \e[96m\e[1;1m =============================================================='
           if [[ -e $file_loc_TCP_Ack  ]];
           then
             sleep 4
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $file_loc_TCP_Ack
             echo "==============================" >> $file_loc_TCP_Ack
             echo $(date) >> $file_loc_TCP_Ack
             echo "==============================" >> $file_loc_TCP_Ack
             echo " " >> $file_loc_TCP_Ack
             nmap -sA -T4 $IP_Adv_Input >> $file_loc_TCP_Ack
             echo "==============================" >> $file_loc_TCP_Ack
             echo " "
             sleep 4
             echo " "
             cat $file_loc_TCP_Ack
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Advanced_Scan
             touch TCP_ACK.log
             echo "==============================" >> TCP_ACK.log
             echo $(date) >> TCP_ACK.log
             echo "==============================" >> TCP_ACK.log
             echo " " >> TCP_ACK.log
             nmap -sA -T4 $IP_Adv_Input >> TCP_ACK.log
             echo "==============================" >> TCP_ACK.log
             echo " "
             cat TCP_ACK.log
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View View Scanned_Target/Advanced_Scan/ for more Information\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi

      ;;

      "4") 
           echo $'                               \e[96m\e[1;1m =============================================================='
           echo -e '                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Maimon you made a really powerful technique \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m     You have selected:\e[1;91m TCP Maimon Scan      \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                               \e[96m\e[1;1m =============================================================='
           if [[ -e $file_loc_TCP_maimon  ]];
           then
             sleep 4
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $file_loc_TCP_maimon
             echo "==============================" >> $file_loc_TCP_maimon
             echo $(date) >> $file_loc_TCP_maimon
             echo "==============================" >> $file_loc_TCP_maimon
             echo " " >> $file_loc_TCP_maimon
             nmap -sM -T4 $IP_Adv_Input >> $file_loc_TCP_maimon
             echo "==============================" >> $file_loc_TCP_maimon
             echo " "
             sleep 4
             echo " "
             cat $file_loc_TCP_maimon
             echo " "
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Advanced_Scan
             touch TCP_Maimon.log
             echo "==============================" >> TCP_Maimon.log
             echo $(date) >> TCP_Maimon.log
             echo "==============================" >> TCP_Maimon.log
             echo " " >> TCP_Maimon.log
             nmap -sM -T4 $IP_Adv_Input >> TCP_Maimon.log
             echo "==============================" >> TCP_Maimon.log
             echo " "
             cat TCP_Maimon.log
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Advanced_Scan/ for more Information\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi

      ;;

      "5") 
           Custom_IP=" "
           echo $'                               \e[96m\e[1;1m =============================================================='
           echo -e '                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m   Customizing Packets seems intresting ;)  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m     You have selected:\e[1;91m TCP Custom Scan     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                               \e[96m\e[1;1m -------------------------------------------------------------'
           echo $'                               \e[92m\e[1;1m  Custom Flags need too be used here like PSH, SYN, RST, FIN,'
           echo $'                               \e[92m\e[1;1m  ACK. When typing the flags type it togther in uppercase'
           echo $'                               \e[92m\e[1;1m  Example: To implement FIN and SYN type it as "FINSYN"'
           echo $'                               \e[96m\e[1;1m -------------------------------------------------------------'
           echo " "
           echo $'                               \e[96m\e[1;1m =============================================================='o
           read -p $'                                     \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter TCP Flag: \e[0m' Custom_IP
           echo $'                                     \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered Flag are:\e[0m' $Custom_IP
           sleep 2
           if [[ -e $file_loc_CFS  ]];
           then
             sleep 4
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $file_loc_CFS
             echo "==============================" >> $file_loc_CFS
             echo $(date) >> $file_loc_CFS
             echo "==============================" >> $file_loc_CFS
             echo " " >> $file_loc_CFS
             nmap -sS --scanflags $Custom_IP -T4 $IP_Adv_Input >> $file_loc_CFS
             echo "==============================" >> $file_loc_CFS
             echo " "
             sleep 4
             echo " "
             cat $file_loc_CFS
             echo " "
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Advanced_Scan
             touch TCP_Custom.log
             echo "==============================" >> TCP_Custom.log
             echo $(date) >> TCP_Custom.log
             echo "==============================" >> TCP_Custom.log
             echo " " >> TCP_Custom.log
             nmap -sS --scanflags $Custom_IP -T4 $IP_Adv_Input >> TCP_Custom.log
             echo "==============================" >> TCP_Custom.log
             echo " "
             cat TCP_Custom.log
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Advanced_Scan/ for more Information\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi

      ;;

      "6") 
           Custom_FTP=""
           echo $'                               \e[96m\e[1;1m =============================================================='
           echo -e '                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Found an FTP Server noice lets bounce it :) \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m     You have selected:\e[1;91m FTP Bounce Scan      \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                               \e[96m\e[1;1m =============================================================='
           echo $'                               \e[96m\e[1;1m -------------------------------------------------------------'
           echo $'                               \e[92m\e[1;1m  FTP Bounce is used to connect and grab the data to your'
           echo $'                               \e[92m\e[1;1m  third party server;). Type in your server and let it'
           echo $'                               \e[92m\e[1;1m  do the job'
           echo $'                               \e[96m\e[1;1m -------------------------------------------------------------'
           echo " "
           echo $'                               \e[96m\e[1;1m =============================================================='o
           read -p $'                                     \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter 3rd party Server: \e[0m' Custom_FTP
           echo $'                                     \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered server is:\e[0m' $Custom_FTP
           if [[ -e $file_loc_ftp  ]];
           then
             sleep 4
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $file_loc_ftp
             echo "==============================" >> $file_loc_ftp
             echo $(date) >> $file_loc_ftp
             echo "==============================" >> $file_loc_ftp
             echo " " >> $file_loc_ftp
             nmap -Pn -b $Custom_FTP $IP_Adv_Input >> $file_loc_ftp
             echo "==============================" >> $file_loc_ftp
             echo " "
             sleep 4
             echo " "
             cat $file_loc_ftp
             echo " "
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
             echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Advanced_Scan
             touch FTP_Bounce.log
             echo "==============================" >> FTP_Bounce.log
             echo $(date) >> FTP_Bounce.log
             echo "==============================" >> FTP_Bounce.log
             echo " " >> TCP_ACK.log
             nmap -Pn -b $Custom_FTP $IP_Adv_Input >> FTP_Bounce.log
             echo "==============================" >> FTP_Bounce.log
             echo " "
             cat FTP_Bounce.log
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Advanced_Scan/ for more Information\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi
            
      ;;

      "7") echo "Scan 7"
            cd bin 
            ./NSE.sh 
            cd ..
      ;;

      "0") 
          Adv_Scan_Banner
          EXIT_MENU_CHOICE_ADV="5" # Choice for IP or FILE
          while [[ "$EXIT_MENU_CHOICE_ADV" -ge "3" ]];
          do 
            echo ""
            echo $'                      \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Head back to main menu \e[0m'
            echo $'                      \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Re-enter Target\e[0m'
            echo $'                      \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
            echo "" 
            read -p $'                      \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' EXIT_MENU_CHOICE_ADV
            echo " "

            if [ "$EXIT_MENU_CHOICE_ADV" == "1" ]
              then  
                ./Nmap_ToolK1t.sh
            elif [ "$EXIT_MENU_CHOICE_ADV" == "2" ]
              then 
                  User_IP_FILE_Adv_Input
            elif [ "$EXIT_MENU_CHOICE_ADV" == "0" ]
              then
                  Adv_Scan_Choice_IP
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
          Adv_Scan_Choice_IP
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

User_IP_FILE_Adv_Input