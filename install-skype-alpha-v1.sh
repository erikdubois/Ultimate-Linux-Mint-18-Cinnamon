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

# Downloading and installing latest teamviewer

rm /tmp/skypeforlinux-64-alpha.deb

wget https://go.skype.com/skypeforlinux-64-alpha.deb -O /tmp/skypeforlinux-64-alpha.deb
sudo apt install -y libjpeg62:i386
sudo dpkg -i /tmp/skypeforlinux-64-alpha.deb

rm /tmp/skypeforlinux-64-alpha.deb



echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
