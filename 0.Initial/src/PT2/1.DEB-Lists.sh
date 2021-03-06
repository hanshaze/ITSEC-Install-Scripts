#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
#packagelist=
#xargs -a <(awk '/^\s*[^#]/' "$packagelist") -r -- sudo apt-get install -y

bold=$(tput bold)
normal=$(tput sgr0)

APTLSTDIR=/opt/ITSEC-Install-Scripts/0.Initial/lst/apt

echo "${bold}
    _    ____ _____     ____  _____ ____       _     ___ ____ _____ ____  
   / \  |  _ \_   _|   |  _ \| ____|  _ \     | |   |_ _/ ___|_   _/ ___| 
  / _ \ | |_) || |_____| | | |  _| | |_) |____| |    | |\___ \ | | \___ \ 
 / ___ \|  __/ | |_____| |_| | |___|  __/_____| |___ | | ___) || |  ___) |
/_/   \_\_|    |_|     |____/|_____|_|        |_____|___|____/ |_| |____/ 
        
${normal}"

#####################################################
# TEMP DISABLED MYSQL && PHPMYADMIN - No apps use it an install is not unattended
#echo "${bold}
#USING MYSQL AS DEFAULT MYSQL PASS - no default apps dependend on mysql yet, installed anyways     
#${normal}"
#echo "${bold}
#Nginx installation still buggy, only used by fruity wifi
#${normal}"

## User interaction apps
#sudo apt-get install -y macchanger 
#sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password mysql'
#sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password mysql'

#sudo apt-get install -y mysql-server phpmyadmin
##sudo mysql_secure_installation 
#echo "${bold}
#MYSQL SETUP   
#${normal}"

#mysql -u root <<-EOF
#UPDATE mysql.user SET Password=PASSWORD('$,mysql') WHERE User='root';
#DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
#DELETE FROM mysql.user WHERE User='';
#DELETE FROM mysql.db WHERE Db='test' OR Db='test_%';
#FLUSH PRIVILEGES;
#EOF
#####################################################
sudo apt-get install -y macchanger 
echo "${bold}
Installing the apt-get lists - go get a coffee, will take a while ...   
${normal}"
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/main/essential.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/main/libs.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/main/python.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/main/wifi-firmware.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/main/database-webserver.txt") -r -- sudo apt-get install -y


# Unsorted
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-miredo.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-virtualbox.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/main/docker.txt") -r -- sudo apt-get install -y


## 1. INFO

#### 1. Portscanner 
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-nmap.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-masscan.txt") -r -- sudo apt-get install -y
###xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-xplico.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-zmap.txt") -r -- sudo apt-get install -y

#### 2. Livehost
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-recon-ng.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-bypasscf.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-hping.txt") -r -- sudo apt-get install -y

#### 5.DNS
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-dnsenum.txt") -r -- sudo apt-get install -y

#### 15.Fuzzer
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-dotdotpwn.txt") -r -- sudo apt-get install -y

#### 16.IDS-IPS_Identification
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-ftester.txt") -r -- sudo apt-get install -y
##xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-fir.txt") -r -- sudo apt-get install -y


# 2.Vulnerability-Scanner
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-ava.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-arachni.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-golismero.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-lhf.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-joomscan.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-lightbulb-framework.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-openvas.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-pyfiscan.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-sn1per.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-sparta.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-w3af.txt") -r -- sudo apt-get install -y

#### 3.LFI-RFI
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-lfifreak.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-liffy.txt") -r -- sudo apt-get install -y

#### 2.Cisco-Tools
###xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-cisco-torch.txt") -r -- sudo apt-get install -y
###xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-copy-router-config.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-yersinia.txt") -r -- sudo apt-get install -y


# 3.Exploit
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-armitage.txt") -r -- sudo apt-get install -y
#xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-veil-evasion.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-metasploit.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-evilgrade.txt") -r -- sudo apt-get install -y


#### 5.SE_Phishing
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-SE-toolkit.txt") -r -- sudo apt-get install -y


# 4.PASS
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-brut3k1t.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-keimpx.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-medusa.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-thc-hydra.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-thc-pptp-bruter.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-patator.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-cowpatty.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-johnny.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-johntheripper.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-ophcrack.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-rainbowcrack-ng.txt") -r -- sudo apt-get install -y


# 6. WIFI
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-routerkeygenPC.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-aircrack-ng.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-atear.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-kismet.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-wifipumpkin.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-fruitywifi.txt") -r -- sudo apt-get install -y


# 7.MITM
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-moloch.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-bettercap.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-tcpflow.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-dshell.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-fiked.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-ettercap.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-mitmf.txt") -r -- sudo apt-get install -y
#xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-cdpsnarf.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-netsniff-ng.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-morpheus.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-wireshark.txt") -r -- sudo apt-get install -y

# 8.Tunnel
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-sslh.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-stunnel.txt") -r -- sudo apt-get install -y

# 9.Maintain Access
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-ares.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-backdoorfactory.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-thefatrat.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-webacoo.txt") -r -- sudo apt-get install -y
# 9.Maintain-Access/99.Misc
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/deps-exe2hex.txt") -r -- sudo apt-get install -y

sudo apt-get install -y expect
###remove
xargs -a <(awk '/^\s*[^#]/' "$APTLSTDIR/main/remove-initial.txt") -r -- sudo apt-get purge --remove -y

sudo apt-get autoremove -y

sudo apt-get install -y linux-image-extra-$(uname -r) 
#sudo apt-get install -y linux-image-extra-virtual-$(uname -r)

sudo easy_install -U pip

sudo apt-get purge --remove -y openjdk-8-jre openjdk-8-jre openjdk-8-jre-headless
sudo updatedb
sudo ldconfig

cd /opt/ITSEC-Install-Scripts/0.Initial/src/settings-scripts/disable-services

sudo ./disable-all.sh
sudo phpenmod mcrypt
sudo phpenmod mbstring