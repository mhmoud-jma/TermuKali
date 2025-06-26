#!/bin/bash

Colors

GREEN='\033[0;32m' RED='\033[0;31m' NC='\033[0m' # No Color

Menu Function

display_menu() { clear echo -e "${GREEN}Welcome to Kali Installer Menu${NC}" echo "===============================" echo "1. Install Kali (Method 1)" echo "2. Install Kali (Method 2)" echo "3. Install Kali (Method 3)" echo "4. Show available tools" echo "5. Install tools inside Kali" echo "6. Star the project on GitHub" echo "7. Exit" echo "===============================" read -p "Choose an option: " option

case $option in 1) install_kali_method1 ;; 2) install_kali_method2 ;; 3) install_kali_method3 ;; 4) show_tools ;; 5) install_tools_in_kali ;; 6) termux-open-url "https://github.com/mhmoud-jma/Install.kali" echo -e "${GREEN}Support us with a star! ⭐${NC}" read -p "Press Enter to return to menu..." ;; 7) exit 0 ;; *) echo -e "${RED}Invalid option!${NC}" sleep 1 ;; esac }

install_kali_method1() { pkg install wget -y wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali.sh chmod +x kali.sh ./kali.sh read -p "Press Enter to return to menu..." }

install_kali_method2() { pkg update && pkg upgrade -y pkg install wget proot tar -y wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh chmod +x kali.sh ./kali.sh read -p "Press Enter to return to menu..." }

install_kali_method3() { pkg install git proot wget -y git clone https://github.com/MFDGaming/Debian-Termux cd Debian-Termux || exit bash Debian.sh read -p "Press Enter to return to menu..." }

show_tools() { echo -e "\nAvailable tools:" echo "======================" echo "nmap" echo "whois" echo "dnsutils (dig, nslookup)" echo "net-tools (ifconfig, netstat)" echo "whatweb" echo "nikto" echo "wafw00f" echo "theHarvester" echo "recon-ng" echo "amass" echo "sqlmap" echo "metasploit-framework" echo "hydra" echo "john (John the Ripper)" echo "crunch" echo "zphisher" echo "HiddenEye" echo "SocialFish" echo "T.DROP: https://github.com/mhmoud-jma/T.DROP" read -p "Press Enter to return to menu..." }

install_tools_in_kali() { echo "Installing tools inside Kali..." proot-distro login kali -c "
apt update && apt upgrade -y && 
apt install -y nmap whois dnsutils net-tools whatweb nikto wafw00f theharvester recon-ng amass sqlmap metasploit-framework hydra john crunch && 
cd /root && 
git clone https://github.com/htr-tech/zphisher && 
git clone https://github.com/DarkSecDevelopers/HiddenEye && 
git clone https://github.com/UndeadSec/SocialFish" echo -e "${GREEN}Tools installed successfully inside Kali.${NC}" read -p "Press Enter to return to menu..." }

Loop to show the menu repeatedly

while true; do display_menu done

