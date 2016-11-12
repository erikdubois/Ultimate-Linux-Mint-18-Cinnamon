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



# install gcc6 IF IF IF needed to run
# see first if you can run vmware without gcc upgrading

# http://askubuntu.com/questions/822207/how-do-i-install-gcc-5-0-on-ubuntu-or-linux-mint
sudo add-apt-repository  -y ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install gcc-6 -y

sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-5


##################################################################################################################

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"


