#!/bin/bash
export TERM=xterm-256color

while true; do
    printf "\033c"  # تنظيف الشاشة في Termux

    echo "Kali Linux Installer Menu"
    echo "=============================="
    echo "1. Install Kali (Method 1)"
    echo "2. Install Kali (Method 2)"
    echo "3. Install Kali (Method 3)"
    echo "4. Show Available Tools"
    echo "5. Install Tools inside Kali"
    echo "6. Support Project (Give a Star ⭐)"
    echo "7. Exit"
    echo "=============================="
    read -p "Choose an option: " option

    case $option in
        1)
            pkg install wget -y
            wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali.sh
            chmod +x kali.sh
            ./kali.sh
            ;;
        2)
            pkg update && pkg upgrade -y
            pkg install wget proot tar -y
            wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Kali/kali.sh
            chmod +x kali.sh
            ./kali.sh
            ;;
        3)
            pkg install git proot wget -y
            git clone https://github.com/MFDGaming/Debian-Termux
            cd Debian-Termux || exit
            bash Debian.sh
            cd ..
            ;;
        4)
            echo ""
            echo "Available Tools:"
            echo "- nmap"
            echo "- whois"
            echo "- dnsutils (dig, nslookup)"
            echo "- net-tools (ifconfig, netstat)"
            echo "- whatweb"
            echo "- nikto"
            echo "- wafw00f"
            echo "- theHarvester"
            echo "- recon-ng"
            echo "- amass"
            echo "- sqlmap"
            echo "- metasploit-framework"
            echo "- hydra"
            echo "- john (John the Ripper)"
            echo "- crunch"
            echo "- zphisher"
            echo "- HiddenEye"
            echo "- SocialFish"
            echo "- T.DROP => https://github.com/mhmoud-jma/T.DROP"
            read -p "Press Enter to return to menu..."
            ;;
        5)
            echo "Installing tools inside Kali..."

            proot-distro login kali -- bash -c "apt update && apt install -y nmap whois dnsutils net-tools whatweb nikto wafw00f theharvester recon-ng amass sqlmap metasploit-framework hydra john crunch"

            if [ $? -ne 0 ]; then
                echo ""
                echo "❌ Error: Kali Linux not found or not installed."
                echo "🔧 Please install Kali first using one of the options (1, 2, or 3) before running this step."
                echo "📦 You can install the tools manually inside Kali using:"
                echo ""
                echo "sudo apt install -y nmap whois dnsutils net-tools whatweb nikto wafw00f theharvester recon-ng amass sqlmap metasploit-framework hydra john crunch"
                echo ""
                echo "🌐 Tool References:"
                echo "- T.DROP => https://github.com/mhmoud-jma/T.DROP"
                echo "- Zphisher => https://github.com/htr-tech/zphisher"
                echo "- HiddenEye => https://github.com/DarkSecDevelopers/HiddenEye"
                echo "- SocialFish => https://github.com/UndeadSec/SocialFish"
                echo ""
                read -p "Press Enter to return to menu..."
            else
                echo ""
                echo "✅ Tools installed successfully inside Kali."
                echo ""
                echo "🌐 Tool References (for manual use or updates):"
                echo "- T.DROP => https://github.com/mhmoud-jma/T.DROP"
                echo "- Zphisher => https://github.com/htr-tech/zphisher"
                echo "- HiddenEye => https://github.com/DarkSecDevelopers/HiddenEye"
                echo "- SocialFish => https://github.com/UndeadSec/SocialFish"
                echo ""
                echo "ℹ️ You can also install/update them manually later inside Kali."
                read -p "Press Enter to continue..."
            fi
            ;;
        6)
            echo "Thanks for your support! Opening project page..."
            termux-open-url https://github.com/mhmoud-jma/Install.kali
            ;;
        7)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid option. Please try again."
            sleep 1
            ;;
    esac
done
