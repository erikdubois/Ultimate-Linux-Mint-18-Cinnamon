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


# dependancy

wget http://ftp.de.debian.org/debian/pool/main/libg/libgcrypt11/libgcrypt11_1.5.0-5+deb7u4_amd64.deb
wget https://github.com/adobe/brackets/releases/download/release-1.7/Brackets.Release.1.7.64-bit.deb


sudo dpkg -i libgcrypt11_1.5.0-5+deb7u4_amd64.deb
sudo dpkg -i Brackets.Release.1.7.64-bit.deb


rm Brackets.Release.1.7.64-bit.deb
rm libgcrypt11_1.5.0-5+deb7u4_amd64.deb

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
