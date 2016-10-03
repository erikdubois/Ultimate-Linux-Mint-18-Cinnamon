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



sh icons-sardi-latest.sh
sh icons-sardi-extra-latest.sh
sh icons-super-ultra-flat-numix-remix-latest.sh


sh install-canon-mg7750.sh

sh install-dconf-editor.sh

sh install-gtk-arc-theme-make-install-latest.sh
sh install-gtk-arc-theme-red-latest.sh

sh install-peek-latest.sh

sh install-simplescreenrecorder.sh

sh install-teamviewer.sh

sh plank-themes.sh

sh install-all-needed-software-latest.sh

sh hardcodefixer-latest.sh
#sh hardcodefixer-personal-latest.sh

sh install-zsh-latest.sh

sh conky-aureola-latest.sh

echo "Starting full maintenance"
echo "Force install"
sudo apt-get -f -y install
echo "Upgrade"
sudo apt-get upgrade -y
echo "Autoremove"
sudo apt-get autoremove -y
echo "Autoclean"
sudo apt-get autoclean -y
echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"


sh update-to-the-last-stable-4.7-4-latest.sh

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
echo "###################       IL FINALE       ######################"
echo "################################################################"

