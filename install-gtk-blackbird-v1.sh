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



#https://github.com/shimmerproject/Blackbird

echo "################################################################"
echo "Checking if git is installed"
echo "Install git for an easy installation"


	# G I T

	# check if git is installed
	if which git > /dev/null; then
		echo "git was installed. Proceding..."

		else

		echo "################################################################"
		echo "installing git for this script to work"
		echo "################################################################"

	  	sudo apt-get install git -y
		  	
	fi


git clone https://github.com/shimmerproject/Blackbird /tmp/Blackbird
mkdir ~/.themes/Blackbird
cp -r /tmp/Blackbird/* ~/.themes/Blackbird
rm -rf /tmp/Blackbird



echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
