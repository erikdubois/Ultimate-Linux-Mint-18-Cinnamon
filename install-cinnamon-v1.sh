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

sudo add-apt-repository -y ppa:gwendal-lebihan-dev/cinnamon-nightly
sudo apt-get update 
sudo apt-get install cinnamon -y
sudo apt-get upgrade



echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
