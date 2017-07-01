#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}
 ___    _    __  _______ _     ___   ___  ____  _____ ____  
|_ _|  / \   \ \/ /  ___| |   / _ \ / _ \|  _ \| ____|  _ \ 
 | |  / _ \   \  /| |_  | |  | | | | | | | | | |  _| | |_) |
 | | / ___ \  /  \|  _| | |__| |_| | |_| | |_| | |___|  _ < 
|___/_/   \_\/_/\_\_|   |_____\___/ \___/|____/|_____|_| \_\
             
${normal}"

mkdir -p /opt/ITSEC/2.Vulnerability-Analysis/4.Stresstest/iax-flooder

DOWNLOADDIR=/opt/ITSEC/2.Vulnerability-Analysis/4.Stresstest/iax-flooder
BINROOT=/opt/ITSEC/2.Vulnerability-Analysis/4.Stresstest/iax-flooder/iaxflood
EXECUTEABLE1=iaxflood
EXECUTEABLE2=iaxflood

DSKTPFLS=/opt/ITSEC-Install-Scripts/0.Initial/usrlcl/.local/share/applications/2.Vulnerability-Analysis/4.Stresstest
DSKTPFLSDEST=/home/$USER/.local/share/applications/2.Vulnerability-Analysis/4.Stresstest
DSKTPFL=iaxflood.desktop

cd $DOWNLOADDIR
sudo rm -f /usr/local/bin/$EXECUTEABLE2
wget http://www.hackingexposedvoip.com/tools/iaxflood.tar.gz -O iaxflood.tar.gz 
tar xvf iaxflood.tar.gz
cd iaxflood
make

chmod +x $BINROOT/$EXECUTEABLE1
sudo ln -s $BINROOT/$EXECUTEABLE1 /usr/local/bin/$EXECUTEABLE2

mkdir -p $DSKTPFLSDEST && cp $DSKTPFLS/$DSKTPFL $DSKTPFLSDEST/$DSKTPFL