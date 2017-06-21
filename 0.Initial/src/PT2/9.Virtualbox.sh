#!/bin/bash

sudo chown -R $USER:$USER /opt
sudo rm -rf /opt/DEPS/virtualbox
mkdir -p /opt/DEPS/virtualbox
sudo chown -R $USER:$USER /opt
cd /opt/DEPS
sudo rm -r virtualbox
mkdir virtualbox
cd virtualbox
wget http://download.virtualbox.org/virtualbox/5.1.22/virtualbox-5.1_5.1.22-115126~Ubuntu~xenial_amd64.deb
yes | sudo dpkg -i virtualbox-5.1_5.1.22-115126~Ubuntu~xenial_amd64.deb

#wget http://download.virtualbox.org/virtualbox/5.1.22/Oracle_VM_VirtualBox_Extension_Pack-5.1.22-115126.vbox-extpack
#sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-5.1.22-115126.vbox-extpack
