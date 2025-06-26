# ⚙️ Kali Linux Installer for Termux (Auto Toolkit) – v3

A powerful and ready-to-use Kali Linux installer for Termux, featuring essential Red Team tools — now upgraded with **v3** including three different installation methods, command-line flexibility, and improved support for Termux.

---

## 🚀 New in v3

- ✅ Switched from `pkg` to `apt` for better compatibility with Termux
- ✅ Added error handling for missing Kali installation
- ✅ Includes 3 different installation methods for Kali
- ✅ Clear fallback when auto-install fails
- ✅ Clean interface without color bugs on Termux
- ✅ Menu now shows manual install instructions if needed

---

## 📦 What's Inside?

- `menu.sh` → Main interactive launcher (auto-installer + tools)
- `kali.sh` → Automates Kali installation (method-based)
- `tools/install-tools.sh` → Installs tools like `nmap`, `sqlmap`, `metasploit`, etc.
- `T.DROP` → Custom Red Team tool from this repo  
  → [T.DROP GitHub](https://github.com/mhmoud-jma/T.DROP)

---

## 📸 Screenshots

### 🔹 Main Menu
![Main Menu](https://github.com/mhmoud-jma/Install.kali/blob/main/Termux%201.jpg)

### 🔹 Run kali
![Run kali](https://github.com/mhmoud-jma/Install.kali/blob/main/Termux%202.jpg)

---

## 📥 How to Install

### 1. Download and Run the Project

```bash
apt update && apt upgrade -y
apt install unzip git wget -y
git clone https://github.com/mhmoud-jma/Install.kali.git
cd Install.kali
unzip kali-installer.zip
cd kali
chmod +x menu.sh
bash menu.sh
```
2. Run the Installer Menu Manually

chmod +x menu.sh
bash menu.sh


---

🧰 Available Tools

Recon:
```
nmap, whois, amass, dnsutils, recon-ng, theHarvester
```
Scanning:
```
whatweb, nikto, wafw00f
```
Exploitation:
```
sqlmap, metasploit-framework, hydra
```
Password Cracking:
```
john, crunch
```
Phishing:
```
zphisher, HiddenEye, SocialFish
```
Extras:
```
T.DROP → https://github.com/mhmoud-jma/T.DROP
```

---

🔧 Manual Tool Installation (if auto fails)

If the tools fail to install automatically, you can run this inside Kali:
```
sudo apt update
sudo apt install -y nmap whois dnsutils net-tools whatweb nikto wafw00f theharvester recon-ng amass sqlmap metasploit-framework hydra john crunch
```
And clone phishing tools manually:
```
git clone https://github.com/htr-tech/zphisher
git clone https://github.com/DarkSecDevelopers/HiddenEye
git clone https://github.com/UndeadSec/SocialFish
git clone https://github.com/mhmoud-jma/T.DROP
```

---

⭐ Support This Project

If you find this project helpful, please consider giving it a ⭐ on GitHub:
👉 https://github.com/mhmoud-jma/Install.kali


---

⚠️ Disclaimer

> This script is for educational purposes only. The author is not responsible for any misuse.
Please use ethically and responsibly.




---

📄 License

This project is licensed under the MIT License – see the LICENSE file for details.


---

👨‍💻 Author

Mahmoud Jmaiel
Red Team enthusiast & cybersecurity student
GitHub: @mhmoud-jma
