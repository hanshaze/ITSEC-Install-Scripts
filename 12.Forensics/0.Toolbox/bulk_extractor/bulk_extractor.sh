#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)


GITREPOROOT=/opt/ITSEC/8.Forensics/0.Toolbox/bulk_extractor/simsong/bulk_extractor

DSKTPFLS=/opt/ITSEC-Install-Scripts/0.Initial/usrlcl/.local/share/applications
DSKTPFLSDEST=/home/$USER/.local/share/applications
DSKTPFL=bulk-extractor.desktop

echo "${bold}
 ____  _     _  _________  _______ ____   ____ _____ ____  
| __ )| |   | |/ / ____\ \/ /_   _|  _ \ / ___|_   _|  _ \ 
|  _ \| |   | ' /|  _|  \  /  | | | |_) | |     | | | |_) |
| |_) | |___| . \| |___ /  \  | | |  _ <| |___  | | |  _ < 
|____/|_____|_|\_\_____/_/\_\ |_| |_| \_\\____| |_| |_| \_\
      
${normal}"


cd $GITREPOROOT
make clean
git clean -f 
git fetch origin
git reset --hard origin/master
git pull
chmod +x bootstrap.sh
./bootstrap.sh
./configure
make -j 4
sudo make install
mkdir -p $DSKTPFLSDEST && cp $DSKTPFLS/$DSKTPFL $DSKTPFLSDEST/$DSKTPFL