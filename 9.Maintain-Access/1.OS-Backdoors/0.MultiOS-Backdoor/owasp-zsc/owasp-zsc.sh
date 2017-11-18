#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

GITREPOROOT=/opt/ITSEC/9.Maintain-Access/1.OS-Backdoors/0.MultiOS-Backdoor/owasp-zsc/zscproject/OWASP-ZSC

DSKTPFLS=/opt/ITSEC-Install-Scripts/0.Initial/usrlcl/.local/share/applications/9.Maintain-Access/1.OS-Backdoors/0.MultiOS-Backdoor
DSKTPFLSDEST=/home/$USER/.local/share/applications/9.Maintain-Access/1.OS-Backdoors/0.MultiOS-Backdoor
DSKTPFL=owasp-zsc.desktop

echo "${bold}
  _____        ___    ____  ____      _________   ____ 
 / _ \ \      / / \  / ___||  _ \    |__  / ___| / ___|
| | | \ \ /\ / / _ \ \___ \| |_) |____ / /\___ \| |    
| |_| |\ V  V / ___ \ ___) |  __/_____/ /_ ___) | |___ 
 \___/  \_/\_/_/   \_\____/|_|       /____|____/ \____|
                 
${normal}"

mkdir -p /opt/ITSEC/9.Maintain-Access/1.OS-Backdoors/0.MultiOS-Backdoor/owasp-zsc/zscproject
cd /opt/ITSEC/9.Maintain-Access/1.OS-Backdoors/0.MultiOS-Backdoor/owasp-zsc/zscproject
git clone https://github.com/zscproject/OWASP-ZSC


cd $GITREPOROOT
git clean -f 
git fetch origin
git reset --hard origin/master
git pull
git submodule init && git submodule update --recursive

sudo python installer.py
mkdir -p $DSKTPFLSDEST && cp $DSKTPFLS/$DSKTPFL $DSKTPFLSDEST/$DSKTPFL