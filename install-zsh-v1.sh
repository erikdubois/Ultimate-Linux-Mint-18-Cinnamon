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


sudo apt-get install zsh git wget -y
wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

# changing the theme to random so you can enjoy tons of themes.

sudo sed -i 's/ZSH_THEME=\"robbyrussell\"/ZSH_THEME=\"random\"/g' ~/.zshrc

# If above line did not work somehow. This is what you should do to enjoy the many themes.
# go find the hidden .zshrc file and look for ZSH_THEME="robbyrussell" (CTRL+H to find hidden files)
# change this to ZSH_THEME="random"


echo
echo
echo
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "This is for the script of ZSH - Colouring of your terminal"
echo "You do not get the chance to type your password"
echo "Retype this line again and fill in your own username"
echo "sudo chsh username -s /bin/zsh"
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo
echo
echo "Log off or reboot to see the change in your terminal".
echo "----------------------------------------------------"


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
