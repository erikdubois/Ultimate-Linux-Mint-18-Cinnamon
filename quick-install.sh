#!/bin/bash -x
#
#                                       
# MMMMMMMMMMMMMMMMMMMMMMMMMmds+.        
# MMm----::-://////////////oymNMd+`     
# MMd      /++                -sNMd:    
# MMNso/`  dMM    `.::-. .-::.` .hMN:   
# ddddMMh  dMM   :hNMNMNhNMNMNh: `NMm   
#     NMm  dMM  .NMN/-+MMM+-/NMN` dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  -MMm  `MMM   dMM. dMM   
#     NMm  dMM  .mmd  `mmm   yMM. dMM   
#     NMm  dMM`  ..`   ...   ydm. dMM   
#     hMM- +MMd/-------...-:sdds  dMM   
#     -NMm- :hNMNNNmdddddddddy/`  dMM   
#      -dMNs-``-::::-------.``    dMM   
#       `/dMNmy+/:-------------:/yMMM  
#          ./ydNMMMMMMMMMMMMMMMMMMMMM  
#             \.MMMMMMMMMMMMMMMMMMM    
#                                      
#
#
##################################################################################################################
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################
# 
# More from Erik Dubois
#
# Aurora Conky
# at http://sourceforge.net/projects/auroraconkytheme/
# Explanation on the use of this theme can be found at 
# http://erikdubois.be/category/linux/aurora-conky/
# 
# Aureola Conky
# Collections of nice conky's with lua syntax
# https://github.com/erikdubois/Aureola
#
# Sardi icons
# Many different styles of icons from colourfull, monochrome, white, circle
# https://sourceforge.net/projects/sardi/
#
# Super Ultra Flat Numix Remix
# Colourfull and playfull icons
# https://github.com/erikdubois/Super-Ultra-Flat-Numix-Remix
#
# Check out the github - many more scripts for automatic installation of Linux Systems.
#
#
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. AT YOUR OWN RISK.
#
##################################################################################################################


sh icons-sardi-latest.sh
sh icons-sardi-extra-latest.sh
sh icons-super-ultra-flat-numix-latest.sh


sh install-canon-mg7750.sh


sh install-gtk-arc-theme-make-install-latest.sh
sh install-gtk-arc-theme-red-latest.sh

sh install-peek-latest.sh

sh install-simplescreenrecorder.sh

sh install-teamviewer.sh

sh plank-themes.sh

sh install-zsh-latest.sh
sudo chsh erik -s /bin/zsh

sh install-all-needed-software-latest.sh

sh hardcodefixer-latest.sh
#sh hardcodefixer-personal-latest.sh

sh update-to-the-last-stable-4.7-4-latest.sh


# Configure applications

sh config_apps/all-shortcuts-cinnmon/dconf_load.sh
sh config_apps/gnome-screenshot/set-gnome-screenshot-to-save-as-jpg.sh




echo "Force install"
sudo apt-get -f -y install
echo "Upgrade"
sudo apt-get upgrade -y
echo "Autoremove"
sudo apt-get autoremove -y
echo "Autoclean"
sudo apt-get autoclean -y


sh conky-aureola-latest.sh

