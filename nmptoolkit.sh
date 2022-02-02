#!/bin/bash
#Author: Farzan Mohammed
#Version: 3.0
#Nmap_Toolkit

banner() # Introduction Banner
{
  clear
  version_check=$(cat Version.md)
  nmap_version=$(nmap --version | sed -nr '/[0-9]/{s/^[^0-9]*([0-9]+\.?[0-9]*).*$/\1/p;q}')
 
  printf "           \e[1;91m  _        _______  _______  _______  _________ _________ _______  _______ _     _   __   _________ \e[0m\n"
  printf "           \e[1;91m ( (    /|(       )(  ___  )(  ____ ) \__   __/(  ___  )(  ___  )( \      | \    /\ /  \  \__   __/ \e[0m\n"
  printf "           \e[1;92m |  \  ( || () () || (   ) || (    )|    ) (   | (   ) || (   ) || (      |  \  / / \/) )    ) ( \e[0m\n"
  printf "           \e[1;92m |   \ | || || || || (___) || (____)|    | |   | |   | || |   | || |      |  (_/ /    | |    | |        \e[0m\n"
  printf "           \e[1;92m | (\ \) || |(_)| ||  ___  ||  _____)    | |   | |   | || |   | || |      |   _ (     | |    | | \e[0m\n"
  printf "           \e[1;92m | | \   || |   | || (   ) || (          | |   | |   | || |   | || |      |  ( \ \    | |    | | \e[0m\n"
  printf "           \e[1;91m | )  \  || )   ( || )   ( || )          | |   | (___) || (___) || (____/\|  /  \ \ __) (_   | | \e[0m\n" 
  printf "           \e[1;91m |/    )_)|/     \||/     \||/           )_(   (_______)(_______)(_______/|_/    \/ \____/   )_( \e[0m\n" 
  printf "\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                    Welcome to Nmap ToolKit\e[0m                       \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m        Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m          \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m                   Follow me on Instagram: @Zero_Prime9\e[0m           \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m      Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t      \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                Visit: https://www.zeroprime9.com                 \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                       Nmap Version:\e[1;92m V$nmap_version \e[0m                       \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                    Toolkit Version:\e[1;92m $version_check \e[0m                        \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;93m________________________________________________________________________________\e[0m\n\n"
  printf "                                    \e[1;91m::  Disclaimer: Developers assume no liability\e[0m     \e[1;91m::\e[0m\n"
  printf "                                    \e[1;91m::  Search your victim, before you annihilate ;)\e[0m   \e[1;91m::\e[0m\n"

  #Checking if the directory exists or not.
  file_loc="Scanned_Target"
  if [ -e $file_loc ]
  then
     echo -e $"                                    \e[1;92m::\e[1;92m         Check Scanned_Target for logs\e[0m           \e[1;92m::\e[0m"
  else
      mkdir Scanned_Target
      echo -e $"                                    \e[1;92m::\e[1;92m         File Scanned_Target Created\e[0m             \e[1;92m::\e[0m"
  fi
  printf "                      \e[1;93m________________________________________________________________________________\e[0m\n\n"
}



banner2() # Introduction Banner
{
  clear
  version_check=$(cat Version.md)
  printf "           \e[1;91m  _        _______  _______  _______  _________ _________ _______  _______ _     _   __   _________ \e[0m\n"
  printf "           \e[1;91m ( (    /|(       )(  ___  )(  ____ ) \__   __/(  ___  )(  ___  )( \      | \    /\ /  \  \__   __/ \e[0m\n"
  printf "           \e[1;92m |  \  ( || () () || (   ) || (    )|    ) (   | (   ) || (   ) || (      |  \  / / \/) )    ) ( \e[0m\n"
  printf "           \e[1;92m |   \ | || || || || (___) || (____)|    | |   | |   | || |   | || |      |  (_/ /    | |    | |        \e[0m\n"
  printf "           \e[1;92m | (\ \) || |(_)| ||  ___  ||  _____)    | |   | |   | || |   | || |      |   _ (     | |    | | \e[0m\n"
  printf "           \e[1;92m | | \   || |   | || (   ) || (          | |   | |   | || |   | || |      |  ( \ \    | |    | | \e[0m\n"
  printf "           \e[1;91m | )  \  || )   ( || )   ( || )          | |   | (___) || (___) || (____/\|  /  \ \ __) (_   | | \e[0m\n" 
  printf "           \e[1;91m |/    )_)|/     \||/     \||/           )_(   (_______)(_______)(_______/|_/    \/ \____/   )_( \e[0m\n" 
  printf "\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                    Welcome to Nmap ToolKit\e[0m                       \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m        Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m          \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m         Follow me on Instagram and Twitter: @Zero_Prime9\e[0m         \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m      Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t      \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                Visit: https://www.zeroprime9.com                 \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                         Version: $version_check \e[0m                           \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;93m________________________________________________________________________________\e[0m\n\n"
  printf "                         \e[1;91m::      New to the world of Cybersecsurity a small guide to help you\e[0m   \e[1;91m::\e[0m\n"
  printf "                         \e[1;91m::             Welcome to the club of coffee and success \e[0m              \e[1;91m::\e[0m\n"
  printf "                      \e[1;93m________________________________________________________________________________\e[0m\n\n"
}



package_sub_banner() 
{
  clear
  banner
  echo $'                     \e[96m\e[1;36m ================================================================================'
  printf "                      \e[1;91m[\e[0m\e[1;33m..:..\e[0m\e[1;91m]\e[1;92m                  Nmap Toolkit Package Access\e[0m                     \e[1;91m[\e[0m\e[1;33m..:..\e[0m\e[1;91m]\e[1;93m\e[0m\n"
  echo $'                     \e[96m\e[1;36m ================================================================================'
}



init_toolkit()
{
    install="n"
    package_sub_banner
    echo $'                     \e[1;92m Checking for Nmap Package.. '
    sleep 0.1
    if [[ $(command -v nmap) && $(command -v wmctrl) ]]; then

      echo $'                     \e[1;37m Nmap Status:                                                          \e[1;92m Installed'
      sleep 0.5
      echo $'                     \e[1;37m Wmctrl Status:                                                        \e[1;92m Installed'
      sleep 0.5 
      echo $'                     \e[1;92m Heading to Nmap Access Control'
      sleep 1.5
      __access_init__

    elif [[ ! $(command -v nmap) && $(command -v wmctrl) ]] 
    then

      echo $'                     \e[1;37m Nmap Status:                                                          \e[1;91m Not Installed'
      sleep 1
      echo $'                     \e[1;37m Wmctrl Status:                                                        \e[1;92m Installed'
      sleep 1
      read -p $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to Install Nmap [y/n]: \e[0m' install
       if [ "$install" == "y" ]; then
          sudo apt-get install nmap 
          echo $'                     \e[96m\e[1;36m ================================================================================'
          echo $'                                        \e[1;92m Nmap has been installed. Re-run the program :)\e[0m'
          echo $'                     \e[96m\e[1;36m ================================================================================'
          exit 1
      else
        echo $'                     \e[96m\e[1;36m ================================================================================'
        echo $'                                           \e[1;91m Nmap is not installed. Exiting program\e[0m'
        echo $'                     \e[96m\e[1;36m ================================================================================'
        exit 1 
      fi

    elif [[ $(command -v nmap) && ! $(command -v wmctrl) ]]
    then 
        echo $'                     \e[1;37m Nmap Status:                                                          \e[1;92m Installed'
        sleep 1
        echo $'                     \e[1;37m Wmctrl Status:                                                        \e[1;91m Not Installed'
        sleep 1
        read -p $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to Install Wmctrl [y/n]: \e[0m' install
        if [ "$install" == "y" ]; then
            sudo apt-get install wmctrl 
            echo $'                     \e[96m\e[1;36m ================================================================================'
            echo $'                                        \e[1;92m Wmctrl has been installed. Re-run the program :)\e[0m'
            echo $'                     \e[96m\e[1;36m ================================================================================'
            exit 1
        else
        echo $'                     \e[96m\e[1;36m ================================================================================'
        echo $'                                           \e[1;91m Wmctrl is not installed. Exiting program\e[0m'
        echo $'                     \e[96m\e[1;36m ================================================================================'
        exit 1 
      fi

    else
        echo $'                     \e[1;37m Nmap Status:                                                          \e[1;91m Not Installed'
        sleep 1
        echo $'                     \e[1;37m Wmctrl Status:                                                        \e[1;91m Not Installed'
        sleep 1
        read -p $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to Install the following packages [y/n]: \e[0m' install
      if [ "$install" == "y" ]; then
          sudo apt-get install nmap && sudo apt-get install wmctrl
          echo $'                     \e[96m\e[1;36m ================================================================================'
          echo $'                                     \e[1;92m Nmap & Wmctrl has been installed. Re-run the program :)\e[0m'
          echo $'                     \e[96m\e[1;36m ================================================================================'
          exit 1
      else
        echo $'                     \e[96m\e[1;36m ================================================================================'
        echo $'                                        \e[1;91m Nmap & Wmctrl are not installed. Exiting Program\e[0m'
        echo $'                     \e[96m\e[1;36m ================================================================================'
        exit 1 
      fi
    fi 
}



__access_init__()
{
    if [[ $EUID -ne 0 ]]; 
    then    
        __access_init_user & loadingbar_user "                     \e[1;92m Checking Access Privellege\e[0m"
    else
        __access_init_root & loadingbar_root "                     \e[1;92m Checking Access Privellege\e[0m"
    fi
    
}



__access_init_root() 
{
  clear
  banner
  echo $'                     \e[96m\e[1;36m ================================================================================'
  printf "                      \e[1;91m[\e[0m\e[1;33m..:..\e[0m\e[1;91m]\e[1;92m                  Nmap Toolkit Access Control\e[0m                     \e[1;91m[\e[0m\e[1;33m..:..\e[0m\e[1;91m]\e[1;93m\e[0m\n"
  echo $'                     \e[96m\e[1;36m ================================================================================'
}



loadingbar_root() {
  mypid=$!
  loadingText=$1

  echo -ne "$loadingText\r"

  while kill -0 $mypid 2>/dev/null; do
    echo -ne "$loadingText .\r"
    sleep 0.5
    echo -ne "$loadingText ..\r"
    sleep 0.5
    echo -ne "$loadingText ...\r"
    sleep 0.5
    echo -ne " \r\033[K"
    echo -ne "$loadingText \r"
    sleep 0.5
  done
    user=$(whoami)
    echo $'                     \e[1;37m Current User Access:\e[1;91m '$user' '
    sleep 0.5
    echo $'                     \e[1;37m Access Privellage:\e[1;92m Granted'
    sleep 0.5
    echo $'                     \e[96m\e[1;36m ================================================================================'
    echo $'                                      \e[1;91m Access has been granted. Accessing Main Menu\e[0m'
    echo $'                     \e[96m\e[1;36m ================================================================================'
    sleep 1.5
    clear
    banner
    user_input
}



__access_init_user() 
{
  clear
  banner
  echo $'                     \e[96m\e[1;36m ================================================================================'
  printf "                      \e[1;91m[\e[0m\e[1;33m..:..\e[0m\e[1;91m]\e[1;92m                  Nmap Toolkit Access Control\e[0m                     \e[1;91m[\e[0m\e[1;33m..:..\e[0m\e[1;91m]\e[1;93m\e[0m\n"
  echo $'                     \e[96m\e[1;36m ================================================================================'
}



loadingbar_user() {
  mypid=$!
  loadingText=$1

  echo -ne "$loadingText\r"

  while kill -0 $mypid 2>/dev/null; do
    echo -ne "$loadingText .\r"
    sleep 0.5
    echo -ne "$loadingText ..\r"
    sleep 0.5
    echo -ne "$loadingText ...\r"
    sleep 0.5
    echo -ne " \r\033[K"
    echo -ne "$loadingText \r"
    sleep 0.5
  done
    user=$(whoami)
    echo $'                     \e[1;37m Current User Access:\e[1;91m '$user' '
    sleep 1
    echo $'                     \e[1;37m Access Privellage:\e[1;91m Denied'
    sleep 1
    echo $'                     \e[96m\e[1;36m ================================================================================'
    echo $'                                  \e[1;91m Access has been revoked please run this program as root\e[0m'
    echo $'                     \e[96m\e[1;36m ================================================================================'
    sleep 2
    exit 1
}



user_input() # For selecting different type of scans
{
  banner
  Choice=" "
  echo $'                      \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Basic Scan \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Advanced Scan\e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Firewalls, IDS, Evasion & Spoofing\e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Nmap Nikto Scan \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Nmap NetBios Scan \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] Clear Logs \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m] Update Nmap Toolkit \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m8\e[0m\e[1;92m] Quit Nmap ToolKit \e[0m'
  echo $'                      \e[1;93m________________________________________________________________________________\e[0m\n'
  echo $'                                    \e[1;91m::  For Description add d/D to the option: 1d\e[0m   \e[1;91m::\e[0m'
  echo $'                      \e[1;93m________________________________________________________________________________\e[0m\n\n'
  echo " "
  read -p $'                      \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option[1-8]: \e[0m' Choice
 

  echo " "

  if [ "$Choice" == "1" ] # To Select Basic Scan
  then
      User_IP_Basic_Input
  elif [ "$Choice" == "2" ] # To select Advanced Scan
  then
      User_IP_Adv_Input
  elif [ "$Choice" == "3" ] # To select FIES 
  then
      User_Input_Firewall_IES
  elif [ "$Choice" == "4" ] # To select Nmap Nikto Scan
  then
      User_Input_Nikto
  elif [ "$Choice" == "5" ] # To select Nmap Netbios Scan
   then
       User_Input_Netbios
  elif [ "$Choice" == "6" ] # To select log handling
   then
        Logs_DB
  elif [ "$Choice" == "7" ] # To update the toolkit
   then
        echo "Update will be added soon"
  
  elif [ "$Choice" == "8" ]
   then
     echo $'                      \e[1;92m________________________________________________________________________________\e[0m\n'
    echo $'                                        \e[1;91m Have Fun Hacking, Cheers Zero_Prime9 \e[0m'
    echo $'                      \e[1;92m________________________________________________________________________________\e[0m\n\n'
     echo " "

  elif [ "$Choice" == "1d" ] || [ "$Choice" == "1D" ] #Basic Scan Description
    then
      description_scans_basic

  elif [ "$Choice" == "2d" ] || [ "$Choice" == "2D" ] #Advanced Scan Descrption
    then
      description_scans_Adv

  elif [ "$Choice" == "3d" ] || [ "$Choice" == "3D" ] #FIESDescription
    then
      description_scans_FIES

  elif [ "$Choice" == "4d" ] || [ "$Choice" == "4D" ] #Nmap Nikto Description
    then
      description_scans_nikto

  elif [ "$Choice" == "5d" ] || [ "$Choice" == "5D" ] #Nmap NetBios Description
    then
      description_scans_nbt

  elif [ "$Choice" == "6d" ] || [ "$Choice" == "6D" ] #Log Handling Description
    then
      description_scans_log
  
  elif [ "$Choice" == "7d" ] || [ "$Choice" == "7D" ] #Updating Description
    then
      echo $'                     \e[96m\e[1;93m ================================================================================'
      echo $'                                 \e[31m       Why do you need description for Updating -_- ' 
      echo $'                     \e[96m\e[1;93m ================================================================================'
      sleep 3.5
      banner 
      user_input

  elif [ "$Choice" == "8d" ] || [ "$Choice" == "8D" ] #UExiting Description
    then
      echo $'                     \e[96m\e[1;93m ================================================================================'
      echo $'                       \e[31m       If you are asking description for quitting I doubt your skills' 
      echo $'                     \e[96m\e[1;93m ================================================================================'
      sleep 3.5
      banner 
      user_input

  else
  	  echo $'                     \e[96m\e[1;93m ================================================================================'
      echo $'                                         \e[31m              Invalid Choice'
      echo $'                     \e[96m\e[1;93m ================================================================================'
    sleep 2.5
    banner
    user_input
  fi

}


#Toolkit Description
#Descirption General

description_scans_basic()
{
  banner2
  prompt="n"
  echo $'                     \e[96m\e[1;1m =================================================================================='
  echo $'                                     \e[92m        Description Topic: Basic Scan' 
  echo $'                     \e[96m\e[1;1m =================================================================================='
  echo " "
  echo $'                     \e[96m\e[1;0m Basic Scan is used when you want to collect minimal information in so little time'
  echo $'                     \e[96m\e[1;0m It helps you collect all the necessary details from Pinging to the services and '
  echo $'                     \e[96m\e[1;0m finding OS information to basic stealth scan and version. This is meant for faster'
  echo $'                     \e[96m\e[1;0m faster scans and getting surface level information of a target. If you want to'
  echo $'                     \e[96m\e[1;0m just skim through the details fast. This is your best bet :)'
  echo $'                     \e[96m\e[1;1m =================================================================================='
  echo " "
  read -p $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Press 0 to go back to menu: \e[0m' prompt

    if [ "$prompt" == "0" ] # Heads back to the menu
    then
      banner
      user_input
    else # Exit the program
      echo " "
      echo $'                     \e[96m\e[1;1m ================================================================================'
      echo $'                                    \e[31m                       Exiting'
      echo $'                     \e[96m\e[1;1m ================================================================================'
      sleep 2
      exit
    fi
}



description_scans_Adv()
{
  banner2
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo $'                                      \e[92m       Description Topic: Advanced Scan' 
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo $'                     \e[96m\e[1;0m Advanced scan is alwawys time consuming scan but the details gathered is alot  '
  echo $'                     \e[96m\e[1;0m it allows for combinatinal scans, advanced stealth scan techniques and NSE scans.'
  echo $'                     \e[96m\e[1;0m Nmap Script Engine is a powerful scan technique for finding vulnerabilites'
  echo $'                     \e[96m\e[1;0m This section gives everything you need, you only have to sacrfice your time *_*'
  echo " "
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo " "
  read -p $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Press 0 to go back to menu: \e[0m' prompt

    if [ "$prompt" == "0" ] # Heads back to the menu
    then
      banner
      user_input
    else # Exit the program
      echo " "
      echo $'                     \e[96m\e[1;1m ================================================================================'
      echo $'                                    \e[31m                       Exiting'
      echo $'                     \e[96m\e[1;1m ================================================================================'
      sleep 2
      exit
    fi
}


description_scans_FIES()
{
  banner2
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo $'                         \e[92m        Description Topic: Firewall, IDS Evasion & Spoofing Scan' 
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo $'                     \e[96m\e[1;0m Firewall, IDS Evasion & Spoofing is completely focused on evading and spoofing '
  echo $'                     \e[96m\e[1;0m techniques allowing for finding information even if there is a firewall or an  '
  echo $'                     \e[96m\e[1;0m Intrusion Detection Section. It uses different set of scans by deploying decoys'
  echo $'                     \e[96m\e[1;0m zombie scans and more. If you are sure there is a firewall or an IDS this will'
  echo $'                     \e[96m\e[1;0m do the job and if you use it right you will get beautiful results ;)'
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo " "
  read -p $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Press 0 to go back to menu: \e[0m' prompt

    if [ "$prompt" == "0" ] # Heads back to the menu
    then
      banner
      user_input
    else # Exit the program
      echo " "
      echo $'                     \e[96m\e[1;1m ================================================================================'
      echo $'                                    \e[31m                       Exiting'
      echo $'                     \e[96m\e[1;1m ================================================================================'
      sleep 2
      exit
    fi
}


description_scans_nikto()
{
  banner2
  echo $'                     \e[96m\e[1;1m =================================================================================='
  echo $'                                    \e[92m        Description Topic: Nmap Nikto Scan' 
  echo $'                     \e[96m\e[1;1m =================================================================================='
  echo $'                     \e[96m\e[1;0m When a web vulnerability scanner works with a Network mapping tool what do you get'
  echo $'                     \e[96m\e[1;0m A tool that gets you right down to buisness and a tool that gets even more        '
  echo $'                     \e[96m\e[1;0m powerful and useful.Nmap Nikto scans for both HTTP and HTTPS web servers using'
  echo $'                     \e[96m\e[1;0m the appropriate optons '
  echo $'                     \e[96m\e[1;1m =================================================================================='
  echo " "
  read -p $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Press 0 to go back to menu: \e[0m' prompt

    if [ "$prompt" == "0" ] # Heads back to the menu
    then
      banner
      user_input
    else # Exit the program
      echo " "
      echo $'                     \e[96m\e[1;1m ================================================================================'
      echo $'                                    \e[31m                       Exiting'
      echo $'                     \e[96m\e[1;1m ================================================================================'
      sleep 2
      exit
    fi
}



description_scans_nbt()
{
  banner2
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo $'                                   \e[92m        Description Topic: Nmap NetBIOS Scan' 
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo $'                     \e[96m\e[1;0m Sometimes you need to find the nameservice especially in the port 137 well that '
  echo $'                     \e[96m\e[1;0m is why we have nbtscan but now integrating that with Nmap to find that sneaky '
  echo $'                     \e[96m\e[1;0m vulnerabilities or maybe even major attacks like Eternal-Blue.Whatever it may be'
  echo $'                     \e[96m\e[1;0m Nmap NetBIOS has your back and that is why it is also useful. Make it useful ;)'
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo " "
  read -p $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Press 0 to go back to menu: \e[0m' prompt

    if [ "$prompt" == "0" ] # Heads back to the menu
    then
      banner
      user_input
    else # Exit the program
      echo " "
      echo $'                     \e[96m\e[1;1m ================================================================================'
      echo $'                                    \e[31m                       Exiting'
      echo $'                     \e[96m\e[1;1m ================================================================================'
      sleep 2
      exit
    fi
}



description_scans_log()
{
  banner2
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo $'                                   \e[92m        Description Topic: Log Handling' 
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo $'                     \e[96m\e[1;0m Log handling is here so that you can clear logs of the scans that you have done '
  echo $'                     \e[96m\e[1;0m Better safe then sorry innit. Use this section to clear any scan logs that has  '
  echo $'                     \e[96m\e[1;0m been created from any of the scans.'
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo " "
  read -p $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Press 0 to go back to menu: \e[0m' prompt

    if [ "$prompt" == "0" ] # Heads back to the menu
    then
      banner
      user_input
    else # Exit the program
      echo " "
      echo $'                     \e[96m\e[1;1m ================================================================================'
      echo $'                                    \e[31m                       Exiting'
      echo $'                     \e[96m\e[1;1m ================================================================================'
      sleep 2
      exit
    fi
}




#Toolkit Submenu 1
#Submenuu Basic Scan


Basic_Scan_Banner() # Banner for the Basic Scan
{
  version_check=$(cat Version.md)
  clear
  echo " "
  printf "\e[1;91m                     ______   _______  _______ _________ _______       _______  _______  _______  _         \e[0m\n"
  printf "\e[1;91m                    (  ___ \ (  ___  )(  ____ \\__   __/(  ____ \      (  ____ \(  ____ \(  ___  )( (    /|  \e[0m\n"
  printf "\e[1;92m                    | (   ) )| (   ) || (    \/   ) (   | (    \/     | (    \/| (    \/| (   ) ||  \  ( |  \e[0m\n"
  printf "\e[1;92m                    | (__/ / | (___) || (_____    | |   | |           | (_____ | |      | (___) ||   \ | |  \e[0m\n"
  printf "\e[1;92m                    |  __ (  |  ___  |(_____  )   | |   | |           (_____  )| |      |  ___  || (\ \) |  \e[0m\n"
  printf "\e[1;92m                    | (  \ \ | (   ) |      ) |   | |   | |                 ) || |      | (   ) || | \   |  \e[0m\n"
  printf "\e[1;91m                    | )___) )| )   ( |/\____) |___) (___| (____/\     /\____) || (____/\| )   ( || )  \  |  \e[0m\n"
  printf "\e[1;91m                    |/ \___/ |/     \|\_______)\_______/(_______/_____\_______)(_______/|/     \||/    )_)  \e[0m\n"
  printf "\n"
  printf "                     \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m          Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m            \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                     \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m           Follow me on Instagram and Twitter: @Zero_Prime9\e[0m           \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                     \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m        Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t        \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                     \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                  Visit: https://www.zeroprime9.com                   \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                     \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                           Version: $version_check \e[0m                             \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                     \e[1;93m____________________________________________________________________________________\e[0m\n\n"
  printf "                     \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;77m     SOMETIMES BEING BASIC IS ALL YOU NEED, NEVER UNDERESTIMATE IT    \e[0m\e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                     \e[1;93m____________________________________________________________________________________\e[0m\n"
  
  printf "\n"
}


User_IP_Basic_Input()
{
  clear
  Basic_Scan_Banner
  IP_Basic_Input=" "
  Conti_Basic="n"
  while [[ "$Conti_Basic" == "n" ]];
  do
    echo $'                      \e[96m\e[1;36m ================================================================================'
    echo $'                                        \e[1;92m Automatically selected:\e[1;91m IP Address/Website                     \e[0m'
    echo $'                      \e[96m\e[1;36m ================================================================================'
    read -p $'                       \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter Web Address/IP Address: \e[0m' IP_Basic_Input
    echo $'                       \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered Web Address/IP Address is: \e[0m' $IP_Basic_Input
    read -p $'                       \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to continue with the Web Address/IP Address [y/n]: \e[0m' Conti_Basic

    if [ "$Conti_Basic" == "y" ]
    then
      Basic_Scan
  else
    echo " "
    echo $'                     \e[96m\e[1;93m  ================================================================================'
    echo $'                                       \e[31m            Re-enter your choice'
    echo $'                     \e[96m\e[1;93m  ================================================================================'
    sleep 2
    echo " "
    User_IP_Basic_Input
  fi
  done

}


Basic_Scan() #The type of scans for BASIC_SCAN_CHOICE
{
  clear
  Basic_Scan_Banner
  bs_scan_sc=" "
  echo $'                     \e[36m ================================================================================'
  echo $'                                       \e[31m        Target IP Address: \e[1;1m' $IP_Basic_Input
  echo $'                     \e[36m ================================================================================'
  echo " "
  echo $'                                 \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Ping Scan \e[0m'
  echo $'                                 \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Service Version Detection Scan \e[0m'
  echo $'                                 \e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Common Port Scan \e[0m'
  echo $'                                 \e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Fast Scan \e[0m'
  echo $'                                 \e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Basic Stealth Scan \e[0m'
  echo $'                                 \e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] Protocol Support Scan \e[0m'
  echo $'                                 \e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m] TCP Scan \e[0m'
  echo $'                                 \e[1;92m[\e[0m\e[1;77m8\e[0m\e[1;92m] UDP Scan \e[0m'
  echo $'                                 \e[1;92m[\e[0m\e[1;77m9\e[0m\e[1;92m] Ping Scan with port scan disabled \e[0m'
  echo $'                                 \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  echo " "
  read -p $'                                 \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1-9]: \e[0m' bs_scan_sc
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

    "1" )  
           echo $'                               \e[96m\e[1;1m =============================================================='
           echo -e '                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Hacking is simple yet complicated puzzle \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m      You have selected:\e[1;91m Ping Scan        \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
           echo $'                               \e[96m\e[1;1m =============================================================='
           if [[ -e $file_loc_ping  ]];
           then
             sleep 1
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...   "
             echo " " >> $file_loc_ping
             echo "                                       ==============================" >> $file_loc_ping
             echo                                        $(date) >> $file_loc_ping
             echo "                                       ==============================" >> $file_loc_ping
             echo " " >> $file_loc_ping
             nmap -sP $IP_Basic_Input >> $file_loc_ping
             echo "                                       ==============================" >> $file_loc_ping
             echo " "
             sleep 4
             echo " "
             cat $file_loc_ping
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
             sleep 4
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             cd Scanned_Target/Basic_Scan
             touch Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo $(date) >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo " " >> Ping_Scan.log
             nmap -sP $IP_Basic_Input >> Ping_Scan.log
             echo "==============================" >> Ping_Scan.log
             echo " "
             cat Ping_Scan.log
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/for more Information\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           fi
      ;; # End of Ping_Scan setup

          # Setup for Service_Detection_Scan
      "2" )  
             echo $'                               \e[96m\e[1;1m =============================================================='
             echo -e '                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m   Its all about Old versions and Exploits  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
             echo $'                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m  You have selected:\e[1;91m Service Detection Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
             echo $'                               \e[96m\e[1;1m =============================================================='
             if [[ -e $file_loc_sV ]];
             then
               sleep 1
               echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
               echo " " >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo $(date) >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               echo " " >> $file_loc_sV
               nmap -sV $IP_Basic_Input >> $file_loc_sV
               echo "==============================" >> $file_loc_sV
               sleep 3
               echo " "
               cat $file_loc_sV
               echo " "
               echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
               echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
               echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

             else
               echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
               sleep 4
               echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
               cd Scanned_Target/Basic_Scan
               touch Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo $(date) >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo " " >> Service_Detection_Scan.log
               nmap -sV $IP_Basic_Input >> Service_Detection_Scan.log
               echo "==============================" >> Service_Detection_Scan.log
               echo " "
               cat Service_Detection_Scan.log
               echo " "
               echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
               echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
               echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
             fi

             ;; #End of Service_Detection_Scan setup

             # Setup for Common_Port_Scan
          "3" ) echo $'                               \e[96m\e[1;1m =============================================================='
                echo -e '                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m       An Open Port is an Open Access       \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                echo $'                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m    You have selected:\e[1;91m Common Port Scan     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                echo $'                               \e[96m\e[1;1m =============================================================='
                if [[ -e $file_loc_port ]];
                then
                    sleep 1
                    echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                    echo " " >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo $(date) >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    echo " " >> $file_loc_port
                    nmap $IP_Basic_Input >> $file_loc_port
                    echo "==============================" >> $file_loc_port
                    sleep 3
                    echo " "
                    cat $file_loc_port
                    echo " "
                    echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                    echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                    echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                else
                    echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                    sleep 1
                    echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                    cd Scanned_Target/Basic_Scan
                    touch Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo $(date) >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo " " >> Common_Port_Scan.log
                    nmap $IP_Basic_Input >> Common_Port_Scan.log
                    echo "==============================" >> Common_Port_Scan.log
                    echo " "
                    cat Common_Port_Scan.log
                    echo " "
                    echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                    echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                    echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                  fi

              ;; #End of Common_Port_Scan Setup

                     # Setup for Fast_Scan
              "4" ) echo $'                               \e[96m\e[1;1m =============================================================='
                    echo -e '                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Getting Information Faster is always Nice  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    echo $'                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m       You have selected:\e[1;91m Fast Scan         \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                    echo $'                               \e[96m\e[1;1m =============================================================='
                    if [[ -e $file_loc_fast ]];
                    then
                         sleep 1
                         echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started... \e[0m"
                         echo " " >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo $(date) >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         echo " " >> $file_loc_fast
                         nmap -F $IP_Basic_Input >> $file_loc_fast
                         echo "==============================" >> $file_loc_fast
                         sleep 3
                         echo " "
                         cat $file_loc_fast
                         echo " "
                         echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                         echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                         echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                     else
                       echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                       sleep 1
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                         cd Scanned_Target/Basic_Scan
                         touch Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo $(date) >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo " " >> Fast_Scan.log
                         nmap -F $IP_Basic_Input >> Fast_Scan.log
                         echo "==============================" >> Fast_Scan.log
                         echo " "
                         cat Fast_Scan.log
                         echo " "
                         echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete. \e[0m"
                         echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                         echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                       fi

               ;; #End of setup for Fast_Scan

              "5" )  echo $'                               \e[96m\e[1;1m =============================================================='
                     echo -e '                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m  The Quiter You Are, The More You Hear!    \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                     echo $'                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m      You have selected:\e[1;91m Stealth Scan       \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                     echo $'                               \e[96m\e[1;1m =============================================================='
                    if [[ -e $file_loc_sS ]];
                    then
                        sleep 1
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo $(date) >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        echo " " >> $file_loc_sS
                        nmap -sS $IP_Basic_Input >> $file_loc_sS
                        echo "==============================" >> $file_loc_sS
                        sleep 3
                        echo " "
                        cat $file_loc_sS
                        echo " "
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                        sleep 1
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo $(date) >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo " " >> Basic_Stealth_Scan.log
                        nmap -sS $IP_Basic_Input >> Basic_Stealth_Scan.log
                        echo "==============================" >> Basic_Stealth_Scan.log
                        echo " "
                        cat Basic_Stealth_Scan.log
                        echo " "
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Basic_Stealth_Scan

              # Setup for Protocol Support Scan
              "6" )  echo $'                               \e[96m\e[1;1m =============================================================='
                     echo -e '                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m      Who said finding protocol was hard    \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                     echo $'                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m  You have selected:\e[1;91m Protocol Support Scan  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                     echo $'                               \e[96m\e[1;1m =============================================================='
                    if [[ -e $file_loc_protocol ]];
                    then
                        sleep 2
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started... \e[0m"
                        echo " " >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo $(date) >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        echo " " >> $file_loc_protocol
                        nmap -sO $IP_Basic_Input >> $file_loc_protocol
                        echo "==============================" >> $file_loc_protocol
                        sleep 3
                        echo " "
                        cat $file_loc_protocol
                        echo " "
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                      echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                      sleep 1
                       echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo $(date) >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo " " >> Protocol_Support_Scan.log
                        nmap -sO $IP_Basic_Input >> Protocol_Support_Scan.log
                        echo "==============================" >> Protocol_Support_Scan.log
                        echo " "
                        cat Protocol_Support_Scan.log
                        echo " "
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Protocol_Support_Scan

              #Setup for TCP_Scan
              "7" )  echo $'                               \e[96m\e[1;1m =============================================================='
                     echo -e '                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m  Data, a lot of data. Money a lot of Money \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                     echo $'                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m      You have selected:\e[1;91m TCP Scan           \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                     echo $'                               \e[96m\e[1;1m =============================================================='
                    if [[ -e $file_loc_tcp ]];
                    then
                        sleep 1
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo $(date) >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        echo " " >> $file_loc_tcp
                        nmap -sT $IP_Basic_Input >> $file_loc_tcp
                        echo "==============================" >> $file_loc_tcp
                        sleep 3
                        echo " "
                        cat $file_loc_tcp
                        echo " "
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information \e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan \e[0m"

                    else
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                        sleep 1
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo $(date) >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        echo " " >> TCP_Scan.log
                        nmap -sT $IP_Basic_Input >> TCP_Scan.log
                        echo "==============================" >> TCP_Scan.log
                        cat TCP_Scan.log
                        echo " "
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for TCP_Scan

              #Setup for UDP_Scan
              "8" )  echo $'                               \e[96m\e[1;1m =============================================================='
                     echo -e '                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m   Stream all you want, but i am not paying \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                     echo $'                                     \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m      You have selected:\e[1;91m UDP Scan           \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                     echo $'                               \e[96m\e[1;1m =============================================================='
                    if [[ -e $file_loc_udp ]];
                    then
                        sleep 1
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        echo " " >> $file_loc_udp
                        nmap -sU $IP_Basic_Input >> $file_loc_udp
                        echo "==============================" >> $file_loc_udp
                        sleep 3
                        echo " "
                        cat $file_loc_udp
                        echo " "
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                    else
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup\e[0m"
                        sleep 4
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        cd Scanned_Target/Basic_Scan
                        touch UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo $(date) >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo " " >> UDP_Scan.log
                        nmap -sU $IP_Basic_Input >> UDP_Scan.log
                        echo "==============================" >> UDP_Scan.log
                        echo -e "\e[92m The Scan is complete."
                        echo " "
                        cat UDP_Scan.log
                        echo " "
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "                                     \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for UDP_Scan

                #Setup for Ping Scan without Port Scanner
              "9" )  echo $'                               \e[96m\e[1;1m =============================================================='
                     echo -e '                                  \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m                    FBI Open UP!                 \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                     echo $'                                  \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Ping Scan with port disabled \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
                     echo $'                               \e[96m\e[1;1m =============================================================='
                    if [[ -e $file_loc_pingport ]];
                    then
                        sleep 1
                        echo -e "                                  \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                        echo " " >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        echo $(date) >> $file_loc_udp
                        echo "==============================" >> $file_loc_pingport
                        echo " " >> $ffile_loc_pingport
                        nmap -sn $IP_Basic_Input >> $file_loc_pingport
                        echo "==============================" >> $file_loc_pingport
                        sleep 3
                        echo " "
                        cat $file_loc_pingport
                        echo " "
                        echo -e "                                  \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete. \e[0m"
                        echo -e "                                  \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "                                  \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan \e[0m"

                    else
                        echo -e "                                  \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Scan Setup"
                        sleep 1
                        echo -e "                                  \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started.."
                        cd Scanned_Target/Basic_Scan
                        touch Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo $(date) >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo " " >> Ping_Scan_Port_Disabled_Scan.log
                        nmap -sn $IP_Basic_Input >> Ping_Scan_Port_Disabled_Scan.log
                        echo "==============================" >> Ping_Scan_Port_Disabled_Scan.log
                        echo " "
                        cat Ping_Scan_Port_Disabled_Scan.log
                        echo " "
                        echo -e "                                  \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                        echo -e "                                  \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Basic_Scan/ for more Information\e[0m"
                        echo -e "                                  \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                        fi

              ;; #End of Setup for Ping_Scan_Port_Disabled_Scan

              "0" ) # For moving back
                    Basic_Scan_Banner
                    EXIT_MENU_CHOICE_BASIC="5" # Choice for IP or FILE
                    while [[ "$EXIT_MENU_CHOICE_BASIC" -ge "3" ]];
                    do 
                      echo ""
                      echo $'                      \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Head back to main menu \e[0m'
                      echo $'                      \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Re-enter Target\e[0m'
                      echo $'                      \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
                      echo "" 
                      read -p $'                      \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' EXIT_MENU_CHOICE_BASIC
                      echo " "

                      if [ "$EXIT_MENU_CHOICE_BASIC" == "1" ]
                        then  
                          user_input
                      elif [ "$EXIT_MENU_CHOICE_BASIC" == "2" ]
                        then 
                            User_IP_Basic_Input
                      elif [ "$EXIT_MENU_CHOICE_BASIC" == "0" ]
                        then
                            Basic_Scan_Choice_File
                      else
                            clear
                            Basic_Scan_Banner
                            echo $'                     \e[96m\e[1;93m ================================================================================'
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
                 Basic_Scan_Choice_IP

              ;;

  esac

}

#Toolkit Submenu 2
#Sub-menu Advanced Scan

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


User_IP_Adv_Input()
{
  clear
  Adv_Scan_Banner
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
      Advanced_Scan
  else
    echo " "
    echo $'                     \e[96m\e[1;93m  ================================================================================'
    echo $'                                          \e[31m            Re-enter your choice'
    echo $'                     \e[96m\e[1;93m  ================================================================================'
    sleep 2
    echo " "
    User_IP_Adv_Input
  fi
      #To check if the choice is Netbios and Nikto and The choice is yes:

  done
} 


Advanced_Scan()
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

      "7") 
            Adv_Scan_NSE
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
                user_input
            elif [ "$EXIT_MENU_CHOICE_ADV" == "2" ]
              then 
                  User_IP_Adv_Input
            elif [ "$EXIT_MENU_CHOICE_ADV" == "0" ]
              then
                  Advanced_Scan
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
          Advanced_Scan
      ;;
  esac

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
                user_input
            elif [ "$EXIT_MENU_CHOICE_ADV" == "2" ]
              then 
                  User_IP_FILE_Adv_Input
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

#Toolkit Submenu 3
#Sub-menu Firewall IDS Evasion & SPoofing

Firewall_IES_Banner() #Banner for Firewall_IDS_Evasion and Spoofing
{
  version_check=$(cat Version.md)
  clear
  echo " "
  printf "\e[1;91m             _______ _________ _______  _______           _______  _        _            _________ _______  _______   \e[0m\n"
  printf "\e[1;91m            (  ____ \\__   __/(  ____ )(  ____ \|\     /|(  ___  )( \      ( \           \__   __/(  ____ \(  ____ \  \e[0m\n"
  printf "\e[1;92m            | (    \/   ) (   | (    )|| (    \/| )   ( || (   ) || (      | (              ) (   | (    \/| (        \e[0m\n"
  printf "\e[1;92m            | (__       | |   | (____)|| (__    | | _ | || (___) || |      | |              | |   | (__    | (        \e[0m\n"
  printf "\e[1;92m            |  __)      | |   |     __)|  __)   | |( )| ||  ___  || |      | |              | |   |  __)   (_____  )  \e[0m\n"
  printf "\e[1;92m            | (         | |   | (\ (   | (      | || || || (   ) || |      | |              | |   | (            ) |  \e[0m\n"
  printf "\e[1;92m            | )      ___) (___| ) \ \__| (____/\| () () || )   ( || (____/\| (____/\     ___) (___| (____/\/\____) |  \e[0m\n"
  printf "\e[1;91m            |/       \_______/|/   \__/(_______/(_______)|/     \|(_______/(_______/_____\_______/(_______/\_______)  \e[0m\n"
  printf "\e[1;91m                                                                                   (_____)                             \e[0m\n"
  printf "\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m          Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m            \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m           Follow me on Instagram and Twitter: @Zero_Prime9\e[0m           \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m        Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t        \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                  Visit: https://www.zeroprime9.com                   \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                           Version: $version_check \e[0m                             \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "       \e[1;93m______________________________________________________________________________________________________________ \e[0m\n\n"
  printf "       \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;77m     Sometimes Evading is a fun game but do it right, with a little bit help of spoofing ;)     \e[0m\e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "       \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;77m       Trouble here, Trouble There, A little bit of help to burn a hole through the wall        \e[0m\e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "       \e[1;93m______________________________________________________________________________________________________________\e[0m\n"
  echo " "

}

User_Input_Firewall_IES() #User Input for Firewall_IES
{
    Firewall_IES_Banner
    IP_FIES_Input=" "
    Conti_FIES="n"
    while [[ "$Conti_FIES" == "n" ]];
    do
        echo $'                     \e[96m\e[1;36m ================================================================================'
        echo $'                                       \e[1;92m Automatically selected:\e[1;91m IP Address/Website                     \e[0m'
        echo $'                     \e[96m\e[1;36m ================================================================================'
      read -p $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter Web Address/IP Address: \e[0m' IP_FIES_Input
      echo $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered Web Address/IP Address is: \e[0m' $IP_FIES_Input
      read -p $'                      \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to continue with the Web Address/IP Address [y/n]: \e[0m' Conti_FIES

      if [ "$Conti_FIES" == "n" ]
      then
        echo " "
        echo $'                     \e[96m\e[1;93m ================================================================================'
        echo $'                                         \e[31m            Re-enter your choice'
        echo $'                     \e[96m\e[1;93m ================================================================================'
        sleep 2
        echo " "
      elif [ "$Conti_FIES" == "y" ]
      then
        Firewalls_IES
      fi

  done

}

Firewalls_IES()
{
  clear
  Firewall_IES_Banner
  Firewall_IES_Choice=" "
  echo $'                     \e[36m ================================================================================'
  echo $'                                       \e[31m        Target IP Address: \e[1;1m' $IP_FIES_Input
  echo $'                     \e[36m ================================================================================'
  echo " "
  echo $'                       \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Firewall Evasion using Fragment Packets\e[0m'
  echo $'                       \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Firewall Evasion using MTU\e[0m'
  echo $'                       \e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Idle Zombie Scan \e[0m'
  echo $'                       \e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Manual Source Port Scan \e[0m'
  echo $'                       \e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Manual Random Data Scan\e[0m'
  echo $'                       \e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] Randomize Target Scan Order \e[0m'
  echo $'                       \e[1;92m[\e[0m\e[1;77m7\e[0m\e[1;92m] Bad Checksum Scan \e[0m'
  echo $'                       \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  echo " "
  read -p $'                       \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1-8 or 0]: \e[0m' Firewall_IES_Choice


  file_location_Firewall_IES="Scanned_Target/Firewall_IES"
  if [ -e $file_location_Firewall_IES ]
  then
      echo " "
  else
      cd Scanned_Target
      mkdir Firewall_IES
      cd ..
  fi
 file_loc_FIES_Fragment="Scanned_Target/Firewall_IES/FIES_Fragment.log" #Fragment Scan
 file_loc_FIES_MTU="Scanned_Target/Firewall_IES/FIES__MTU.log" #Maximum Transmit Unit
 file_loc_FIES_Zombie="Scanned_Target/Firewall_IES/FIES__Zombie.log" #Zombie Scan
 file_loc_FIES_S_PORT="Scanned_Target/Firewall_IES/FIES__SPORT.log"   #Source Port Scan
 file_loc_FIES_R_Data="Scanned_Target/Firewall_IES/FIES__RDATA.log"   #Random Data Scan
 file_loc_FIES_R_Target="Scanned_Target/Firewall_IES/FIES__RTARGET.log" #Random_Target Scan
 file_loc_FIES_B_Checksum="Scanned_Target/Firewall_IES/FIES__BChecksum.log" #Badchecksum Scan

 case $Firewall_IES_Choice in

   "1")
   echo $'                    \e[96m\e[1;1m =================================================================================='
   echo -e '                           \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m            8 bytes of fragmented data and a dream          \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
   echo $'                           \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m You have selected:\e[1;91m Firewall Evasion using Fragmented Data  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
   echo $'                    \e[96m\e[1;1m ==================================================================================' 
   if [[ -e $file_loc_FIES_Fragment ]];
   then
       sleep 2
       echo -e "                           \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
       echo " " >> $file_loc_FIES_Fragment
       echo "==============================" >> $file_loc_FIES_Fragment
       echo $(date) >> $file_loc_FIES_Fragment
       echo "==============================" >> $file_loc_FIES_Fragment
       echo " " >> $file_loc_FIES_Fragment
       nmap -f $IP_FIES_Input >> $file_loc_FIES_Fragment
       echo "==============================" >> $file_loc_FIES_Fragment
       sleep 3
       echo -e "                           \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
       echo " "
       cat $file_loc_FIES_Fragment
       echo " "
       echo -e "                           \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
       echo -e "                           \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
       echo -e "                           \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

     else
       echo -e "                           \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FIES Setup\e[0m"
       sleep 4
       echo -e "                           \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
         cd Scanned_Target/Firewall_IES/
         touch FIES_Fragment.log
         echo "==============================" >> FIES_Fragment.log
         echo $(date) >> FIES_Fragment.log
         echo "==============================" >> FIES_Fragment.log
         echo " " >> FIES_Fragment.log
         nmap -f $IP_FIES_Input >> FIES_Fragment.log
         echo "==============================" >> FIES_Fragment.log
         echo " "
         cat FIES_Fragment.log
         echo " "
         echo -e "                           \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
         echo -e "                           \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
         echo -e "                           \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
         fi
     ;;

     "2")
     MTU=" "
     echo $'                    \e[96m\e[1;1m =================================================================================='
     echo -e '                            \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m               Evading a Firewall in progress...            \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
     echo $'                            \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m         You have selected:\e[1;91m Firewall Evasion using MTU      \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
     echo $'                    \e[96m\e[1;1m ==================================================================================' 
     read -p $'                            \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter MTU [Maximum Transmission Unit in the multiples of 8,16,32]: \e[0m' MTU
     if [[ -e $file_loc_FIES_MTU ]];
     then
         sleep 2
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
         echo " " >> $file_loc_FIES_MTU
         echo "==============================" >> $file_loc_FIES_MTU
         echo $(date) >> $file_loc_FIES_MTU
         echo "==============================" >> $file_loc_FIES_MTU
         echo " " >> $file_loc_FIES_MTU
         nmap --mtu $MTU $IP_FIES_Input >> $file_loc_FIES_MTU
         echo "==============================" >> $file_loc_FIES_MTU
         sleep 3
         echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
         echo " "
         cat $file_loc_FIES_MTU
         echo " "
         echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
         echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
         echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

       else
         echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
         sleep 4
         echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
           cd Scanned_Target/Firewall_IES/
           touch FIES__MTU.log
           echo "==============================" >> FIES__MTU.log
           echo $(date) >> FIES__MTU.log
           echo "==============================" >> FIES__MTU.log
           echo " " >> FIES__MTU.log
           nmap --mtu $MTU $IP_FIES_Input >> FIES__MTU.log
           echo "==============================" >> FIES__MTU.log
           echo " "
           cat FIES__MTU.log
           echo " "
           echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
           echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
           echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
           fi
       ;;

       

         "3")
         Zmb_host=" " #For storing the zombie host
         echo $'                    \e[96m\e[1;1m =================================================================================='
         echo -e '                            \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m               Dead or Alive, money is money         \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
         echo $'                            \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m              You have selected:\e[1;91m Zombie Scan         \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
         echo $'                    \e[96m\e[1;1m ==================================================================================' 
         read -p $'                            \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter the Zombie Host [EG:10.10.1.41]: \e[0m' Zmb_host
         if [[ -e $file_loc_FIES_Zombie ]];
         then
             sleep 2
             echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             echo " " >> $file_loc_FIES_Zombie
             echo "==============================" >> $file_loc_FIES_Zombie
             echo $(date) >> $file_loc_FIES_Zombie
             echo "==============================" >> $file_loc_FIES_Zombie
             echo " " >> $file_loc_FIES_Zombie
             nmap -sI $Zmb_host $IP_FIES_Input >> $file_loc_FIES_Zombie
             echo "==============================" >> $file_loc_FIES_Zombie
             sleep 3
             echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
             echo " "
             cat $file_loc_FIES_Zombie
             echo " "
             echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
             echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
             sleep 4
             echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
               cd Scanned_Target/Firewall_IES/
               touch FIES__Zombie.log
               echo "==============================" >> FIES__Zombie.log
               echo $(date) >> FIES__Zombie.log
               echo "==============================" >> FIES__Zombie.log
               echo " " >> FIES__Zombie.log
               nmap -sI $Zmb_host $IP_FIES_Input >> FIES__Zombie.log
               echo "==============================" >> FIES__Zombie.log
               echo " "
               cat FIES__Zombie.log
               echo " "
               echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
               echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
               echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
               fi
               ;;
          "4")
          Src_port=" "
          echo $'                    \e[96m\e[1;1m =================================================================================='
          echo -e '                            \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m          Higher the intensity, Greater the pain     \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
          echo $'                            \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m        You have selected:\e[1;91m Manual Source Port Scan   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
          echo $'                    \e[96m\e[1;1m ==================================================================================' 
          read -p $'                            \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter the Source Port: \e[0m' Src_port
          if [[ -e $file_loc_FIES_S_PORT ]];
            then
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                echo " " >> $file_loc_FIES_S_PORT
                echo "==============================" >> $file_loc_FIES_S_PORT
                echo $(date) >> $file_loc_FIES_S_PORT
                echo "==============================" >> $file_loc_FIES_S_PORT
                echo " " >> $file_loc_FIES_S_PORT 
                nmap --source-port $Src_port $IP_FIES_Input >> $file_loc_FIES_S_PORT
                echo "==============================" >> $file_loc_FIES_S_PORT
                sleep 3
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
                echo " "
                cat $file_loc_FIES_S_PORT
                echo " "
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

            else
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
                sleep 4
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                cd Scanned_Target/Firewall_IES/
                touch FIES__SPORT.log
                echo "==============================" >> FIES__SPORT.log
                echo $(date) >> FIES__SPORT.log
                echo "==============================" >> FIES__SPORT.log
                echo " " >> FIES__SPORT.log
                nmap --source-port $Src_port $IP_FIES_Input >> FIES__SPORT.log
                echo "==============================" >> FIES__SPORT.log
                echo " "
                cat FIES__SPORT.log
                echo " "
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
          fi
          ;;
          "5")
          RND_DTA_Length=" "   # Random Data Length
          echo $'                    \e[96m\e[1;1m =================================================================================='
          echo -e '                            \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m              Garbage value helps alot here          \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
          echo $'                            \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m        You have selected:\e[1;91m Manual Random Data Scan   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
          echo $'                    \e[96m\e[1;1m ==================================================================================' 
          read -p $'                            \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter the data size per packet: \e[0m' RND_DTA_Length
          if [[ -e $file_loc_FIES_R_Data ]];
          then
              sleep 2
              echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
              echo " " >> $file_loc_FIES_R_Data
              echo "==============================" >> $file_loc_FIES_R_Data
              echo $(date) >> $file_loc_FIES_R_Data
              echo "==============================" >> $file_loc_FIES_R_Data
              echo " " >> $file_loc_FIES_R_Data
              nmap --data-length $RND_DTA_Length $IP_FIES_Input >> $file_loc_FIES_R_Data
              echo "==============================" >> $file_loc_FIES_R_Data
              sleep 3
              echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
              echo " "
              cat $file_loc_FIES_R_Data
              echo " "
              echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
              echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
              echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

            else
              echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
              sleep 4
              echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                cd Scanned_Target/Firewall_IES/
                touch FIES__RDATA.log
                echo "==============================" >> FIES__RDATA.log
                echo $(date) >> FIES__RDATA.log
                echo "==============================" >> FIES__RDATA.log
                echo " " >> FIES__RDATA.log
                nmap --data-length $RND_DTA_Length $IP_FIES_Input >> FIES__RDATA.log
                echo "==============================" >> FIES__RDATA.log
                echo " "
                cat FIES__RDATA.log
                echo " "
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                fi
            ;;
            "6")
            RND_TRG=" "   # Random Data Length
            echo $'                    \e[96m\e[1;1m =================================================================================='
            echo -e '                            \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m      More Random the scan the more confused the firewall \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
            echo $'                            \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m        You have selected:\e[1;91m Randomize Target Scan Order    \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
            echo $'                    \e[96m\e[1;1m ==================================================================================' 
            read -p $'                            \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter the Target Address [EG:10.10.1.100-254]: \e[0m' RND_TRG
            if [[ -e $file_loc_FIES_R_Target ]];
            then
                sleep 2
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                echo " " >> $file_loc_FIES_R_Target
                echo "==============================" >> $file_loc_FIES_R_Target
                echo $(date) >> $file_loc_FIES_R_Target
                echo "==============================" >> $file_loc_FIES_R_Target
                echo " " >> $file_loc_FIES_R_Target
                nmap --randomize-hosts $RND_TRG >> $file_loc_FIES_R_Target
                echo "==============================" >> $file_loc_FIES_R_Target
                sleep 3
                echo -e "\e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
                echo " "
                cat $file_loc_FIES_R_Target
                echo " "
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

              else
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
                sleep 4
                echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                  cd Scanned_Target/Firewall_IES/
                  touch FIES__RTARGET.log
                  echo "==============================" >> FIES__RTARGET.log
                  echo $(date) >> FIES__RTARGET.log
                  echo "==============================" >> FIES__RTARGET.log
                  echo " " >> FIES__RTARGET.log
                  nmap --randomize-hosts $RND_TRG >> FIES__RTARGET.log
                  echo "==============================" >> FIES__RTARGET.log
                  echo " "
                  cat FIES__RDATA.log
                  echo " "
                  echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                  echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                  echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                  fi
              ;;
              "7")
              RND_TRG=" "   # Random Data Length
              echo $'                    \e[96m\e[1;1m =================================================================================='
              echo -e '                            \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m        Older the system, greater the attack    \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
              echo $'                            \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m        You have selected:\e[1;91m Bad Checksum Scan    \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
              echo $'                    \e[96m\e[1;1m ==================================================================================' 
              read -p $'                            \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter the Target Address [EG:10.10.1.100-254]: \e[0m' RND_TRG
              if [[ -e $file_loc_FIES_B_Checksum ]];
              then
                  sleep 2
                  echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                  echo " " >> $file_loc_FIES_B_Checksum
                  echo "==============================" >> $file_loc_FIES_B_Checksum
                  echo $(date) >> $file_loc_FIES_B_Checksum
                  echo "==============================" >> $file_loc_FIES_B_Checksum
                  echo " " >> $file_loc_FIES_B_Checksum
                  nmap --badsum $IP_FIES_Input >> $file_loc_FIES_B_Checksum
                  echo "==============================" >> $file_loc_FIES_B_Checksum
                  sleep 3
                  echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
                  echo " "
                  cat $file_loc_FIES_B_Checksum
                  echo " "
                  echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                  echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                  echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

                else
                  echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time FEIS Setup\e[0m"
                  sleep 4
                  echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
                    cd Scanned_Target/Firewall_IES/
                    touch FIES__BChecksum.log
                    echo "==============================" >> FIES__BChecksum.log
                    echo $(date) >> FIES__BChecksum.log
                    echo "==============================" >> FIES__BChecksum.log
                    echo " " >> FIES__BChecksum.log
                    nmap --badsum $IP_FIES_Input >> FIES__BChecksum.log
                    echo "==============================" >> FIES__BChecksum.log
                    echo " "
                    cat FIES__BChecksum.log
                    echo " "
                    echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
                    echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Firewall_IES/ for more Information\e[0m"
                    echo -e "                            \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
                    fi
                ;;
                "0")
                    Firewall_IES_Banner
                    EXIT_MENU_CHOICE_FIES="5" # Choice for IP or FILE
                    while [[ "$EXIT_MENU_CHOICE_FIES" -ge "3" ]];
                    do 
                      echo ""
                      echo $'                      \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Head back to main menu \e[0m'
                      echo $'                      \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Re-enter Target\e[0m'
                      echo $'                      \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
                      echo "" 
                      read -p $'                      \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' EXIT_MENU_CHOICE_FIES
                      echo " "

                      if [ "$EXIT_MENU_CHOICE_FIES" == "1" ]
                        then  
                          user_input
                      elif [ "$EXIT_MENU_CHOICE_FIES" == "2" ]
                        then 
                            User_Input_Firewall_IES
                      elif [ "$EXIT_MENU_CHOICE_FIES" == "0" ]
                        then
                            Firewall_IES
                      else
                            clear
                            Firewall_IES_Banner                   
                            echo $'                     \e[96m\e[1;93m ================================================================================'
                            echo $'                                         \e[31m            Re-enter your choice'
                            echo $'                     \e[96m\e[1;93m ================================================================================'
                      fi 
                    done 
            ;;
 esac
}




#Toolkit Submenu 4
#Sub-menu Nmap Nikto


Nmap_Nikto_Banner() #Banner for Nikto
{
  clear
  version_check=$(cat Version.md)
  echo " "
  printf "           \e[1;91m _        _______  _______  _______  _       _________ _      _________ _______       _______  _______  _______  _       \e[0m\n"
  printf "           \e[1;91m( (    /|(       )(  ___  )(  ____ )( (    /|\__   __/| \    /\\__   __/ (  ___  )     (  ____ \(  ____ \(  ___  )( (    /|\e[0m\n"
  printf "           \e[1;92m|  \  ( || () () || (   ) || (    )||  \  ( |   ) (   |  \  / /   ) (   | (   ) |     | (    \/| (    \/| (   ) ||  \  ( |\e[0m\n"
  printf "           \e[1;92m|   \ | || || || || (___) || (____)||   \ | |   | |   |  (_/ /    | |   | |   | |     | (_____ | |      | (___) ||   \ | |\e[0m\n"
  printf "           \e[1;92m| (\ \) || |(_)| ||  ___  ||  _____)| (\ \) |   | |   |   _ (     | |   | |   | |     (_____  )| |      |  ___  || (\ \) |\e[0m\n"
  printf "           \e[1;92m| | \   || |   | || (   ) || (      | | \   |   | |   |  ( \ \    | |   | |   | |           ) || |      | (   ) || | \   |\e[0m\n"
  printf "           \e[1;92m| )  \  || )   ( || )   ( || )      | )  \  |___) (___|  /  \ \   | |   | (___) |     /\____) || (____/\| )   ( || )  \  |\e[0m\n"
  printf "           \e[1;91m|/    )_)|/     \||/     \||/_____  |/    )_)\_______/|_/    \/   )_(   (_______)_____\_______)(_______/|/     \||/    )_)\e[0m\n"
  printf "           \e[1;91m                           (_____)                                             (_____)                                    \e[0m\n"
  printf "\n"
  printf "                                \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m          Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m            \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m           Follow me on Instagram and Twitter: @Zero_Prime9\e[0m           \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m        Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t        \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                  Visit: https://www.zeroprime9.com                   \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                           Version: $version_check \e[0m                             \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;93m____________________________________________________________________________________\e[0m\n\n"
  printf "                                \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;77m     WEB VULNERABILITY IS AMAZING, EVER HEARD OF WEB DEFACEMENT :)    \e[0m\e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                                \e[1;93m____________________________________________________________________________________\e[0m\n"
  echo " "

}

User_Input_Nikto() #User Input for Netbios and Nikto
{
    clear
    Nmap_Nikto_Banner
    IP_NN_Input=" "
    Conti_NN="n"
    while [[ "$Conti_NN" == "n" ]];
    do
      echo $'                                \e[96m\e[1;36m ================================================================================'
      echo $'                                                   \e[1;92m Automatically selected:\e[1;91m IP Address/Website                     \e[0m'
      echo $'                                \e[96m\e[1;36m ================================================================================'
      read -p $'                                 \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter Web Address/IP Address: \e[0m' IP_NN_Input
      echo $'                                 \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered Web Address/IP Address is: \e[0m' $IP_NN_Input
      read -p $'                                 \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to continue with the Web Address/IP Address [y/n]: \e[0m' Conti_NN

      if [ "$Conti_NN" == "y" ]
      then
        Nmap_Nikto_Scan
    else
      echo " "
      echo $'                               \e[96m\e[1;93m  ================================================================================'
      echo $'                                                    \e[31m            Re-enter your choice'
      echo $'                               \e[96m\e[1;93m  ================================================================================'
      sleep 2
      echo " "
    fi
  done

}

Nmap_Nikto_Scan() #Nmap Scan using Nikto
{
 clear
 Nmap_Nikto_Banner
 Nmap_Nikto_choice=" "
 echo $'                                 \e[36m ================================================================================'
 echo $'                                                   \e[31m        Target IP Address: \e[1;1m' $IP_NN_Input
 echo $'                                 \e[36m ================================================================================'
 echo " "
 echo $'                                  \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Nmap HTTP  Server scan with Nikto\e[0m'
 echo $'                                  \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Nmap HTTPS Server scan with Nikto \e[0m'
 echo $'                                  \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
 echo " "
 read -p $'                                  \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1 or 2]: \e[0m' Nmap_Nikto_choice

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
        echo $'                               \e[96m\e[1;1m =============================================================='
        echo -e '                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m       Vulnerability where are you        \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
        echo $'                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m   You have selected:\e[1;91m HTTP Server Scan    \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
        echo $'                               \e[96m\e[1;1m ==============================================================' 
         if [[ -e $file_loc_Nikto_Http ]];
         then
             sleep 2
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             echo " " >> $file_loc_Nikto_Http
             echo "==============================" >> $file_loc_Nikto_Http
             echo $(date) >> $file_loc_Nikto_Http
             echo "==============================" >> $file_loc_Nikto_Http
             echo " " >> $file_loc_Nikto_Http
             nmap -p80 $IP_NN_Input -oG - | nikto -h ->> $file_loc_Nikto_Http
             echo "==============================" >> $file_loc_Nikto_Http
             sleep 3
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
             echo " "
             cat $file_loc_Nikto_Http
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_Nikto/ for more Information\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

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
        echo $'                               \e[96m\e[1;1m =============================================================='
        echo -e '                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m    HTTPS, An S cant save your life ;)    \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
        echo $'                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m   You have selected:\e[1;91m HTTPS Server Scan   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
        echo $'                               \e[96m\e[1;1m ==============================================================' #Ping_Scan setup
        if [[ -e $file_loc_Nikto_Https ]];
        then
         sleep 2
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
         echo " " >> $file_loc_Nikto_Https
         echo "==============================" >> $file_loc_Nikto_Https
         echo $(date) >> $file_loc_Nikto_Https
         echo "==============================" >> $file_loc_Nikto_Https
         echo " " >> $file_loc_Nikto_Https
         nmap -p80,443 $IP_NN_Input -oG - | nikto -h ->> $file_loc_Nikto_Https
         echo "==============================" >> $file_loc_Nikto_Https
         sleep 3
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File\e[0m "
         echo " "
         cat $file_loc_Nikto_Https
         echo " "
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_Nikto/ for more Information\e[0m"
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

       else
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time Nikto Setup \e[0m"
         sleep 4
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started\e[0m"
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
           echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
           echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_Nikto/ for more Information\e[0m"
           echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m  "
           fi

           ;;

      "0")
          clear
          Nmap_Nikto_Banner
          EXIT_MENU_CHOICE_NT="5" # Choice for IP or FILE
          while [[ "$EXIT_MENU_CHOICE_NT" -ge "3" ]];
          do 
            echo ""
            echo $'                                   \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Head back to main menu \e[0m'
            echo $'                                   \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Re-enter Target\e[0m'
            echo $'                                   \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
            echo "" 
            read -p $'                                   \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' EXIT_MENU_CHOICE_NT
            echo " "

            if [ "$EXIT_MENU_CHOICE_NT" == "1" ]
              then  
                user_input
            elif [ "$EXIT_MENU_CHOICE_NT" == "2" ]
              then 
                  User_Input_Nikto
            elif [ "$EXIT_MENU_CHOICE_NT" == "0" ]
              then
                  Nmap_Nikto_Scan
            else
                  clear
                  Nmap_Nikto_Banner                 
                  echo $'                     \e[96m\e[1;93m ================================================================================'
                  echo $'                                         \e[31m            Re-enter your choice'
                  echo $'                     \e[96m\e[1;93m ================================================================================'
            fi 
          done 
          ;;

      *)
      echo " "
      echo $'                                 \e[96m\e[1;93m  ================================================================================'
      echo $'                                                      \e[31m            Re-enter your choice'
      echo $'                                 \e[96m\e[1;93m  ================================================================================'
      sleep 2
      echo " "
      Nmap_Nikto_Scan

  ;;

 esac
}

#Toolkit Submenu 5
#Sub-menu Nmap Netbios

Nmap_Netbios_Banner() #NetBios_Nmap Banner
{
  version_check=$(cat Version.md)
  printf "   \e[1;91m                  _        _______  _______  _______  _        ______ _________   _______  _______  _______  _       \e[0m\n"
  printf "   \e[1;91m                 ( (    /|(       )(  ___  )(  ____ )( (    /|(  ___ \\__   __/   (  ____ \(  ____ \(  ___  )( (    /|\e[0m\n"
  printf "   \e[1;92m                 |  \  ( || () () || (   ) || (    )||  \  ( || (   ) )  ) (     | (    \/| (    \/| (   ) ||  \  ( |\e[0m\n"
  printf "   \e[1;92m                 |   \ | || || || || (___) || (____)||   \ | || (__/ /   | |     | (_____ | |      | (___) ||   \ | |\e[0m\n"
  printf "   \e[1;92m                 | (\ \) || |(_)| ||  ___  ||  _____)| (\ \) ||  __ (    | |     (_____  )| |      |  ___  || (\ \) |\e[0m\n"
  printf "   \e[1;92m                 | | \   || |   | || (   ) || (      | | \   || (  \ \   | |           ) || |      | (   ) || | \   |\e[0m\n"
  printf "   \e[1;92m                 | )  \  || )   ( || )   ( || )      | )  \  || )___) )  | |     /\____) || (____/\| )   ( || )  \  |\e[0m\n"
  printf "   \e[1;91m                 |/    )_)|/     \||/     \||/_____  |/    )_)|/ \___/   )_(_____\_______)(_______/|/     \||/    )_)\e[0m\n"
  printf "   \e[1;91m                                             (_____)                       (_____)                                   \e[0m\n"
  printf "\n"
  printf "                              \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m          Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m            \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                              \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m           Follow me on Instagram and Twitter: @Zero_Prime9\e[0m           \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                              \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m        Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t        \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                              \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                  Visit: https://www.zeroprime9.com                   \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                              \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                           Version: $version_check \e[0m                             \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                              \e[1;93m____________________________________________________________________________________\e[0m\n\n"
  printf "                                        \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;77m     MODERN OR OLD, NETBIOS SCAN TO THE RESCUE    \e[0m\e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                              \e[1;93m____________________________________________________________________________________\e[0m\n"

}

User_Input_Netbios() #User Input for Netbios and Nikto
{
    clear
    Nmap_Netbios_Banner
    IP_NN_Input=" "
    Conti_NN="n"
    echo " "
    while [[ "$Conti_NN" == "n" ]];
    do
      echo $'                               \e[96m\e[1;36m ================================================================================'
      echo $'                                                  \e[1;92m Automatically selected:\e[1;91m IP Address/Website                     \e[0m'
      echo $'                               \e[96m\e[1;36m ================================================================================'
      read -p $'                                \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;91m Enter Web Address/IP Address: \e[0m' IP_NN_Input
      echo $'                                \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m The entered Web Address/IP Address is: \e[0m' $IP_NN_Input
      read -p $'                                \e[1;92m[\e[0m\e[1;77m::\e[0m\e[1;92m]\e[1;33m Do you want to continue with the Web Address/IP Address [y/n]: \e[0m' Conti_NN

      if [ "$Conti_NN" == "y" ]
      then
        Nmap_Netbios_Scan
    else
      echo " "
      echo $'                              \e[96m\e[1;93m  ================================================================================'
      echo $'                                                   \e[31m            Re-enter your choice'
      echo $'                              \e[96m\e[1;93m  ================================================================================'
      sleep 2
      echo " "
    fi
      #To check if the choice is Netbios and Nikto and The choice is yes:

  done
}

Nmap_Netbios_Scan() #NEtbios Nmap Scan
{
  clear
  Nmap_Netbios_Banner
  echo " "
  Nmap_Netbios_choice=" "
  echo $'                              \e[36m ================================================================================'
  echo $'                                                \e[31m        Target IP Address: \e[1;1m' $IP_NN_Input
  echo $'                              \e[36m ================================================================================'
  echo " "
  echo $'                                \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Nmap NetBios Server Scan\e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Nmap NetBios Enumeration Scan \e[0m'
  echo $'                                \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  echo  " "
  read -p $'                                \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose scan type [1-2 or 0]: \e[0m' Nmap_Netbios_choice

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
         echo $'                               \e[96m\e[1;1m =============================================================='
         echo -e '                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m   We will find you and We will hunt you  \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
         echo $'                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m    You have selected:\e[1;91m NBT Server Scan    \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
         echo $'                               \e[96m\e[1;1m ==============================================================' 
         if [[ -e $file_loc_NetBios_Server_Scan ]];
         then
             sleep 2
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
             echo " " >> $file_loc_NetBios_Server_Scan
             echo "==============================" >> $file_loc_NetBios_Server_Scan
             echo $(date) >> $file_loc_NetBios_Server_Scan
             echo "==============================" >> $file_loc_NetBios_Server_Scan
             echo " " >> $file_loc_NetBios_Server_Scan
             nmap -sV -v -p 139,445 $IP_NN_Input    >> $file_loc_NetBios_Server_Scan
             echo "==============================" >> $file_loc_NetBios_Server_Scan
             sleep 3
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File.."
             echo " "
             cat $file_loc_NetBios_Server_Scan
             echo " "
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_NetBios/ for more Information\e[0m"
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

           else
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First NetBios Scan Setup\e[0m"
             sleep 4
             echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
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
               echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
               echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_NetBios/ for more Information\e[0m"
               echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"
               fi
     ;;

     "2")
         echo $'                               \e[96m\e[1;1m =============================================================='
         echo -e '                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m  Facts 101: Linux is better than Windows \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
         echo $'                                       \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m  You have selected:\e[1;91m NBT Enumeration Scan \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
         echo $'                               \e[96m\e[1;1m ==============================================================' 
        if [[ -e $file_loc_NetBios_Server_Enum ]];
        then
         sleep 2
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started...\e[0m"
         echo " " >> $file_loc_NetBios_Server_Enum
         echo "==============================" >> $file_loc_NetBios_Server_Enum
         echo $(date) >> $file_loc_NetBios_Server_Enum
         echo "==============================" >> $file_loc_NetBios_Server_Enum
         echo " " >> $file_loc_NetBios_Server_Enum
         nmap -sU --script nbstat.nse -p 137 $IP_NN_Input >> $file_loc_NetBios_Server_Enum
         echo "==============================" >> $file_loc_NetBios_Server_Enum
         sleep 3
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Reading Log File\e[0m "
         echo " "
         cat $file_loc_NetBios_Server_Enum
         echo " "
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_NetBios/ for more Information\e[0m"
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m"

       else
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Running First Time Nikto Setup \e[0m"
         sleep 4
         echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Scanning has started\e[0m"
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
           echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m The Scan is Complete.\e[0m"
           echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m View Scanned_Target/Nmap_Nikto/ for more Information\e[0m"
           echo -e "                                       \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;92m Check the date and time to see the latest scan\e[0m  "
           fi

           ;;


  "0")
      clear
      Nmap_Netbios_Banner
      EXIT_MENU_CHOICE_NBT="5" # Choice for IP or FILE
      while [[ "$EXIT_MENU_CHOICE_NBT" -ge "3" ]];
      do 
        echo ""
        echo $'                              \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Head back to main menu \e[0m'
        echo $'                              \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Re-enter Target\e[0m'
        echo $'                              \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
        echo ""
        read -p $'                              \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose an option: \e[0m' EXIT_MENU_CHOICE_NBT
        echo " "

        if [ "$EXIT_MENU_CHOICE_NBT" == "1" ]
          then  
            user_input
        elif [ "$EXIT_MENU_CHOICE_NBT" == "2" ]
          then 
              User_Input_Netbios
        elif [ "$EXIT_MENU_CHOICE_NBT" == "0" ]
          then
              Nmap_Netbios_Scan
        else
              clear
              Nmap_Netbios_Banner                   
              echo $'                     \e[96m\e[1;93m ================================================================================'
              echo $'                                         \e[31m            Re-enter your choice'
              echo $'                     \e[96m\e[1;93m ================================================================================'
        fi 
      done 

      ;;

   *)
      echo " "
      echo $'                                 \e[96m\e[1;93m  ================================================================================'
      echo $'                                                      \e[31m            Re-enter your choice'
      echo $'                                 \e[96m\e[1;93m  ================================================================================'
      sleep 2
      echo " "
      Nmap_Netbios_Scan

     ;;
esac
}


#Toolkit Submenu 6
#Sub-menu Logs

#!/bin/bash
banner() # Introduction Banner
{
  clear
  version_check=$(cat Version.md)
  nmap_version=$(nmap --version | sed -nr '/[0-9]/{s/^[^0-9]*([0-9]+\.?[0-9]*).*$/\1/p;q}')
 
  printf "           \e[1;91m  _        _______  _______  _______  _________ _________ _______  _______ _     _   __   _________ \e[0m\n"
  printf "           \e[1;91m ( (    /|(       )(  ___  )(  ____ ) \__   __/(  ___  )(  ___  )( \      | \    /\ /  \  \__   __/ \e[0m\n"
  printf "           \e[1;92m |  \  ( || () () || (   ) || (    )|    ) (   | (   ) || (   ) || (      |  \  / / \/) )    ) ( \e[0m\n"
  printf "           \e[1;92m |   \ | || || || || (___) || (____)|    | |   | |   | || |   | || |      |  (_/ /    | |    | |        \e[0m\n"
  printf "           \e[1;92m | (\ \) || |(_)| ||  ___  ||  _____)    | |   | |   | || |   | || |      |   _ (     | |    | | \e[0m\n"
  printf "           \e[1;92m | | \   || |   | || (   ) || (          | |   | |   | || |   | || |      |  ( \ \    | |    | | \e[0m\n"
  printf "           \e[1;91m | )  \  || )   ( || )   ( || )          | |   | (___) || (___) || (____/\|  /  \ \ __) (_   | | \e[0m\n" 
  printf "           \e[1;91m |/    )_)|/     \||/     \||/           )_(   (_______)(_______)(_______/|_/    \/ \____/   )_( \e[0m\n" 
  printf "\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                    Welcome to Nmap ToolKit\e[0m                       \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m        Recon tool created by: Farzan Nobi [Zero_Prime9]\e[0m          \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m                   Follow me on Instagram: @Zero_Prime9\e[0m           \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m      Github: https://www.github.com/ZeroPrime9/Nmap_ToolK1t      \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;36m                Visit: https://www.zeroprime9.com                 \e[0m\e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                       Nmap Version:\e[1;92m V$nmap_version \e[0m                       \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;91m                    Toolkit Version:\e[1;92m $version_check \e[0m                        \e[1;77m[\e[0m\e[1;91m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
  printf "                      \e[1;93m________________________________________________________________________________\e[0m\n\n"
  printf "                                    \e[1;91m::  Disclaimer: Developers assume no liability\e[0m     \e[1;91m::\e[0m\n"
  printf "                                    \e[1;91m::  Search your victim, before you annihilate ;)\e[0m   \e[1;91m::\e[0m\n"

  #Checking if the directory exists or not.
  file_loc="Scanned_Target"
  if [ -e $file_loc ]
  then
     echo -e $"                                    \e[1;92m::\e[1;92m         Check Scanned_Target for logs\e[0m           \e[1;92m::\e[0m"
  else
      mkdir Scanned_Target
      echo -e $"                                    \e[1;92m::\e[1;92m         File Scanned_Target Created\e[0m             \e[1;92m::\e[0m"
  fi
  printf "                      \e[1;93m________________________________________________________________________________\e[0m\n\n"
}

Logs_DB()
{
  log_choice=" "
  clear
  banner
  echo $'                      \e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m] Clear Logs of Basic Scan\e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m] Clear Logs of Advanced Scan \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m3\e[0m\e[1;92m] Clear Logs of Nmap Script Engine   \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m4\e[0m\e[1;92m] Clear Logs of Firewalls IDS Evasion and Spoofing \e[1;91m   \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m5\e[0m\e[1;92m] Clear Logs of Nmap Nikto Scan \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m6\e[0m\e[1;92m] Clear Logs of Nmap NetBios Scan   \e[0m'
  echo $'                      \e[1;92m[\e[0m\e[1;77m0\e[0m\e[1;92m]\e[1;91m Back \e[0m'
  echo " "
  read -p $'                      \e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Choose which log to clear [1-6 or 0]: \e[0m' log_choice
  Conti_log="n"

#Clearing Basic Scan Logs
if [ "$log_choice" == "1" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo " " 
      echo $'                     \e[96m\e[1;1m =================================================================================='
      echo $'                                \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m   You have selected:\e[1;91m Clear Logs of Basic Scan   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
      echo $'                     \e[96m\e[1;1m ==================================================================================' 
      read -p $'                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Basic Scan [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        Logs_DB
      elif [ "$Conti_log" == "y" ]
      then
          cd Scanned_Target/Basic_Scan/
          #rm *
          cd ../..
          sleep 1.5
          echo -e "                      \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Logs have been cleared\e[0m"
          echo -e "                      \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Taking you back to the main menu\e[0m"
          sleep 3
          user_input
      else
        echo $'                      \e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        Logs_DB
      fi
    done

#Clearing Advanced Scan Logs
elif [ "$log_choice" == "2" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo " " 
      echo $'                     \e[96m\e[1;1m =================================================================================='
      echo $'                                \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m   You have selected:\e[1;91m Clear Logs of Advanced Scan   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
      echo $'                     \e[96m\e[1;1m ==================================================================================' 
      read -p $'                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Advanced Scan [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        Logs_DB
      elif [ "$Conti_log" == "y" ]
      then
          cd Scanned_Target/Advanced_Scan/
          #rm *
          cd ../..
          sleep 1.5
          echo -e "                      \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Logs have been cleared\e[0m"
          echo -e "                      \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Taking you back to the main menu\e[0m"
          sleep 3
          user_input
      else
        echo $'                      \e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        Logs_DB
      fi
    done

#Clearing NSE Scan Logs
elif [ "$log_choice" == "3" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo " " 
      echo $'                     \e[96m\e[1;1m =================================================================================='
      echo $'                                \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m   You have selected:\e[1;91m Clear Logs of NSE Scan   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
      echo $'                     \e[96m\e[1;1m ==================================================================================' 
      read -p $'                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of NSE Scan [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        Logs_DB
      elif [ "$Conti_log" == "y" ]
      then
          cd Scanned_Target/Advanced_Scan/NSE_Scan/
          #rm *
          cd ../../..
          sleep 1.5
          echo -e "                      \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Logs have been cleared\e[0m"
          echo -e "                      \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Taking you back to the main menu\e[0m"
          sleep 3
          user_input
      else
        echo $'                      \e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        Logs_DB
      fi
    done

#Clearing FIES Scan Logs
elif [ "$log_choice" == "4" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo " " 
      echo $'                     \e[96m\e[1;1m =================================================================================='
      echo $'                                \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m   You have selected:\e[1;91m Clear Logs of FIES Scan   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
      echo $'                     \e[96m\e[1;1m ==================================================================================' 
      read -p $'                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of FIES Scan [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        Logs_DB
      elif [ "$Conti_log" == "y" ]
      then
          cd Scanned_Target/Firewall_IES/
          #rm *
          cd ../..
          sleep 1.5
          echo -e "                      \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Logs have been cleared\e[0m"
          echo -e "                      \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Taking you back to the main menu\e[0m"
          sleep 3
          user_input
      else
        echo $'                      \e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        Logs_DB
      fi
    done

#Clearing Nmap Nikto Scan Logs
elif [ "$log_choice" == "5" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo " " 
      echo $'                     \e[96m\e[1;1m =================================================================================='
      echo $'                                \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m   You have selected:\e[1;91m Clear Logs of Nmap Nikto Scan   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
      echo $'                     \e[96m\e[1;1m ==================================================================================' 
      read -p $'                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Nmap Nikto Scan [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        Logs_DB
      elif [ "$Conti_log" == "y" ]
      then
          cd Scanned_Target/Nmap_Nikto/
          #rm *
          cd ../..
          sleep 1.5
          echo -e "                      \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Logs have been cleared\e[0m"
          echo -e "                      \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Taking you back to the main menu\e[0m"
          sleep 3
          user_input
      else
        echo $'                      \e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        Logs_DB
      fi
    done

#Clearing Nmap NetBios
elif [ "$log_choice" == "6" ]
  then
    while [ "$Conti_log" == "n" ]
    do
      echo " " 
      echo $'                     \e[96m\e[1;1m =================================================================================='
      echo $'                                \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m   You have selected:\e[1;91m Clear Logs of Nmap NetBios Scan   \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] \e[0m'
      echo $'                     \e[96m\e[1;1m ==================================================================================' 
      read -p $'                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;33m Do you want to continue with Clearing Logs of Nmap NetBios Scan [y/n]: \e[0m' Conti_log

      if [ "$Conti_log" == "n" ]
      then
        Logs_DB
      elif [ "$Conti_log" == "y" ]
      then
          cd Scanned_Target/Nmap_NetBios/
          #rm *
          cd ../..
          sleep 1.5
          echo -e "                      \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m The Logs have been cleared\e[0m"
          echo -e "                      \e[1;77m[\e[0m\e[1;92m*\e[0m\e[1;77m]\e[1;97m Taking you back to the main menu\e[0m"
          sleep 3
          user_input
      else
        echo $'                      \e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m]\e[1;91m =============== Invalid Choice =============== \e[0m\e[1;77m[\e[0m\e[1;91m::\e[0m\e[1;77m] \e[0m'
        Logs_DB
      fi
    done

elif [ "$log_choice" == "0" ]
    then  
        user_input

else
    echo $'                     \e[96m\e[1;93m ================================================================================'
    echo $'                                         \e[31m            Re-enter your choice'
    echo $'                     \e[96m\e[1;93m ================================================================================'
    Logs_DB
fi
}

EXIT_FUN() #Script underneath after finishing of tool
{
  echo " "
  echo " "
  echo -e "                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;35m           Sometimes it's wise to scan before you exploit.           \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] "
  echo -e "                      \e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m]\e[1;35m               More the information, Easier the Attack               \e[0m\e[1;77m[\e[0m\e[1;92m::\e[0m\e[1;77m] "
  echo " "
}
wmctrl -r ':ACTIVE:' -b add,maximized_vert,maximized_horz
init_toolkit
EXIT_FUN
