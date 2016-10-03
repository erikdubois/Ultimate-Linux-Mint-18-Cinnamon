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



#https://github.com/mclmza/arc-theme-Red

rm -rf /tmp/arc-theme-Red

sudo apt-get install -y autoconf automake pkg-config libgtk-3-dev git

git clone https://github.com/mclmza/arc-theme-Red --depth 1 /tmp/arc-theme-Red
cd /tmp/arc-theme-Red
./autogen.sh --prefix=/usr
sudo make install
#sudo make uninstall

# cleanup
rm -rf /tmp/arc-theme-Red

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
