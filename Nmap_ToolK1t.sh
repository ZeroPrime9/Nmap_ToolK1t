#!/bin/bash
#Author: Farzan Nobi

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
  printf "                      \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;33m         Follow me on Instagram and Twitter: @Zero_Prime9\e[0m         \e[1;77m[\e[0m\e[1;35m..:..\e[0m\e[1;77m]\e[1;93m\e[0m\n"
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



user_input() # For selecting different type of scans
{
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
      cd bin
      ./Basic_Scan.sh
  elif [ "$Choice" == "2" ] # To select Advanced Scan
  then
      cd bin
      ./Advanced_Scan.sh
  elif [ "$Choice" == "3" ] # To select FIES 
  then
  	  cd bin
      ./FIES_Scan.sh
  elif [ "$Choice" == "4" ] # To select Nmap Nikto Scan
  then
      cd bin
      ./Nikto_Scan.sh
  elif [ "$Choice" == "5" ] # To select Nmap Netbios Scan
   then
      cd bin
      ./NetBios_Scan.sh
  elif [ "$Choice" == "6" ] # To select log handling
   then
      cd bin
      ./Logs.sh
  elif [ "$Choice" == "7" ] # To update the toolkit
   then
      update_toolkit
  
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



description_scans_update()
{
  banner2
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo $'                                     \e[92m        Description Topic: Updation' 
  echo $'                     \e[96m\e[1;1m ================================================================================'
  echo $'                     \e[96m\e[1;0m Firewall, IDS Evasion & Spoofing is completely focused on evading and spoofing '
  echo $'                     \e[96m\e[1;0m techniques allowing for finding information even if there is a firewall or an  '
  echo $'                     \e[96m\e[1;0m Intrusion Detection Section. It uses different set of scans by deploying decoys'
  echo $'                     \e[96m\e[1;0m zombie scans and more. If you are sure there is a firewall or an IDS this will.'
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
    sleep 1.5
    echo -ne "$loadingText ..\r"
    sleep 1.5
    echo -ne "$loadingText ...\r"
    sleep 1.5
    echo -ne " \r\033[K"
    echo -ne "$loadingText \r"
    sleep 1.5
  done
    user=$(whoami)
    echo $'                     \e[1;37m Current User Access:\e[1;91m '$user' '
    sleep 2
    echo $'                     \e[1;37m Access Privellage:\e[1;92m Granted'
    sleep 1
    echo $'                     \e[96m\e[1;36m ================================================================================'
    echo $'                                      \e[1;91m Access has been granted. Accessing Main Menu\e[0m'
    echo $'                     \e[96m\e[1;36m ================================================================================'
    sleep 4
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
    sleep 1.5
    echo -ne "$loadingText ..\r"
    sleep 1.5
    echo -ne "$loadingText ...\r"
    sleep 1.5
    echo -ne " \r\033[K"
    echo -ne "$loadingText \r"
    sleep 1.5
  done
    user=$(whoami)
    echo $'                     \e[1;37m Current User Access:\e[1;91m '$user' '
    sleep 2
    echo $'                     \e[1;37m Access Privellage:\e[1;91m Denied'
    sleep 1
    echo $'                     \e[96m\e[1;36m ================================================================================'
    echo $'                                  \e[1;91m Access has been revoked please run this program as root\e[0m'
    echo $'                     \e[96m\e[1;36m ================================================================================'
    sleep 3
    exit 1
}

__access_init__

