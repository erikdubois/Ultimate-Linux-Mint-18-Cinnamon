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



# repo for spotify
sudo add-apt-repository "deb http://repository.spotify.com stable non-free" -y
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys D2C19886


# getting new info of this new repo
sudo apt-get -y update

# installing
sudo apt-get install -y spotify-client -y



