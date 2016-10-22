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


# Latest builds of cinnamon and nemo

wget https://github.com/phw/peek/releases/download/v0.7.2/peek-0.7.2-Linux.deb
sudo apt install libsdl1.2debian ffmpeg libavdevice-ffmpeg56 -y
sudo apt-get -f install -y
sudo dpkg -i peek-0.7.2-Linux.deb
rm peek-0.7.2-Linux.deb


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
