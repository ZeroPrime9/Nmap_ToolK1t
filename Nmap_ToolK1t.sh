# !/bin/bash
# Author: Farzan Nobi

banner() # Introduction Banner
{
  clear
  version_check=$(cat Version.md)
  printf "\e[1;77m   ____  _____  ____    ____       _       _______       _________    ___      ___   _____     ___  ____    __  _________   \e[0m\n"
  printf "\e[1;77m |_   \|_   _||_   \  /   _|     / \     |_   __ \     |  _   _  | .     .  .     .|_   _|   |_  ||_  _|  /  ||  _   _  | \e[0m\n"
  printf "\e[1;77m   |   \ | |    |   \/   |      / _ \      | |__) |    |_/ | | \_|/  .-.  \/  .-.  \ | |       | |_/ /     | ||_/ | | \_|   \e[0m\n"
  printf "\e[1;77m   | |\ \| |    | |\  /| |     / ___ \     |  ___/         | |    | |   | || |   | | | |   _   |  __'.     | |    | |      \e[0m\n"
  printf "\e[1;77m  _| |_\   |_  _| |_\/_| |_  _/ /   \ \_  _| |_  _______  _| |_   \       /\       /_| |__/ | _| |  \ \_  _| |_  _| |_     \e[0m\n"
  printf "\e[1;77m  |_____|\____||_____||_____||____| |____||_____||_______||_____|   .___.'   .___.'|________||____||____||_____||_____|   \e[0m\n"
  printf "\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m        Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m          \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                         Version: $version_check\e[0m                          \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m           Follow me on Instagram: @Zero_Prime9\e[0m                   \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m      Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t\e[0m      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                    Welcome to Nmap ToolKit\e[0m                       \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "\n"
  printf "                                    \e[1;91m::  Disclaimer: Developers assume no liability\e[0m     \e[1;91m::\e[0m\n"
  printf "                                    \e[1;91m::  Search your victim, before you annihilate ;)\e[0m   \e[1;91m::\e[0m\n"

  #Checking if the directory exists or not.
  file_loc="Scanned_Target"
  if [ -e $file_loc ]
  then
     echo -e $"                                    \e[1;92m::\e[1;92m         Check Scanned_Target for logs\e[0m           \e[1;92m::\e[0m\n"
  else
      mkdir Scanned_Target
      echo -e $"                                    \e[1;92m::\e[1;92m         File Scanned_Target Created\e[0m             \e[1;92m::\e[0m\n"
  fi
}



user_input() # For selecting different type of scans
{
  Choice=" "
  echo " "
  echo " "
  echo $'\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Basic Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Nmap Nikto Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Nmap NetBios Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Advanced Scan \e[1;91m                         [Will Release in #V3.0 Update] \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Firewalls IDS Evasion and Spoofing \e[1;91m    [Will Release in #V2.2 Update] \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] Clear Logs \e[1;91m  \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m] Update Nmap ToolKit \e[1;91m                   [Update every 3 days ;)]                   \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m8\e[0m\e[1;92m] Quit Nmap ToolKit \e[1;91m                      \e[0m'

  read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' Choice

  echo " "

  if [ "$Choice" == "1" ] # When selecting Basic Scan
  then
      User_IP_FILE_Basic_Input
  elif [ "$Choice" == "2" ]
  then
      User_Input_Netbios_Nikto
  elif [ "$Choice" == "3" ]
  then
  	  User_Input_Netbios_Nikto
  elif [ "$Choice" == "4" ]
  then
      echo $'\e[1;91m Advanced Scan will come up in the next update Follow me in Instagram @Zero_Prime9 for more details \e[0m'
  elif [ "$Choice" == "5" ]
   then
      echo $'\e[1;91m Firewalls IDS Evasion and Spoofing will come up in the next update Follow me in Instagram @Zero_Prime9 for more details \e[0m'
  elif [ "$Choice" == "6" ]
   then
    Logs_DB
  elif [ "$Choice" == "7" ]
   then
     update_toolkit
  elif [ "$Choice" == "8" ]
   then
     echo $'\e[1;91m Have fun Hacking, Cheers Zero_Prime9 :)\e[0m'
     echo " "
     exit
  else
  	echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== You Have Selected An Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
    sleep 2
  fi

}



Logs_DB()
{
  log_choice=" "
  clear
  banner
  #BASIC SCAN LOGS
  file_basic="Scanned_Target/Basic_Scan/"
  #file_loc_ping="Scanned_Target/Basic_Scan/Ping_Scan.log"
  #file_loc_sV="Scanned_Target/Basic_Scan/Service_Detection_Scan.log"
  #file_loc_port="Scanned_Target/Basic_Scan/Common_Port_Scan.log"
  #file_loc_fast="Scanned_Target/Basic_Scan/Fast_Scan.log"
  #file_loc_sS="Scanned_Target/Basic_Scan/Basic_Stealth_Scan.log"
  #file_loc_protocol="Scanned_Target/Basic_Scan/Protocol_Support_Scan.log"
  #file_loc_tcp="Scanned_Target/Basic_Scan/TCP_Scan.log"
  #file_loc_udp="Scanned_Target/Basic_Scan/UDP_Scan.log"
  #file_loc_pingport="Scanned_Target/Basic_Scan/Ping_Scan_Port_Disabled_Scan.log"

  #NMAP NETBIOS LOGS
  file_Nmap_NetBios="Scanned_Target/Nmap_NetBios/"
  #file_loc_NetBios_Server_Scan="Scanned_Target/Nmap_NetBios/NNB_Server_Scan.log"
  #file_loc_NetBios_Server_Enum="Scanned_Target/Nmap_NetBios/NNB_Server_Enumeratiom.log"

  #NMAP NIKTO LOGS
  file_Nmap_Nikto="Scanned_Target/Nmap_Nikto/"
  #file_loc_Nikto_Http="Scanned_Target/Nmap_Nikto/NN_HTTP_Scan.log"
  #file_loc_Nikto_Https="Scanned_Target/Nmap_Nikto/NN_HTTPS_Scan.log"


  echo $'\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Clear Logs of Basic Scan\e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Clear Logs of Advanced Scan                       \e[1;91m      [Will Release in #V3.0 Update]\e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Clear Logs of Firewalls IDS Evasion and Spoofing \e[1;91m      [Will Release in #V2.2 Update] \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Clear Logs of Nmap NetBios Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Clear Logs of Nmap Nikto Scan   \e[0m'
  read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose which log to clear [1-5]: \e[0m' log_choice

  Conti_log="n"

  if [ "$log_choice" == "1" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo    $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m  Clear Logs of Basic Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[0m'
      read -p $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Basic Scan [y/n]: \e[0m' Conti_log
      echo " "

      if [ "$Conti_log" == "n" ]
      then
        clear_logs
      elif [ "$Conti_log" == "y" ]
      then
        if [ -f $file_basic ]
        then
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been already Cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m Taking You Back To Main Screen!     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 3
          banner
          user_input
        else
          cd Scanned_Target
          cd Basic_Scan
          rm *
          sleep 2
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;92m Taking you to Main Screen!   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 6
          cd ../..
          banner
          user_input
        fi

      else
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        clear_logs
      fi
    done

  elif [ "$log_choice" == "2" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo     $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m  Clear Logs of Advanced Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
      read -p  $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Advanced Scan [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        clear_logs
      elif [ "$Conti_log" == "y" ]
      then
        if [ -f $file_basic ]
        then
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been already Cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m Taking You Back To Main Screen!     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 3
          banner
          user_input
        else
          cd Scanned_Target
          cd Advanced_Scan
          rm *
          sleep 2
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;92m Taking you to Main Screen!  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 6
          cd ../..
          banner
          user_input
        fi

      else
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        clear_logs
      fi
    done

  elif [ "$log_choice" == "3" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo     $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m  Clear Logs of Firewalls IDS Evasion and Spoofing \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
      read -p  $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Firewalls IDS Evasion and Spoofing [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        clear_logs
      elif [ "$Conti_log" == "y" ]
      then
        if [ -f $file_basic ]
        then
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been already Cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m Taking You Back To Main Screen!     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 3
          banner
          user_input
        else
          cd Scanned_Target
          cd Firewall_IES
          rm *
          sleep 2
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;92m Taking you to Main Screen!  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 6
          cd ../..
          banner
          user_input
        fi
      else
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        clear_logs
      fi
    done

  elif [ "$log_choice" == "4" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo     $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m  Nmap NetBios Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
      read -p  $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Nmap NetBios Scan [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        clear_logs
      elif [ "$Conti_log" == "y" ]
      then
        if [ -f $file_Nmap_NetBios ]
        then
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been already Cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m Taking You Back To Main Screen!     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 3
          banner
          user_input
        else
          cd Scanned_Target
          cd Nmap_NetBios
          rm *
          sleep 2
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;92m Taking you to Main Screen!  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 6
          cd ../..
          banner
          user_input
        fi
      else
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        clear_logs
      fi
    done

  elif [ "$log_choice" == "5" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo     $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m  Nmap Nikto Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
      read -p  $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Nmap Nikto Scan [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        clear_logs
      elif [ "$Conti_log" == "y" ]
      then
        if [ -f $file_Nmap_Nikto ]
        then
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been already Cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m Taking You Back To Main Screen!     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 3
          banner
          user_input
        else
          cd Scanned_Target
          cd Nmap_Nikto
          rm *
          sleep 2
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;77m The Logs have been cleared  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;92m Taking you to Main Screen!  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
          sleep 6
          cd ../..
          banner
          user_input
        fi
      else
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        clear_logs
      fi
    done

  else
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
  fi

}



Basic_Scan_Banner() # Banner for the Basic Scan
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
  printf "\e[1;35m       .:.:.\e[0m\e[1;77m Recon Tool coded by:  @Zero_Prime9  $version_check  \e[0m\e[1;35m.:.:.\e[0m\n"
  printf "\e[1;35m       .:.:.\e[0m\e[1;77m                 Nmap_ToolK1t \e[0m\e[1;35m               .:.:.\e[0m\n"
  printf "\e[1;93m    :: Sometimes being Basic is all you need, never underestimate it ::\e[0m\n"

  printf "\n"
}



User_IP_FILE_Basic_Input()
{
  banner
  IP_FILE_Choice=" " # Choice for IP or FILE
  IP_FILE_Input=" "  # For Receving the input for IP
  Conti_FILE_IP="n"  # For continuing the IP or FILE
  echo ""
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 1.Scan a particular IP Address/Website \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] 2.Scan from a File\e[0m'
  echo ""
  read -p $'\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' IP_FILE_Choice
  echo " "

  if [ "$IP_FILE_Choice" == "1" ] #This is if the choice is IP/Website
  then
    echo $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m] You have selected:\e[1;91m IP Address/Website                     \e[0m'
    while [[ $Conti_FILE_IP == "n" ]];
    do
      read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter IP Address: \e[0m' IP_FILE_Input
      echo $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered IP Address is: \e[0m' $IP_FILE_Input
      read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to continue with the IP[y/n]: \e[0m' Conti_FILE_IP

      if [ "$Conti_FILE_IP" == "n" ]
      then
        echo " "
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        sleep 2
        echo " "
      elif [ "$Conti_FILE_IP" == "y" ] #To check if the choice is Basic scan and The choice is yes:
      then
        Basic_Scan_Choice_IP
      fi

  done

elif [ "$IP_FILE_Choice" == "2" ] #This is if the choice is a file
  then
      echo $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m] You have selected:\e[1;91m From a file                      \e[0m'

      while [[ $Conti_FILE_IP == "n" ]];
    	do
        read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter File Location: \e[0m' IP_FILE_Input
    		echo $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered File Location is: \e[0m' $IP_FILE_Input
    		read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to continue with the File location [y/n]: \e[0m' Conti_FILE_IP
        if [ "$Conti_FILE_IP" == "n" ]
        then
          echo " "
          echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
          sleep 2
          echo " "
          IP_
        elif [ "$Conti_FILE_IP" == "y" ] #To check if the choice is Basic scan and The choice is yes for File
        then
          Basic_Scan_Choice_File
        else
          echo " "
          echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
          sleep 2
          echo " "
        fi

    done

  else # For showing invalid choice
      echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
      sleep 1
  fi

}



Basic_Scan_Choice_IP() #The type of scans for BASIC_SCAN_CHOICE
{
  clear
  Basic_Scan_Banner
  bs_scan_sc=" "
  echo $'\e[96m\e[1;1m =============================================================='
  echo $'\e[31m        Target IP Address: \e[1;1m' $IP_FILE_Input
  echo $'\e[36m\e[1;1m =============================================================='
  echo " "
  echo $'\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Ping Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Service Version Detection Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Common Port Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Fast Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Basic Stealth Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] Protocol Support Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m] TCP Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m8\e[0m\e[1;92m] UDP Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m9\e[0m\e[1;92m] Ping Scan with port scan disabled \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1-9]: \e[0m' bs_scan_sc
  echo " "
  clear
  Basic_Scan_Banner
  echo ""

  file_location_BS="Scanned_Target/Basic_Scan"
  if [ -e $file_location_BS ]
  then
      echo " "
  else
      cd Scanned_Target
      mkdir Basic_Scan
      cd ..
  fi

  file_loc_ping="Scanned_Target/Basic_Scan/Ping_Scan.log"
  file_loc_sV="Scanned_Target/Basic_Scan/Service_Detection_Scan.log"
  file_loc_port="Scanned_Target/Basic_Scan/Common_Port_Scan.log"
  file_loc_fast="Scanned_Target/Basic_Scan/Fast_Scan.log"
  file_loc_sS="Scanned_Target/Basic_Scan/Basic_Stealth_Scan.log"
  file_loc_protocol="Scanned_Target/Basic_Scan/Protocol_Support_Scan.log"
  file_loc_tcp="Scanned_Target/Basic_Scan/TCP_Scan.log"
  file_loc_udp="Scanned_Target/Basic_Scan/UDP_Scan.log"
  file_loc_pingport="Scanned_Target/Basic_Scan/Ping_Scan_Port_Disabled_Scan.log"

  case $bs_scan_sc in

    "1" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Ping Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m' #Ping_Scan setup
           if [[ -e $file_loc_ping  ]];
           then
             sleep 2
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Hacking is a form of art, A puzzle to be solved\e[0m"
             sleep 4
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo $(date) >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo " " >> $file_loc_ping
             nmap -sP $IP_FILE_Input >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo " "
             sleep 4
             echo " "
             cat $file_loc_ping
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
              echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Basic_Scan
             touch Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo $(date) >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo " " >> Ping_Scan.log
             nmap -sP $IP_FILE_Input >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo " "
             cat Ping_Scan.log
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/for more Information\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi
      ;; # End of Ping_Scan setup

          # Setup for Service_Detection_Scan
      "2" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Service Version Detection Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
             if [[ -e $file_loc_sV ]];
             then
               sleep 2
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Give me your version number!!\e[0m"
               sleep 4
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
               echo " " >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo $(date) >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo " " >> $file_loc_sV
               nmap -sV $IP_FILE_Input >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               sleep 3
               echo " "
               cat $file_loc_sV
               echo " "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

             else
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
               sleep 4
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
               cd Scanned_Target/Basic_Scan
               touch Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo $(date) >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo " " >> Service_Detection_Scan.log
               nmap -sV $IP_FILE_Input >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo " "
               cat Service_Detection_Scan.log
               echo " "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
             fi

             ;; #End of Service_Detection_Scan setup

             # Setup for Common_Port_Scan
          "3" ) echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Common Port Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                echo " "
                if [[ -e $file_loc_port ]];
                then
                    sleep 2
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m An Open Door is always great!. Hi Open Port!\e[0m"
                    echo " "
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                    echo " " >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo $(date) >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo " " >> $file_loc_port
                    nmap $IP_FILE_Input >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    sleep 3
                    echo " "
                    cat $file_loc_port
                    echo " "
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                else
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                    sleep 4
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                    cd Scanned_Target/Basic_Scan
                    touch Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo $(date) >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo " " >> Common_Port_Scan.log
                    nmap $IP_FILE_Input >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo " "
                    cat Common_Port_Scan.log
                    echo " "
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                  fi

              ;; #End of Common_Port_Scan Setup

                     # Setup for Fast_Scan
              "4" ) echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Fast Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_fast ]];
                    then
                         sleep 2
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m The faster you are, more sadder the co-operate companies get!\e[0m"
                         echo " "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started... \e[0m"
                         echo " " >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo $(date) >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo " " >> $file_loc_fast
                         nmap -F $IP_FILE_Input >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         sleep 3
                         echo " "
                         cat $file_loc_fast
                         echo " "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                     else
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                       sleep 4
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                         cd Scanned_Target/Basic_Scan
                         touch Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo $(date) >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo " " >> Fast_Scan.log
                         nmap -F $IP_FILE_Input >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo " "
                         cat Fast_Scan.log
                         echo " "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete. \e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                       fi

               ;; #End of setup for Fast_Scan

              "5" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Basic Stealth Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_sS ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m The Quiter You Are, The More You Hear!\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo $(date) >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo " " >> $file_loc_sS
                        nmap -sS $IP_FILE_Input >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        sleep 3
                        echo " "
                        cat $file_loc_sS
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                        sleep 4
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo $(date) >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo " " >> Basic_Stealth_Scan.log
                        nmap -sS $IP_FILE_Input >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo " "
                        cat Basic_Stealth_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Basic_Stealth_Scan

              # Setup for Protocol Support Scan
              "6" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Protocol Support Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_protocol ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m A little bit of SMTP, A little bit of SSH, A little bit of FTP\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started... \e[0m"
                        echo " " >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo $(date) >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo " " >> $file_loc_protocol
                        nmap -sO $IP_FILE_Input >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        sleep 3
                        echo " "
                        cat $file_loc_protocol
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                      echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                      sleep 4
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo $(date) >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo " " >> Protocol_Support_Scan.log
                        nmap -sO $IP_FILE_Input >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo " "
                        cat Protocol_Support_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Protocol_Support_Scan

              #Setup for TCP_Scan
              "7" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m TCP Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_tcp ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Data, a lot of data. Money a lot of Money HEHE!.\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo $(date) >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo " " >> $file_loc_tcp
                        nmap -sT $IP_FILE_Input >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        sleep 3
                        echo " "
                        cat $file_loc_tcp
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information \e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan \e[0m"

                    else
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                        sleep 4
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo $(date) >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo " " >> TCP_Scan.log
                        nmap -sT $IP_FILE_Input >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        cat TCP_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for TCP_Scan

              #Setup for UDP_Scan
              "8" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m UDP Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_udp ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Stream all you want, but i am not paying ;)\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo " " >> $file_loc_udp
                        nmap -sU $IP_FILE_Input >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        sleep 3
                        echo " "
                        cat $file_loc_udp
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                        sleep 4
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo $(date) >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo " " >> UDP_Scan.log
                        nmap -sU $IP_FILE_Input >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo -e "\e[92m The Scan is complete."
                        echo " "
                        cat UDP_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for UDP_Scan

                #Setup for Ping Scan without Port Scanner
              "9" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Ping Scan with Port Scan Disabled \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_pingport ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m FBI Open UP! \e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_pingport
                        echo " " >> $ffile_loc_pingport
                        nmap -sn $IP_FILE_Input >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        sleep 3
                        echo " "
                        cat $file_loc_pingport
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete. \e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan \e[0m"

                    else
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup"
                        sleep 4
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started.."
                        cd Scanned_Target/Basic_Scan
                        touch Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo $(date) >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo " " >> Ping_Scan_Port_Disabled_Scan.log
                        nmap -sn $IP_FILE_Input >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo " "
                        cat Ping_Scan_Port_Disabled_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Ping_Scan_Port_Disabled_Scan

              "0" ) # For moving back
                    banner
                    user_input

              ;;

              *)
                 echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
                 sleep 3
                 Basic_Scan_Choice_IP

              ;;

  esac


}

Basic_Scan_Choice_File() #The type of scans for BASIC_SCAN_CHOICE
{
  clear
  Basic_Scan_Banner
  bs_scan_sc=" "
  echo $'\e[36m =============================================================='
  echo $'\e[31m        File Location: \e[1;1m' $IP_FILE_Input
  echo $'\e[36m =============================================================='
  echo " "
  echo $'\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Ping Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Service Version Detection Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Common Port Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Fast Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Basic Stealth Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] Protocol Support Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m] TCP Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m8\e[0m\e[1;92m] UDP Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m9\e[0m\e[1;92m] Ping Scan with port scan disabled \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1-9]: \e[0m' bs_scan_sc
  echo " "

  file_location_BS="Scanned_Target/Basic_Scan"
  if [ -e $file_location_BS ]
  then
      echo " "
  else
      cd Scanned_Target
      mkdir Basic_Scan
      cd ..
  fi

  file_loc_ping="Scanned_Target/Basic_Scan/Ping_Scan.log"
  file_loc_sV="Scanned_Target/Basic_Scan/Service_Detection_Scan.log"
  file_loc_port="Scanned_Target/Basic_Scan/Common_Port_Scan.log"
  file_loc_fast="Scanned_Target/Basic_Scan/Fast_Scan.log"
  file_loc_sS="Scanned_Target/Basic_Scan/Basic_Stealth_Scan.log"
  file_loc_protocol="Scanned_Target/Basic_Scan/Protocol_Support_Scan.log"
  file_loc_tcp="Scanned_Target/Basic_Scan/TCP_Scan.log"
  file_loc_udp="Scanned_Target/Basic_Scan/UDP_Scan.log"
  file_loc_pingport="Scanned_Target/Basic_Scan/Ping_Scan_Port_Disabled_Scan.log"

  case $bs_scan_sc in

    "1" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Ping Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m' #Ping_Scan setup
           if [[ -e $file_loc_ping  ]];
           then
             sleep 2
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Hacking is a form of art, A puzzle to be solved\e[0m "
             sleep 4
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m "
             echo " " >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo $(date) >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo " " >> $file_loc_ping
             nmap -sP -iL $IP_FILE_Input >> $file_loc_ping
             echo "==============================" >> $file_loc_ping
             echo " "
             cat $file_loc_ping
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete. "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information \e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup  "
             sleep 4
              echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started... "
             cd Scanned_Target/Basic_Scan
             touch Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo $(date) >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo " " >> Ping_Scan.log
             nmap -sP -iL $IP_FILE_Input >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo " "
             cat Ping_Scan.log
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete. \e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m "

           fi
      ;; # End of Ping_Scan setup

          # Setup for Service_Detection_Scan
      "2" ) echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Service Detection Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
             if [[ -e $file_loc_sV ]];
             then
               sleep 2
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Give me your version number!!\e[0m"
               sleep 4
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started... \e[0m"
               echo " " >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo $(date) >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo " " >> $file_loc_sV
               nmap -sV -iL $IP_FILE_Input >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo " "
               cat $file_loc_sV
               echo " "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete. \e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m "

             else
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup"
               sleep 4
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started... "
               cd Scanned_Target
               touch Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo $(date) >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo " " >> Service_Detection_Scan.log
               nmap -sV -iL $IP_FILE_Input >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               cat Service_Detection_Scan.log
               echo " "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete."
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more InformatioN"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan"
             fi

             ;; #End of Service_Detection_Scan setup

             # Setup for Common_Port_Scan
          "3" ) echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Common Port Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                echo " "
                if [[ -e $file_loc_port ]];
                then
                    sleep 2
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m An Open Door is always great!. Hi Open Port!\e[0m"
                    echo " "
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                    echo " " >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo $(date) >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo " " >> $file_loc_port
                    nmap -iL $IP_FILE_Input >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo " "
                    cat $file_loc_port
                    echo " "
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                else
                  echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                  sleep 4
                   echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                    cd Scanned_Target/Basic_Scan
                    touch Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo $(date) >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo " " >> Common_Port_Scan.log
                    nmap -iL $IP_FILE_Input >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    cat Common_Port_Scan.log
                    echo " "
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                    echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan \e[0m"
                  fi

              ;; #End of Common_Port_Scan Setup

                     # Setup for Fast_Scan
              "4" ) echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Fast Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_fast ]];
                    then
                         sleep 2
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m The faster you are, more sadder the co-operate companies get!\e[0m"
                         echo " "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m "
                         echo " " >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo $(date) >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo " " >> $file_loc_fast
                         nmap -F -iL $IP_FILE_Input >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         sleep 3
                         echo " "
                         cat $file_loc_fast
                         echo " "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan \e[0m"

                     else
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup"
                       sleep 4
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started..."
                         cd Scanned_Target/Basic_Scan
                         touch Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo $(date) >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo " " >> Fast_Scan.log
                         nmap -F -iL $IP_FILE_Input >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo " "
                         cat Fast_Scan.log
                         echo " "
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information \e[0m"
                         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                       fi

               ;; #End of setup for Fast_Scan

              "5" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Basic Stealth Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_sS ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m The Quiter You Are, The More You Hear\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo $(date) >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo " " >> $file_loc_sS
                        nmap -sS -iL $IP_FILE_Input >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        sleep 3
                        echo " "
                        cat $file_loc_sS
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m "

                    else
                      echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                      sleep 4
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo $(date) >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo " " >> Basic_Stealth_Scan.log
                        nmap -sS -iL $IP_FILE_Input >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo " "
                        cat Basic_Stealth_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Basic_Stealth_Scan

              # Setup for Protocol Support Scan
              "6" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m ProtocolSupport Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_protocol ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m A little bit of SMTP, A little bit of SSH, A little bit of FTP\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo $(date) >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo " " >> $file_loc_protocol
                        nmap -sO -iL $IP_FILE_Input >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        sleep 3
                        echo " "
                        cat $file_loc_protocol
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                      echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                      sleep 4
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo $(date) >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo " " >> Protocol_Support_Scan.log
                        nmap -sO -iL $IP_FILE_Input >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo " "
                        cat Protocol_Support_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Protocol_Support_Scan

              #Setup for TCP_Scan
              "7" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m TCP Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_tcp ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Data, a lot of data. Money a lot of Money HEHE!.\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo $(date) >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo " " >> $file_loc_tcp
                        nmap -sT -iL $IP_FILE_Input >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        sleep 3
                        echo " "
                        cat $file_loc_tcp
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan \e[0m"

                    else
                      echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                      sleep 4
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo $(date) >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo " " >> TCP_Scan.log
                        nmap -sT -iL $IP_FILE_Input >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo " "
                        cat TCP_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for TCP_Scan

              #Setup for UDP_Scan
              "8" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m UDP Scan\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_udp ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Stream all you want, but i am not paying ;)\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo " " >> $file_loc_udp
                        nmap -sU -iL $IP_FILE_Input >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        sleep 3
                        echo " "
                        cat $file_loc_udp
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                      echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                      sleep 4
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo $(date) >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo " " >> UDP_Scan.log
                        nmap -sU -iL $IP_FILE_Input >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo " "
                        cat UDP_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for UDP_Scan

                #Setup for Ping Scan without Port Scanner
              "9" )  echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Ping Scan with Port Scan Disabled\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    if [[ -e $file_loc_pingport ]];
                    then
                        sleep 2
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m FBI Open UP!\e[0m"
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_pingport
                        echo " " >> $file_loc_pingport
                        nmap -sn -iL $IP_FILE_Input >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        sleep 3
                        echo " "
                        cat $file_loc_pingport
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                      echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                      sleep 4
                       echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo $(date) >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo " " >> Ping_Scan_Port_Disabled_Scan.log
                        nmap -sn -iL $IP_FILE_Input >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo " "
                        cat Ping_Scan_Port_Disabled_Scan.log
                        echo " "
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Ping_Scan_Port_Disabled_Scan

              "0" ) # For moving back
                    banner
                    user_input

              ;;

              *)
                  echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
                  sleep 3
                 Basic_Scan_Choice_IP

              ;;

  esac

}

User_Input_Netbios_Nikto() #User Input for Netbios and Nikto
{
    IP_NN_Input=" "
    Conti_NN="n"
    while [[ "$Conti_NN" == "n" ]];
    do

      read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter Web Address/IP Address: \e[0m' IP_NN_Input
      echo $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered Web Address/IP Address is: \e[0m' $IP_NN_Input
      read -p $'\e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to continue with the Web Address/IP Address [y/n]: \e[0m' Conti_NN

      if [ "$Conti_NN" == "n" ]
      then
        echo " "
        echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        sleep 2
        echo " "
      fi
      #To check if the choice is Basic scan and The choice is yes:
      if [ "$Choice" == "4" -a "$Conti_NN" == "y" ]
      then
        Nmap_Nikto_Scan
      elif [ "$Choice" == "5" -a "$Conti_NN" == "y"  ]
      then
        Nmap_Netbios_Scan
      fi
  done

}


Nmap_Netbios_Banner() #NetBios_Nmap Banner
{
  printf "\e[1;77m _        _______  _______  _______  _        _______ _________ ______  _________ _______  _______       _______  _______  _______  _       \e[0m\n"
  printf "\e[1;77m( (    /|(       )(  ___  )(  ____ )( (    /| (  ____ \\__   __/(  ___ \ \__   __/(  ___  )(  ____ \     (  ____ \(  ____ \(  ___  )( (    /|\e[0m\n"
  printf "\e[1;77m|  \  ( || () () || (   ) || (    )||  \  ( || (    \/   ) (   | (   ) )   ) (   | (   ) || (    \/     | (    \/| (    \/| (   ) ||  \  ( |\e[0m\n"
  printf "\e[1;77m|   \ | || || || || (___) || (____)||   \ | || (__       | |   | (__/ /    | |   | |   | || (_____      | (_____ | |      | (___) ||   \ | |\e[0m\n"
  printf "\e[1;77m| (\ \) || |(_)| ||  ___  ||  _____)| (\ \) ||  __)      | |   |  __ (     | |   | |   | |(_____  )     (_____  )| |      |  ___  || (\ \) |\e[0m\n"
  printf "\e[1;77m| | \   || |   | || (   ) || (      | | \   || (         | |   | (  \ \    | |   | |   | |      ) |           ) || |      | (   ) || | \   |\e[0m\n"
  printf "\e[1;77m| )  \  || )   ( || )   ( || )      | )  \  || (____/\   | |   | )___) )___) (___| (___) |/\____) |     /\____) || (____/\| )   ( || )  \  |\e[0m\n"
  printf "\e[1;77m|/    )_)|/     \||/     \||/_____  |/    )_)(_______/   )_(   |/ \___/ \_______/(_______)\_______)_____\_______)(_______/|/     \||/    )_)\e[0m\n"
  printf "\e[1;77m                           (_____)                                                               (_____)                                    \e[0m\n"
  printf "\n"
  printf "\e[1;35m       :..:\e[0m\e[1;77m Recon Tool coded by:  @Zero_Prime9  $version_check        \e[0m\e[1;35m:..:\e[0m\n"
  printf "\e[1;35m       :..:\e[0m\e[1;77m                 Nmap_ToolK1t \e[0m\e[1;35m                     :..:\e[0m\n"
  printf "\e[1;36m:..:  Sizzle with Session Hijacking, Maybe that's all you need :..:\e[0m\n"
  printf "\n"

}

Nmap_Netbios_Scan() #NEtbios Nmap Scan
{
  clear
  Nmap_Netbios_Banner
  Nmap_Netbios_choice=" "
  echo $'\e[96m\e[1;1m =============================================================='
  echo $'\e[31m        Target IP Address: \e[1;1m' $IP_NN_Input
  echo $'\e[36m\e[1;1m =============================================================='
  echo " "
  echo $'\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Nmap NetBios Server Scan\e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Nmap NetBios Enumeration Scan \e[0m'
  echo $'\e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1 or 2]: \e[0m' Nmap_Netbios_choice

  file_location_NetBios_Nmap="Scanned_Target/Nmap_NetBios"
  if [ -e $file_location_NetBios_Nmap ]
  then
      echo " "
  else
      cd Scanned_Target
      mkdir Nmap_NetBios
      cd ..
  fi
 file_loc_NetBios_Server_Scan="Scanned_Target/Nmap_NetBios/NNB_Server_Scan.log"
 file_loc_NetBios_Server_Enum="Scanned_Target/Nmap_NetBios/NNB_Server_Enumeratiom.log"


 case $Nmap_Netbios_choice in

   "1" )
         echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Nmap NetBios Server Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
         if [[ -e $file_loc_NetBios_Server_Scan ]];
         then
             sleep 2
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m I will FIND you, I will HUNT you and I will HACK you\e[0m"
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             echo " " >> $file_loc_NetBios_Server_Scan
             echo "==============================" >> $file_loc_NetBios_Server_Scan
             echo $(date) >> $file_loc_NetBios_Server_Scan
             echo "==============================" >> $file_loc_NetBios_Server_Scan
             echo " " >> $file_loc_NetBios_Server_Scan
             nmap -sV -v -p 139,445 $IP_NN_Input    >> $file_loc_NetBios_Server_Scan
             echo "==============================" >> $file_loc_NetBios_Server_Scan
             sleep 3
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
             echo " "
             cat $file_loc_NetBios_Server_Scan
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_NetBios/ for more Information\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First NetBios Scan Setup\e[0m"
             sleep 4
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
               cd Scanned_Target/Nmap_NetBios
               touch NNB_Server_Scan.log
               echo "==============================" >> NNB_Server_Scan.log
               echo $(date) >> NNB_Server_Scan.log
               echo "==============================" >> NNB_Server_Scan.log
               echo " " >> NNB_Server_Scan.log
               nmap -sV -v -p 139,445 $IP_NN_Input   >> NNB_Server_Scan.log
               echo "==============================" >> NNB_Server_Scan.log
               echo " "
               cat NNB_Server_Scan.log
               echo " "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_NetBios/ for more Information\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
               fi
     ;;

     "2")
        echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m  Nmap NetBios Enumeration Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
        if [[ -e $file_loc_NetBios_Server_Enum ]];
        then
         sleep 2
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Let me let you on a secret, Linux is better then Windows.\e[0m"
         echo " "
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
         echo " " >> $file_loc_NetBios_Server_Enum
         echo "==============================" >> $file_loc_NetBios_Server_Enum
         echo $(date) >> $file_loc_NetBios_Server_Enum
         echo "==============================" >> $file_loc_NetBios_Server_Enum
         echo " " >> $file_loc_NetBios_Server_Enum
         nmap -sU --script nbstat.nse -p 137 $IP_NN_Input >> $file_loc_NetBios_Server_Enum
         echo "==============================" >> $file_loc_NetBios_Server_Enum
         sleep 3
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File\e[0m "
         echo " "
         cat $file_loc_NetBios_Server_Enum
         echo " "
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_NetBios/ for more Information\e[0m"
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

       else
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time Nikto Setup \e[0m"
         sleep 4
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started\e[0m"
           cd Scanned_Target/Nmap_NetBios
           touch NNB_Server_Enumeratiom.log
           echo "==============================" >> NNB_Server_Enumeratiom.log
           echo $(date) >> NNB_Server_Enumeratiom.log
           echo "==============================" >> NNB_Server_Enumeratiom.log
           echo " " >> NNB_Server_Enumeratiom.log
           nmap -sU --script nbstat.nse -p 137 $IP_NN_Input >> NNB_Server_Enumeratiom.log
           echo "==============================" >> NNB_Server_Enumeratiom.log
           echo " "
           cat NNB_Server_Enumeratiom.log
           echo " "
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_Nikto/ for more Information\e[0m"
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m  "
           fi

           ;;


  "0")
      banner
      user_input

      ;;

   *)
     echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
     sleep 3
     Nmap_Netbios_Scan

     ;;
esac

}



Nmap_Nikto_Banner() #Banner for Nikto
{
  clear
  echo " "
  printf "\e[1;77m _        _______  _______  _______  _       _________ _       _________ _______       _______  _______  _______  _       \e[0m\n"
  printf "\e[1;77m( (    /|(       )(  ___  )(  ____ )( (    /|\__   __/| \    /\\__   __/(  ___  )     (  ____ \(  ____ \(  ___  )( (    /|\e[0m\n"
  printf "\e[1;77m|  \  ( || () () || (   ) || (    )||  \  ( |   ) (   |  \  / /   ) (   | (   ) |     | (    \/| (    \/| (   ) ||  \  ( |\e[0m\n"
  printf "\e[1;77m|   \ | || || || || (___) || (____)||   \ | |   | |   |  (_/ /    | |   | |   | |     | (_____ | |      | (___) ||   \ | |\e[0m\n"
  printf "\e[1;77m| (\ \) || |(_)| ||  ___  ||  _____)| (\ \) |   | |   |   _ (     | |   | |   | |     (_____  )| |      |  ___  || (\ \) |\e[0m\n"
  printf "\e[1;77m| | \   || |   | || (   ) || (      | | \   |   | |   |  ( \ \    | |   | |   | |           ) || |      | (   ) || | \   |\e[0m\n"
  printf "\e[1;77m| )  \  || )   ( || )   ( || )      | )  \  |___) (___|  /  \ \   | |   | (___) |     /\____) || (____/\| )   ( || )  \  |\e[0m\n"
  printf "\e[1;77m|/    )_)|/     \||/     \||/_____  |/    )_)\_______/|_/    \/   )_(   (_______)_____\_______)(_______/|/     \||/    )_)\e[0m\n"
  printf "\e[1;77m                           (_____)                                             (_____)                                    \e[0m\n"
  printf"\n"
  printf "\e[1;35m       :..:\e[0m\e[1;77m Recon Tool coded by:  @Zero_Prime9  $version_check        \e[0m\e[1;35m:..:\e[0m\n"
  printf "\e[1;35m       :..:\e[0m\e[1;77m                 Nmap_ToolK1t \e[0m\e[1;35m                     :..:\e[0m\n"
  printf "\e[1;36m:..:  Web Server Vulnerability is amazing. Ever heard of Web Defacement? :..:\e[0m\n"
  echo " "

}



Nmap_Nikto_Scan() #Nmap Scan using Nikto
{
 clear
 Nmap_Nikto_Banner
 Nmap_Nikto_choice=" "
 echo $'\e[96m\e[1;1m =============================================================='
 echo $'\e[31m        Target IP Address: \e[1;1m' $IP_NN_Input
 echo $'\e[36m\e[1;1m =============================================================='
 echo " "
 echo $'\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Nmap HTTP  Server scan with Nikto\e[0m'
 echo $'\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Nmap HTTPS Server scan with Nikto \e[0m'
 echo $'\e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
 read -p $'\n\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1 or 2]: \e[0m' Nmap_Nikto_choice

 file_location_Nikto_Nmap="Scanned_Target/Nmap_Nikto"
 if [ -e $file_location_Nikto_Nmap ]
 then
     echo " "
 else
     cd Scanned_Target
     mkdir Nmap_Nikto
     cd ..
 fi
file_loc_Nikto_Http="Scanned_Target/Nmap_Nikto/NN_HTTP_Scan.log"
file_loc_Nikto_Https="Scanned_Target/Nmap_Nikto/NN_HTTPS_Scan.log"

 case $Nmap_Nikto_choice in

   "1" )
         echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Nmap HTTP Server Scan with Nikto\e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
         if [[ -e $file_loc_Nikto_Http ]];
         then
             sleep 2
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m Vulnerability where are you?\e[0m"
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             echo " " >> $file_loc_Nikto_Http
             echo "==============================" >> $file_loc_Nikto_Http
             echo $(date) >> $file_loc_Nikto_Http
             echo "==============================" >> $file_loc_Nikto_Http
             echo " " >> $file_loc_Nikto_Http
             nmap -p80 $IP_NN_Input -oG - | nikto -h ->> $file_loc_Nikto_Http
             echo "==============================" >> $file_loc_Nikto_Http
             sleep 3
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
             echo " "
             cat $file_loc_Nikto_Http
             echo " "
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_Nikto/ for more Information\e[0m"
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Nikto Setup\e[0m"
             sleep 4
             echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
               cd Scanned_Target/Nmap_Nikto
               touch NN_HTTP_Scan.log
               echo "==============================" >> NN_HTTP_Scan.log
               echo $(date) >> NN_HTTP_Scan.log
               echo "==============================" >> NN_HTTP_Scan.log
               echo " " >> NN_HTTP_Scan.log
               nmap -p80 $IP_NN_Input -oG - | nikto -h - >> NN_HTTP_Scan.log
               echo "==============================" >> NN_HTTP_Scan.log
               echo " "
               cat NN_HTTP_Scan.log
               echo " "
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_Nikto/ for more Information\e[0m"
               echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
               fi
     ;;

     "2")
        echo $'\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Nmap HTTPS Server Scan with Nikto \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] '
        if [[ -e $file_loc_Nikto_Https ]];
        then
         sleep 2
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;33m HTTPS, An S can't save your life ;)\e[0m"
         echo " "
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
         echo " " >> $file_loc_Nikto_Https
         echo "==============================" >> $file_loc_Nikto_Https
         echo $(date) >> $file_loc_Nikto_Https
         echo "==============================" >> $file_loc_Nikto_Https
         echo " " >> $file_loc_Nikto_Https
         nmap -p80,443 $IP_NN_Input -oG - | nikto -h ->> $file_loc_Nikto_Https
         echo "==============================" >> $file_loc_Nikto_Https
         sleep 3
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File\e[0m "
         echo " "
         cat $file_loc_Nikto_Https
         echo " "
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_Nikto/ for more Information\e[0m"
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

       else
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time Nikto Setup \e[0m"
         sleep 4
         echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started\e[0m"
           cd Scanned_Target/Nmap_Nikto
           touch NN_HTTPS_Scan.log
           echo "==============================" >> NN_HTTPS_Scan.log
           echo $(date) >> NN_HTTPS_Scan.log
           echo "==============================" >> NN_HTTPS_Scan.log
           echo " " >> NN_HTTPS_Scan.log
           nmap -p80,443 $IP_NN_Input -oG - | nikto -h ->> NN_HTTPS_Scan.log
           echo "==============================" >> NN_HTTPS_Scan.log
           echo " "
           cat NN_HTTPS_Scan.log
           echo " "
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_Nikto/ for more Information\e[0m"
           echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m  "
           fi

           ;;

      "0")
          banner
          user_input

          ;;

      *)
      echo $'\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Retype =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
      sleep 3
      Nmap_Nikto_Scan

  ;;

 esac

}



update_toolkit() #Updation of Tool
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



EXIT_FUN() #Script underneath afte finishing of tool
{
  echo " "
  echo " "
  echo -e "                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;35m           Soemtimes it's wise to scan before you exploit.           \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] "
  echo -e "                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;35m           More the information, Easier the scan                     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] "
  echo " "
}

banner
user_input
EXIT_FUN
