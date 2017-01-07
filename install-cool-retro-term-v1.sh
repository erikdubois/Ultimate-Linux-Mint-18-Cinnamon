#!/bin/bash
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

set -e

# if there is an instance, delete it first - clean start
[ -d "/opt/cool-retro-term" ] && sudo rm -rf /opt/cool-retro-term
[ -d "/tmp/cool-retro-term" ] && sudo rm -rf /tmp/cool-retro-term
[ -f "/usr/share/applications/cool-retro-term.desktop" ] && sudo rm /usr/share/applications/cool-retro-term.desktop
[ -L "/usr/bin/cool-retro-term" ] && sudo rm /usr/bin/cool-retro-term

# Installing dependencies

sudo apt-get install -y build-essential qmlscene qt5-qmake qt5-default qtdeclarative5-dev
sudo apt-get install -y qtdeclarative5-controls-plugin qtdeclarative5-qtquick2-plugin libqt5qml-graphicaleffects
sudo apt-get install -y qtdeclarative5-dialogs-plugin qtdeclarative5-localstorage-plugin qtdeclarative5-window-plugin

# Get it from GitHub
git clone --recursive https://github.com/Swordfish90/cool-retro-term.git /tmp/cool-retro-term

# Change directory
cd /tmp/cool-retro-term

# Build it and compile
sudo qmake && make

# moving the result to /opt
sudo mkdir /opt/cool-retro-term
sudo cp -r /tmp/cool-retro-term/* /opt/cool-retro-term
sudo cp /opt/cool-retro-term/cool-retro-term.desktop /usr/share/applications/
sudo ln -s /opt/cool-retro-term/cool-retro-term /usr/bin/cool-retro-term
 
[ -d /tmp/cool-retro-term ] && sudo rm -rf /tmp/cool-retro-term

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
