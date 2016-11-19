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


rm /tmp/etcher.zip

# if there is no folder then make one
[ -d /opt/Etcher ] || mkdir -p /opt/Etcher
wget https://resin-production-downloads.s3.amazonaws.com/etcher/1.0.0-beta.16/Etcher-1.0.0-beta.16-linux-x64.zip -O /tmp/etcher.zip
sudo unzip -o /tmp/etcher.zip -d /opt/Etcher

rm /tmp/etcher.zip



echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
