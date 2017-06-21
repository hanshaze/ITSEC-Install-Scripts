#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
#packagelist=
#xargs -a <(awk '/^\s*[^#]/' "$packagelist") -r -- sudo apt-get install -y
sudo chown -R $USER:$USER /home/$USER
sudo chown -R $USER:$USER /opt

xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/main/essential.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/main/libs.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/main/python.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/main/wifi-firmware.txt") -r -- sudo apt-get install -y
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password mysql'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password mysql'
sudo apt-get -y install mysql-server
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/main/database-webserver.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-miredo.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-virtualbox.txt") -r -- sudo apt-get install -y
## 1. INFO
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/main/docker.txt") -r -- sudo apt-get install -y

xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-nmap.txt") -r -- sudo apt-get install -y
###xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-xplico.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-zmap.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-recon-ng.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-bypasscf.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-dnsenum.txt") -r -- sudo apt-get install -y
##xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-fir.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-ftester.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-hping.txt") -r -- sudo apt-get install -y



# 2. VULN
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-ava.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-golismero.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-joomscan.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-lhf.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-lightbulb-framework.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-pyfiscan.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-sn1per.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-sparta.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-uniscan.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-w3af.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-openvas.txt") -r -- sudo apt-get install -y
###xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-cisco-torch.txt") -r -- sudo apt-get install -y
###xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-copy-router-config.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-yersinia.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-dotdotpwn.txt") -r -- sudo apt-get install -y

# 3.Exploi
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-armitage.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-SE-toolkit.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-ares.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-backdoorfactory.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-thefatrat.txt") -r -- sudo apt-get install -y
#xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-veil-evasion.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-webacoo.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-arachni.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-metasploit.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-lfifreak.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-liffy.txt") -r -- sudo apt-get install -y


#4.PASS
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-brut3k1t.txt") -r -- sudo apt-get install -y
#xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-keimpx.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-medusa.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-thc-hydra.txt") -r -- sudo apt-get install -y
#xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-thc-pptp-bruter.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-cowpatty.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-johnny.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-johntheripper.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-ophcrack.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-rainbowcrack-ng.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-patator-ng.txt") -r -- sudo apt-get install -y

# 6. WIFI
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-routerkeygenPC.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-aircrack.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-atear.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-evilgrade.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-kismet.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-wifipumpkin.txt") -r -- sudo apt-get install -y


#7.MITM
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-bettercap.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-tcpflow.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-dshell.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-fiked.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-ettercap.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-mitmf.txt") -r -- sudo apt-get install -y
#xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-cdpsnarf.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-netsniff-ng.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-morpheus.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-wireshark.txt") -r -- sudo apt-get install -y

# 8.Tunnel
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-exe2hex.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-sslh.txt") -r -- sudo apt-get install -y
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/deps-stunnel.txt") -r -- sudo apt-get install -y

###remove
xargs -a <(awk '/^\s*[^#]/' "/opt/ITSEC-Install-Scripts/0.Initial/lst/apt/main/remove-initial.txt") -r -- sudo apt-get purge --remove


sudo apt-get install -y linux-image-extra-$(uname -r) 
#sudo apt-get install -y linux-image-extra-virtual-$(uname -r)
sudo easy_install -U pip

sudo apt-get install -y expect

#sudo mysql_secure_installation 

mysql -u root <<-EOF
UPDATE mysql.user SET Password=PASSWORD('$,mysql') WHERE User='root';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.db WHERE Db='test' OR Db='test_%';
FLUSH PRIVILEGES;
EOF


sudo apt-get autoremove -y
sudo updatedb
sudo ldconfig
cd /opt/ITSEC-Install-Scripts/0.Initial/src/settings-scripts/disable-services
sudo ./disable-all.sh

sudo phpenmod mcrypt
sudo phpenmod mbstring