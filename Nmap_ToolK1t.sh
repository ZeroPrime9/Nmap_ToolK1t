# !/bin/bash
# Author: Farzan Mohammed

banner() # Introduction Banner
{
  clear
  version_check=$(cat Version.md)
  printf "\e[1;77m    _        _______  _______  _______ _________ _______  _______  _        _        __ _________ \e[0m\n"
  printf "\e[1;77m   ( (    /|(       )(  ___  )(  ____ )\__   __/(  ___  )(  ___  )( \      | \    /\/  \\__   __/ \e[0m\n"
  printf "\e[1;77m   |  \  ( || () () || (   ) || (    )|   ) (   | (   ) || (   ) || (      |  \  / /\/) )  ) ( \e[0m\n"
  printf "\e[1;77m   |   \ | || || || || (___) || (____)|   | |   | |   | || |   | || |      |  (_/ /   | |  | | \e[0m\n"
  printf "\e[1;77m   | (\ \) || |(_)| ||  ___  ||  _____)   | |   | |   | || |   | || |      |   _ (    | |  | | \e[0m\n"
  printf "\e[1;77m   | | \   || |   | || (   ) || (         | |   | |   | || |   | || |      |  ( \ \   | |  | | \e[0m\n"
  printf "\e[1;77m   | )  \  || )   ( || )   ( || )         | |   | (___) || (___) || (____/\|  /  \ \__) (_ | | \e[0m\n"
  printf "\e[1;77m   |/    )_)|/     \||/     \||/_____     )_(   (_______)(_______)(_______/|_/    \/\____/ )_( \e[0m\n"
  printf "\e[1;77m                            (_____)                                                        \e[0m\n"
  printf "\n"
  printf "\e[1;93m          ..:..           Recon tool created by: Farzan Nobi [Zero_Prime9]         ..:..\e[0m\n"
  printf "\e[1;91m          ..:..                        Version: $version_check                             ..:..\e[0m\n"
  printf "\e[1;93m          ..:..               Follow me on Instagram: @Zero_Prime9                 ..:..\e[0m\n"
  printf "\e[1;93m          ..:..         Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t     ..:..\e[0m\n"
  printf "\e[1;93m          ..:..                    Welcome to Nmap ToolKit                         ..:..\e[0m\n"
  printf "\n"
  printf "  \e[1;31m                      :: Disclaimer: Developers assume no liability    ::\e[0m\n"
  printf "  \e[1;31m                      :: Search your victim, before you annihilate ;)  ::\e[0m\n"


  #Checking if the directory exists or not.
  file_loc="Scanned_Target"
  if [ -e $file_loc ]
  then
     echo $'  \e[1;32m                      ::        Check Scanned_Target for logs          ::\e[0m'
  else
      mkdir Scanned_Target
      echo $'  \e[1;32m                      ::        File Scanned_Target created            ::\e[0m'
  fi
}

user_input() # For selecting different type of scans
{
  Choice=" "
  echo " "
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 1.Basic Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 2.Advanced Scan \e[1;91m                         [Will Release in #V1.2 Update] \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 3.Firewalls IDS Evasion and Spoofing \e[1;91m    [Will Release in #V1.3 Update] \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 4.Nmap Nikto Scan \e[1;91m                       [Will Release in #V1.4 Update] \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 5.Nmap NetBios Scan \e[1;91m                     [Will Release in #V1.5 Update] \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 6.Update Nmap ToolKit \e[1;91m                    \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 7.Quit Nmap ToolKit \e[1;91m                      \e[0m'

  read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' Choice

  echo " "

  if [ "$Choice" == "1" ]
  then
  	Basic_Scan_Input
  elif [ $"$Choice" == "2" ]
  then
    echo $'\e[1;91m Advanced Scan will come up in the next update Follow me in Instagram @Zero_Prime9 for more details \e[0m'
  elif [ "$Choice" == "3" ]
  then
  	echo $'\e[1;91m Firewalls IDS Evasion and Spoofing will come up in the next update Follow me in Instagram @Zero_Prime9 for more details \e[0m'
  elif [ "$Choice" == "4" ]
  then
    echo $'\e[1;91m Nmap Nikto Scan will come up in the next update Follow me in Instagram @Zero_Prime9 for more details \e[0m'
  elif [ "$Choice" == "5" ]
   then
    echo $'\e[1;91m Nmap NetBios Scan will come up in the next update Follow me in Instagram @Zero_Prime9 for more details\e[0m'
  elif [ "$Choice" == "6" ]
   then
    update_toolkit
  elif [ "$Choice" == "7" ]
   then
    echo $'\e[1;91m Have fun Hacking, Cheers Zero_Prime9 :)\e[0m'
    echo " "
    exit
  else
  	echo -e "\e[91m You have selected an Invalid Choice"
	echo " "
	echo $'\e[1;92m Sometimes its wise to scan before you exploit \e[0m'
	echo $'\e[1;92m More the information, Easier the attack \e[0m'
  fi
  }

update_toolkit()
{
  banner
  update_file=$(pwd)
  version_check=$(cat Version.md)
  echo " "
  echo $'\e[1;92m[\e[0m\e[1;77m |\/| \e[0m\e[1;92m] Gathering Resources...  \e[0m'
  sleep 2
  echo $'\e[1;92m[\e[0m\e[1;77m |/\| \e[0m\e[1;92m] Connecting to Github  \e[0m'
  echo " "
  git clone https://github.com/ZeroPrime9/Nmap_ToolK1t.git
  version_recheck=$(cat Nmap_ToolK1t/Version.md)
  if [ "$version_check" == "$version_recheck" ]
  then
    echo " "
    echo $'\e[1;92m[\e[0m\e[1;77m |\/| \e[0m\e[1;91m] ===========================================  \e[0m'
    echo $'\e[1;92m[\e[0m\e[1;77m |/\| \e[0m\e[1;92m] Nmap_ToolK1t is up to date!.  \e[0m'
    echo $'\e[1;92m[\e[0m\e[1;77m |\/| \e[0m\e[1;92m] Loading Nmap_ToolK1t home screen  \e[0m'
    echo $'\e[1;92m[\e[0m\e[1;77m |/\| \e[0m\e[1;91m] ===========================================  \e[0m'
    rm -rf Nmap_ToolK1t
    sleep 8
    banner
    user_input
  else
    echo $'\e[1;92m[\e[0m\e[1;77m |\/| \e[0m\e[1;92m] Nmap_ToolK1t needs update, Proceeding to update  \e[0m'
    sleep 2
    echo $'\e[1;92m[\e[0m\e[1;77m |/\| \e[0m\e[1;92m] Updating Nmap ToolKit  \e[0m'
    cd  Nmap_ToolK1t
    mv Nmap_ToolK1t.sh $update_file
    mv CHANGELOG.md $update_file
    mv LICENSE.md $update_file
    mv README.md $update_file
    mv Version.md $update_file
    mv Screenshots $update_file
    cd ..
    rm -rf Nmap_ToolK1t
    printf "\e[1;92m[\e[0m\e[1;77m |\/| \e[0m\e[1;92m] Latest version: $version_recheck \e[0m"
    sleep 2
    echo " "
    sleep 2
    echo $'\e[1;92m[\e[0m\e[1;77m |/\| \e[0m\e[1;92m] Nmap ToolKit is updated to the latest version  \e[0m'
    echo $'\e[1;92m[\e[0m\e[1;77m |\/| \e[0m\e[1;92m] Relaunch Nmap_ToolK1t and enjoy  \e[0m'
    exit
  fi

}

basic_scan_banner() # Banner for the Basic Scan
{
  clear
  echo " "
  printf "\e[1;77m ______   _______  _______ _________ _______       _______  _______  _______  _       \e[0m\n"
  printf "\e[1;77m(  ___ \ (  ___  )(  ____ \\__   __/(  ____ \     (  ____ \(  ____ \(  ___  )( (    /|\e[0m\n"
  printf "\e[1;77m| (   ) )| (   ) || (    \/   ) (   | (    \/     | (    \/| (    \/| (   ) ||  \  ( |\e[0m\n"
  printf "\e[1;77m| (__/ / | (___) || (_____    | |   | |           | (_____ | |      | (___) ||   \ | |\e[0m\n"
  printf "\e[1;77m|  __ (  |  ___  |(_____  )   | |   | |           (_____  )| |      |  ___  || (\ \) | \e[0m\n"
  printf "\e[1;77m| (  \ \ | (   ) |      ) |   | |   | |                 ) || |      | (   ) || | \   |\e[0m\n"
  printf "\e[1;77m| )___) )| )   ( |/\____) |___) (___| (____/\     /\____) || (____/\| )   ( || )  \  |\e[0m\n"
  printf "\e[1;77m|/ \___/ |/     \|\_______)\_______/(_______/_____\_______)(_______/|/     \||/    )_)\e[0m\n"
  printf "\n"
  printf "\e[1;93m       .:.:.\e[0m\e[1;77m Recon Tool coded by:  @Zero_Prime9  V_1.0.0 \e[0m\e[1;93m.:.:.\e[0m\n"
  printf "\e[1;93m       .:.:.\e[0m\e[1;77m                 Nmap_ToolK1t \e[0m\e[1;93m               .:.:.\e[0m\n"
  printf "\e[1;93m    :: Sometimes being Basic is all you need, never underestimate it ::\e[0m\n"

  printf "\n"
}


Basic_Scan_Input()
{
  basic_scan_banner
  Choice_BS=" " # Choice for IP or File location
  echo $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 0.Go Back \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 1.Scan a particular IP Address/Website \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 2.Scan from a File\e[0m'
  read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' Choice_BS
  echo " "

  if [[ $Choice_BS == 1 ]]; then
      echo -e "\e[93m You have selected:\e[91m Scan a particular IP Address/Website"
      ip_input_bs
  elif [[ $Choice_BS == 2 ]]; then
      echo -e "\e[93m You have selected:\e[91m Scan From a File"
      file_input_bs
  elif [[ $Choice_BS == 0 ]]; then
	  banner
	  user_input
  else
      echo -e "\e[91m Invalid option \e[0m"
  fi

}
Basic_Scan_Choice_IP() #The type of scans for BASIC_SCAN_CHOICE
{
  clear
  basic_scan_banner
  bs_scan_sc=" "
  echo $'\e[36m =============================================================='
  echo $'\e[31m        Target IP Address: ' $IP
  echo $'\e[36m =============================================================='
  echo " "
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 1.Ping Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 2.Service Version Detection Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 3.Common Port Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 4.Fast Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 5.Basic Stealth Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 6.Protocol Support Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 7.TCP Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 8.UDP Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 9.Ping Scan with port scan disabled \e[0m'
  read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1-9]: \e[0m' bs_scan_sc
  echo " "
  file_loc_ping="Scanned_Target/Ping_Scan.log"
  file_loc_sV="Scanned_Target/Service_Detection_Scan.log"
  file_loc_port="Scanned_Target/Common_Port_Scan.log"
  file_loc_fast="Scanned_Target/Fast_Scan.log"
  file_loc_sS="Scanned_Target/Basic_Stealth_Scan.log"
  file_loc_protocol="Scanned_Target/Protocol_Support_Scan.log"
  file_loc_tcp="Scanned_Target/TCP_Scan.log"
  file_loc_udp="Scanned_Target/UDP_Scan.log"
  file_loc_pingport="Scanned_Target/Ping_Scan_Port_Disabled_Scan.log"

  case $bs_scan_sc in

    "1" )  echo -e "\e[93m You have selected:\e[32m Ping Scan"  #Ping_Scan setup
           if [[ -e $file_loc_ping  ]];
           then
             sleep 2
             echo -e "\e[91m :: Hacking is a form of art, A puzzle to be solved  ::"
             echo -e "\e[91m Processing the logs..."
             echo " " >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo $(date) >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo " " >> $file_loc_ping
             nmap -sP $IP >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo " "
             echo -e "\e[92m The Scan is complete."
             echo -e "\e[92m Loading the Log File."
             sleep 3
             echo " "
             cat $file_loc_ping
             echo " "
             echo -e "\e[92m View Scanned_Target/Ping_Scan for more information"
             echo -e "\e[92m Check the date and time to see the latest scan "

           else
             echo -e "\e[91m Running First Scan setup"
             echo -e "\e[91m Processing the logs..."
             cd Scanned_Target
             touch Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo $(date) >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo " " >> Ping_Scan.log
             nmap -sP $IP >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo -e "\e[92m The Scan is complete."
             echo " "
             cat Ping_Scan.log
             echo " "
             echo -e "\e[92m View Scanned_Target/Ping_Scan for more information"
             echo -e "\e[92m Check the date and time to see the latest scan "

           fi
      ;; # End of Ping_Scan setup

          # Setup for Service_Detection_Scan
      "2" ) echo -e "\e[93m You have selected:\e[32m Service Version Detection Scan"
             if [[ -e $file_loc_sV ]];
             then
               sleep 2
               echo -e "\e[92m A little bit of icing in the cake"
               echo -e "\e[91m Processing the logs..."
               echo " " >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo $(date) >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo " " >> $file_loc_sV
               nmap -sV $IP >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo -e "\e[92m The Scan is complete."
               echo -e "\e[92m Loading the Log File."
               sleep 3
               echo " "
               cat $file_loc_sV
               echo " "
               echo -e "\e[92m View Scanned_Target/Service_Detection_Scan for more information"
               echo -e "\e[92m Check the date and time to see the latest scan "

             else
               echo -e "\e[91m Running First Scan setup"
               echo -e "\e[91m Processing the logs..."
               cd Scanned_Target
               touch Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo $(date) >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo " " >> Service_Detection_Scan.log
               nmap -sV $IP >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo -e "\e[92m The Scan is complete."
               echo " "
               cat Service_Detection_Scan.log
               echo " "
               echo -e "\e[92m View Scanned_Target/Service_Detection_Scan for more information"
               echo -e "\e[92m Check the date and time to see the latest scan "
             fi

             ;; #End of Service_Detection_Scan setup

             # Setup for Common_Port_Scan
          "3" ) echo -e "\e[93m You have selected:\e[32m Common Port Scan"
                echo " "
                if [[ -e $file_loc_port ]];
                then
                    sleep 2
                    echo -e "\e[92m An open door is always great, Hi port!"
                    echo -e "\e[91m Processing the logs..."
                    echo " " >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo $(date) >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo " " >> $file_loc_port
                    nmap $IP >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo -e "\e[92m The Scan is complete."
                    echo -e "\e[92m Loading the Log File."
                    sleep 3
                    echo " "
                    cat $file_loc_port
                    echo " "
                    echo -e "\e[92m View Scanned_Target/Common_Port_Scan for more information"
                    echo -e "\e[92m Check the date and time to see the latest scan "

                else
                    echo -e "\e[91m Running First Scan setup"
                    echo -e "\e[91m Processing the logs..."
                    cd Scanned_Target
                    touch Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo $(date) >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo " " >> Common_Port_Scan.log
                    nmap $IP >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo -e "\e[92m The Scan is complete."
                    echo " "
                    cat Common_Port_Scan.log
                    echo " "
                    echo -e "\e[92m View Scanned_Target/Common_Port_Scan for more information"
                    echo -e "\e[92m Check the date and time to see the latest scan "
                  fi

              ;; #End of Common_Port_Scan Setup

                     # Setup for Fast_Scan
              "4" ) echo -e "\e[93m You have selected:\e[32m Fast Scan"
                    if [[ -e $file_loc_fast ]];
                    then
                         sleep 2
                         echo -e "\e[92m They say riding fast is always a thrill, Same for hacking!"
                         echo -e "\e[91m Processing the logs..."
                         echo " " >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo $(date) >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo " " >> $file_loc_fast
                         nmap -F $IP >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo -e "\e[92m The Scan is complete."
                         echo -e "\e[92m Loading the Log File."
                         sleep 3
                         echo " "
                         cat $file_loc_fast
                         echo " "
                         echo -e "\e[92m View Scanned_Target/Fast Scan for more information"
                         echo -e "\e[92m Check the date and time to see the latest scan "

                     else
                         echo -e "\e[91m Running First Scan setup"
                         echo -e "\e[91m Processing the logs..."
                         cd Scanned_Target
                         touch Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo $(date) >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo " " >> Fast_Scan.log
                         nmap -F $IP >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo -e "\e[92m The Scan is complete."
                         echo " "
                         cat Fast_Scan.log
                         echo " "
                         echo -e "\e[92m View Scanned_Target/Fast Scan for more information"
                         echo -e "\e[92m Check the date and time to see the latest scan "
                       fi

               ;; #End of setup for Fast_Scan

              "5" )  echo -e "\e[93m You have selected:\e[32m Basic Stealth Scan"
                    if [[ -e $file_loc_sS ]];
                    then
                        sleep 2
                        echo -e "\e[92m The Quiter you are the more you hear."
                        echo -e "\e[91m Processing the logs..."
                        echo " " >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo $(date) >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo " " >> $file_loc_sS
                        nmap -sS $IP >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo -e "\e[92m The Scan is complete."
                        echo -e "\e[92m Loading the Log File."
                        sleep 3
                        echo " "
                        cat $file_loc_sS
                        echo " "
                        echo -e "\e[92m View Scanned_Target/Basic_Stealth_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "

                    else
                        echo -e "\e[91m Running First Scan setup"
                        echo -e "\e[91m Processing the logs..."
                        cd Scanned_Target
                        touch Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo $(date) >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo " " >> Basic_Stealth_Scan.log
                        nmap -sS $IP >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo -e "\e[92m The Scan is complete."
                        echo " "
                        cat Basic_Stealth_Scan.log
                        echo " "
                        echo -e "\e[92m View Scanned_Target/Basic_Stealth_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "
                        fi

              ;; #End of Setup for Basic_Stealth_Scan

              # Setup for Protocol Support Scan
              "6" )  echo -e "\e[93m You have selected:\e[32m Protocol Support Scan"
                    if [[ -e $file_loc_protocol ]];
                    then
                        sleep 2
                        echo -e "\e[92m Sometimes a single Protocol is enough to takedown an entire Industry"
                        echo -e "\e[91m Processing the logs..."
                        echo " " >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo $(date) >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo " " >> $file_loc_protocol
                        nmap -sS $IP >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo -e "\e[92m The Scan is complete."
                        echo -e "\e[92m Loading the Log File."
                        sleep 3
                        echo " "
                        cat $file_loc_protocol
                        echo " "
                        echo -e "\e[92m View Scanned_Target/Protocol_Support_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "

                    else
                        echo -e "\e[91m Running First Scan setup"
                        echo -e "\e[91m Processing the logs..."
                        cd Scanned_Target
                        touch Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo $(date) >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo " " >> Protocol_Support_Scan.log
                        nmap -sS $IP >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo -e "\e[92m The Scan is complete."
                        echo " "
                        cat Protocol_Support_Scan.log
                        echo " "
                        echo -e "\e[92m View Scanned_Target/Protocol_Support_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "
                        fi

              ;; #End of Setup for Protocol_Support_Scan

              #Setup for TCP_Scan
              "7" )  echo -e "\e[93m You have selected:\e[32m TCP Scan"
                    if [[ -e $file_loc_tcp ]];
                    then
                        sleep 2
                        echo -e "\e[92m Transmission of data and capturing that data is a skill."
                        echo -e "\e[91m Processing the logs..."
                        echo " " >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo $(date) >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo " " >> $file_loc_tcp
                        nmap -sS $IP >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo -e "\e[92m The Scan is complete."
                        echo -e "\e[92m Loading the Log File."
                        sleep 3
                        echo " "
                        cat $file_loc_tcp
                        echo " "
                        echo -e "\e[92m View Scanned_Target/TCP_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "

                    else
                        echo -e "\e[91m Running First Scan setup"
                        echo -e "\e[91m Processing the logs..."
                        cd Scanned_Target
                        touch TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo $(date) >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo " " >> TCP_Scan.log
                        nmap -sS $IP >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo -e "\e[92m The Scan is complete."
                        echo " "
                        cat TCP_Scan.log
                        echo " "
                        echo -e "\e[92m View Scanned_Target/TCP_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "
                        fi

              ;; #End of Setup for TCP_Scan

              #Setup for UDP_Scan
              "8" )  echo -e "\e[93m You have selected:\e[32m UDP Scan"
                    if [[ -e $file_loc_udp ]];
                    then
                        sleep 2
                        echo -e "\e[92m Everyone can stream, Now lets check who is streaming what ;)"
                        echo -e "\e[91m Processing the logs..."
                        echo " " >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo " " >> $file_loc_udp
                        nmap -sS $IP >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo -e "\e[92m The Scan is complete."
                        echo -e "\e[92m Loading the Log File."
                        sleep 3
                        echo " "
                        cat $file_loc_udp
                        echo " "
                        echo -e "\e[92m View Scanned_Target/UDP_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "

                    else
                        echo -e "\e[91m Running First Scan setup"
                        echo -e "\e[91m Processing the logs..."
                        cd Scanned_Target
                        touch UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo $(date) >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo " " >> UDP_Scan.log
                        nmap -sS $IP >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo -e "\e[92m The Scan is complete."
                        echo " "
                        cat UDP_Scan.log
                        echo " "
                        echo -e "\e[92m View Scanned_Target/UDP_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "
                        fi

              ;; #End of Setup for UDP_Scan

                #Setup for Ping Scan without Port Scanner
              "9" )  echo -e "\e[93m You have selected:\e[32m Ping Scan with port scan disabled "
                    if [[ -e $file_loc_pingport ]];
                    then
                        sleep 2
                        echo -e "\e[92m Sometimes you need to knock before you enter."
                        echo -e "\e[91m Processing the logs..."
                        echo " " >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_pingport
                        echo " " >> $ffile_loc_pingport
                        nmap -sS $IP >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        echo -e "\e[92m The Scan is complete."
                        echo -e "\e[92m Loading the Log File."
                        sleep 3
                        echo " "
                        cat $file_loc_pingport
                        echo " "
                        echo -e "\e[92m View Scanned_Target/Ping_Scan_Port_Disabled_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "

                    else
                        echo -e "\e[91m Running First Scan setup"
                        echo -e "\e[91m Processing the logs..."
                        cd Scanned_Target
                        touch Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo $(date) >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo " " >> Ping_Scan_Port_Disabled_Scan.log
                        nmap -sS $IP >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo -e "\e[92m The Scan is complete."
                        echo " "
                        cat Ping_Scan_Port_Disabled_Scan.log
                        echo " "
                        echo -e "\e[92m View Scanned_Target/Ping_Scan_Port_Disabled_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "
                        fi

              ;; #End of Setup for Ping_Scan_Port_Disabled_Scan

              *) echo -e "\e[91m Invalid Choice "

              ;;

  esac


}

Basic_Scan_Choice_File() #The type of scans for BASIC_SCAN_CHOICE
{
  clear
  basic_scan_banner
  bs_scan_sc=" "
  echo $'\e[36m =============================================================='
  echo $'\e[31m        File Location: ' $IP
  echo $'\e[36m =============================================================='
  echo " "
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 1.Ping Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 2.Service Version Detection Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 3.Common Port Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 4.Fast Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 5.Basic Stealth Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 6.Protocol Support Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 7.TCP Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 8.UDP Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 9.Ping Scan with port scan disabled \e[0m'
  read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1-9]: \e[0m' bs_scan_sc
  echo " "
  file_loc_ping="Scanned_Target/Ping_Scan.log"
  file_loc_sV="Scanned_Target/Service_Detection_Scan.log"
  file_loc_port="Scanned_Target/Common_Port_Scan.log"
  file_loc_fast="Scanned_Target/Fast_Scan.log"
  file_loc_sS="Scanned_Target/Basic_Stealth_Scan.log"
  file_loc_protocol="Scanned_Target/Protocol_Support_Scan.log"
  file_loc_tcp="Scanned_Target/TCP_Scan.log"
  file_loc_udp="Scanned_Target/UDP_Scan.log"
  file_loc_pingport="Scanned_Target/Ping_Scan_Port_Disabled_Scan.log"

  case $bs_scan_sc in

    "1" )  echo -e "\e[93m You have selected:\e[32m Ping Scan"  #Ping_Scan setup
           if [[ -e $file_loc_ping  ]];
           then
             sleep 2
             echo -e "\e[91m :: Hacking is a form of art, A puzzle to be solved  ::"
             echo -e "\e[91m Processing the logs..."
             echo " " >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo $(date) >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo " " >> $file_loc_ping
             nmap -sP -iL $IP >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo " "
             echo -e "\e[92m The Scan is complete."
             echo -e "\e[92m Loading the Log File."
             sleep 3
             echo " "
             cat $file_loc_ping
             echo " "
             echo -e "\e[92m View Scanned_Target/Ping_Scan for more information"
             echo -e "\e[92m Check the date and time to see the latest scan "

           else
             echo -e "\e[91m Running First Scan setup"
             echo -e "\e[91m Processing the logs..."
             cd Scanned_Target
             touch Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo $(date) >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo " " >> Ping_Scan.log
             nmap -sP -iL $IP >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo -e "\e[92m The Scan is complete."
             echo " "
             cat Ping_Scan.log
             echo " "
             echo -e "\e[92m View Scanned_Target/Ping_Scan for more information"
             echo -e "\e[92m Check the date and time to see the latest scan "

           fi
      ;; # End of Ping_Scan setup

          # Setup for Service_Detection_Scan
      "2" ) echo -e "\e[93m You have selected:\e[32m Service Version Detection Scan"
             if [[ -e $file_loc_sV ]];
             then
               sleep 2
               echo -e "\e[92m A little bit of icing in the cake"
               echo -e "\e[91m Processing the logs..."
               echo " " >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo $(date) >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo " " >> $file_loc_sV
               nmap -sV -iL $IP >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo -e "\e[92m The Scan is complete."
               echo -e "\e[92m Loading the Log File."
               sleep 3
               echo " "
               cat $file_loc_sV
               echo " "
               echo -e "\e[92m View Scanned_Target/Service_Detection_Scan for more information"
               echo -e "\e[92m Check the date and time to see the latest scan "

             else
               echo -e "\e[91m Running First Scan setup"
               echo -e "\e[91m Processing the logs..."
               cd Scanned_Target
               touch Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo $(date) >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo " " >> Service_Detection_Scan.log
               nmap -sV -iL $IP >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo -e "\e[92m The Scan is complete."
               echo " "
               cat Service_Detection_Scan.log
               echo " "
               echo -e "\e[92m View Scanned_Target/Service_Detection_Scan for more information"
               echo -e "\e[92m Check the date and time to see the latest scan "
             fi

             ;; #End of Service_Detection_Scan setup

             # Setup for Common_Port_Scan
          "3" ) echo -e "\e[93m You have selected:\e[32m Common Port Scan"
                echo " "
                if [[ -e $file_loc_port ]];
                then
                    sleep 2
                    echo -e "\e[92m An open door is always great, Hi port!"
                    echo -e "\e[91m Processing the logs..."
                    echo " " >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo $(date) >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo " " >> $file_loc_port
                    nmap -iL $IP >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo -e "\e[92m The Scan is complete."
                    echo -e "\e[92m Loading the Log File."
                    sleep 3
                    echo " "
                    cat $file_loc_port
                    echo " "
                    echo -e "\e[92m View Scanned_Target/Common_Port_Scan for more information"
                    echo -e "\e[92m Check the date and time to see the latest scan "

                else
                    echo -e "\e[91m Running First Scan setup"
                    echo -e "\e[91m Processing the logs..."
                    cd Scanned_Target
                    touch Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo $(date) >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo " " >> Common_Port_Scan.log
                    nmap -iL $IP >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo -e "\e[92m The Scan is complete."
                    echo " "
                    cat Common_Port_Scan.log
                    echo " "
                    echo -e "\e[92m View Scanned_Target/Common_Port_Scan for more information"
                    echo -e "\e[92m Check the date and time to see the latest scan "
                  fi

              ;; #End of Common_Port_Scan Setup

                     # Setup for Fast_Scan
              "4" ) echo -e "\e[93m You have selected:\e[32m Fast Scan"
                    if [[ -e $file_loc_fast ]];
                    then
                         sleep 2
                         echo -e "\e[92m They say riding fast is always a thrill, Same for hacking!"
                         echo -e "\e[91m Processing the logs..."
                         echo " " >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo $(date) >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo " " >> $file_loc_fast
                         nmap -F -iL $IP >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo -e "\e[92m The Scan is complete."
                         echo -e "\e[92m Loading the Log File."
                         sleep 3
                         echo " "
                         cat $file_loc_fast
                         echo " "
                         echo -e "\e[92m View Scanned_Target/Fast Scan for more information"
                         echo -e "\e[92m Check the date and time to see the latest scan "

                     else
                         echo -e "\e[91m Running First Scan setup"
                         echo -e "\e[91m Processing the logs..."
                         cd Scanned_Target
                         touch Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo $(date) >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo " " >> Fast_Scan.log
                         nmap -F -iL $IP >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo -e "\e[92m The Scan is complete."
                         echo " "
                         cat Fast_Scan.log
                         echo " "
                         echo -e "\e[92m View Scanned_Target/Fast Scan for more information"
                         echo -e "\e[92m Check the date and time to see the latest scan "
                       fi

               ;; #End of setup for Fast_Scan

              "5" )  echo -e "\e[93m You have selected:\e[32m Basic Stealth Scan"
                    if [[ -e $file_loc_sS ]];
                    then
                        sleep 2
                        echo -e "\e[92m The Quiter you are the more you hear."
                        echo -e "\e[91m Processing the logs..."
                        echo " " >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo $(date) >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo " " >> $file_loc_sS
                        nmap -sS -iL $IP >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo -e "\e[92m The Scan is complete."
                        echo -e "\e[92m Loading the Log File."
                        sleep 3
                        echo " "
                        cat $file_loc_sS
                        echo " "
                        echo -e "\e[92m View Scanned_Target/Basic_Stealth_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "

                    else
                        echo -e "\e[91m Running First Scan setup"
                        echo -e "\e[91m Processing the logs..."
                        cd Scanned_Target
                        touch Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo $(date) >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo " " >> Basic_Stealth_Scan.log
                        nmap -sS -iL $IP >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo -e "\e[92m The Scan is complete."
                        echo " "
                        cat Basic_Stealth_Scan.log
                        echo " "
                        echo -e "\e[92m View Scanned_Target/Basic_Stealth_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "
                        fi

              ;; #End of Setup for Basic_Stealth_Scan

              # Setup for Protocol Support Scan
              "6" )  echo -e "\e[93m You have selected:\e[32m Protocol Support Scan"
                    if [[ -e $file_loc_protocol ]];
                    then
                        sleep 2
                        echo -e "\e[92m Sometimes a single Protocol is enough to takedown an entire Industry"
                        echo -e "\e[91m Processing the logs..."
                        echo " " >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo $(date) >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo " " >> $file_loc_protocol
                        nmap -sO -iL $IP >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo -e "\e[92m The Scan is complete."
                        echo -e "\e[92m Loading the Log File."
                        sleep 3
                        echo " "
                        cat $file_loc_protocol
                        echo " "
                        echo -e "\e[92m View Scanned_Target/Protocol_Support_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "

                    else
                        echo -e "\e[91m Running First Scan setup"
                        echo -e "\e[91m Processing the logs..."
                        cd Scanned_Target
                        touch Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo $(date) >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo " " >> Protocol_Support_Scan.log
                        nmap -sO -iL $IP >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo -e "\e[92m The Scan is complete."
                        echo " "
                        cat Protocol_Support_Scan.log
                        echo " "
                        echo -e "\e[92m View Scanned_Target/Protocol_Support_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "
                        fi

              ;; #End of Setup for Protocol_Support_Scan

              #Setup for TCP_Scan
              "7" )  echo -e "\e[93m You have selected:\e[32m TCP Scan"
                    if [[ -e $file_loc_tcp ]];
                    then
                        sleep 2
                        echo -e "\e[92m Transmission of data and capturing that data is a skill."
                        echo -e "\e[91m Processing the logs..."
                        echo " " >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo $(date) >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo " " >> $file_loc_tcp
                        nmap -sT -iL $IP >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo -e "\e[92m The Scan is complete."
                        echo -e "\e[92m Loading the Log File."
                        sleep 3
                        echo " "
                        cat $file_loc_tcp
                        echo " "
                        echo -e "\e[92m View Scanned_Target/TCP_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "

                    else
                        echo -e "\e[91m Running First Scan setup"
                        echo -e "\e[91m Processing the logs..."
                        cd Scanned_Target
                        touch TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo $(date) >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo " " >> TCP_Scan.log
                        nmap -sT -iL $IP >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo -e "\e[92m The Scan is complete."
                        echo " "
                        cat TCP_Scan.log
                        echo " "
                        echo -e "\e[92m View Scanned_Target/TCP_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "
                        fi

              ;; #End of Setup for TCP_Scan

              #Setup for UDP_Scan
              "8" )  echo -e "\e[93m You have selected:\e[32m UDP Scan"
                    if [[ -e $file_loc_udp ]];
                    then
                        sleep 2
                        echo -e "\e[92m Everyone can stream, Now lets check who is streaming what ;)"
                        echo -e "\e[91m Processing the logs..."
                        echo " " >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo " " >> $file_loc_udp
                        nmap -sU -iL $IP >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo -e "\e[92m The Scan is complete."
                        echo -e "\e[92m Loading the Log File."
                        sleep 3
                        echo " "
                        cat $file_loc_udp
                        echo " "
                        echo -e "\e[92m View Scanned_Target/UDP_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "

                    else
                        echo -e "\e[91m Running First Scan setup"
                        echo -e "\e[91m Processing the logs..."
                        cd Scanned_Target
                        touch UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo $(date) >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo " " >> UDP_Scan.log
                        nmap -sU -iL $IP >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo -e "\e[92m The Scan is complete."
                        echo " "
                        cat UDP_Scan.log
                        echo " "
                        echo -e "\e[92m View Scanned_Target/UDP_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "
                        fi

              ;; #End of Setup for UDP_Scan

                #Setup for Ping Scan without Port Scanner
              "9" )  echo -e "\e[93m You have selected:\e[32m Ping Scan with port scan disabled "
                    if [[ -e $file_loc_pingport ]];
                    then
                        sleep 2
                        echo -e "\e[92m Sometimes you need to knock before you enter."
                        echo -e "\e[91m Processing the logs..."
                        echo " " >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_pingport
                        echo " " >> $ffile_loc_pingport
                        nmap -sn -iL $IP >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        echo -e "\e[92m The Scan is complete."
                        echo -e "\e[92m Loading the Log File."
                        sleep 3
                        echo " "
                        cat $file_loc_pingport
                        echo " "
                        echo -e "\e[92m View Scanned_Target/Ping_Scan_Port_Disabled_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "

                    else
                        echo -e "\e[91m Running First Scan setup"
                        echo -e "\e[91m Processing the logs..."
                        cd Scanned_Target
                        touch Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo $(date) >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo " " >> Ping_Scan_Port_Disabled_Scan.log
                        nmap -sn -iL $IP >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo -e "\e[92m The Scan is complete."
                        echo " "
                        cat Ping_Scan_Port_Disabled_Scan.log
                        echo " "
                        echo -e "\e[92m View Scanned_Target/Ping_Scan_Port_Disabled_Scan for more information"
                        echo -e "\e[92m Check the date and time to see the latest scan "
                        fi

              ;; #End of Setup for Ping_Scan_Port_Disabled_Scan

              *) echo -e "\e[91m Invalid Choice "

              ;;
  esac
}


ip_input_bs() #IP Address Input for Basic Scan
{
	IP=" "
	ip_choice="n"
  while [[ $ip_choice == "n" ]];
	do
		echo " "
		read -p $'\e[1;31m Enter IP Address/Website:  \e[0m' IP
		echo $'\e[1;33m The entered IP Address is: \e[0m' $IP
		read -p $'\e[1;33m Do you want to continue with the IP [y/n]\e[0m' ip_choice
done
Basic_Scan_Choice_IP
}


file_input_bs() #File Location Input for Basic Scan
{
	Scan_FILE=" "
	file_choice="n"
  while [[ $file_choice == "n" ]];
	do
		echo " "
		read -p $'\e[1;31m Enter File Location:  \e[0m' IP
		echo $'\e[1;33m The entered IP Address is: \e[0m' $IP
		read -p $'\e[1;33m Do you want to continue with the selected file[y/n]: \e[0m' file_choice
done
Basic_Scan_Choice_File
}
banner
user_input
