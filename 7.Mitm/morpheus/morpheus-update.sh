#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}
 __  __  ___  ____  ____  _   _ _____ _   _ ____  
|  \/  |/ _ \|  _ \|  _ \| | | | ____| | | / ___| 
| |\/| | | | | |_) | |_) | |_| |  _| | | | \___ \ 
| |  | | |_| |  _ <|  __/|  _  | |___| |_| |___) |
|_|  |_|\___/|_| \_\_|   |_| |_|_____|\___/|____/ 
              
${normal}"

GITREPOROOT=/opt/ITSEC/7.Mitm/morpheus/r00t-3xp10it/morpheus
sudo rm -f /usr/local/bin/morpheus
#
DSKTPFLS=/opt/ITSEC-Install-Scripts/0.Initial/usrlcl/.local/share/applications/7.Mitm
DSKTPFLSDEST=/home/$USER/.local/share/applications/7.Mitm
DSKTPFL=morpheus.desktop

sudo updatedb
sudo ldconfig
sudo rm -f /usr/local/bin/morpheus

cd /opt/ITSEC/7.Mitm/morpheus/r00t-3xp10it/morpheus
git clean -f 
git fetch origin
git reset --hard origin/master
git pull
git submodule init
git submodule update --recursive

sudo ln -s /opt/ITSEC/7.Mitm/morpheus/r00t-3xp10it/morpheus/morpheus.sh /usr/local/bin/morpheus
rm -f $DSKTPFLSDEST/$DSKTPFL
mkdir -p $DSKTPFLSDEST
cp $DSKTPFLS/$DSKTPFL $DSKTPFLSDEST/$DSKTPFL