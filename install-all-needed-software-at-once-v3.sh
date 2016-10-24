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



###############################################################################################


# repo for grub-customizer
# sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y

# repo for numix themes
#sudo add-apt-repository ppa:numix/ppa -y

# repo for boot-repair
# sudo add-apt-repository -y ppa:yannubuntu/boot-repair


###############################################################################################

# Spotify

# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# 3. Update list of available packages
sudo apt-get update

# 4. Install Spotify
sudo apt-get install spotify-client -y


###############################################################################################

# donwloading and installing google chrome for netflix e.g.
# echo downloading google chrome latest stable edition
rm google-chrome-stable_current_amd64.deb

echo "downloading google chrome latest stable edition"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -y libcurl3
sudo dpkg -i google-chrome-stable_current_amd64.deb

rm google-chrome-stable_current_amd64.deb

###############################################################################################

# Downloading and installing latest sublime text 3

rm /tmp/sublime-text_build-3126_amd64.deb

wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb -O /tmp/sublime-text_build-3126_amd64.deb
sudo dpkg -i /tmp/sublime-text_build-3126_amd64.deb

rm /tmp/sublime-text_build-3126_amd64.deb


###############################################################################################

# Downloading and installing latest variety
sudo add-apt-repository ppa:peterlevi/ppa -y
sudo apt-get update
sudo apt-get install variety -y

###############################################################################################

#software from 'normal' repositories
sudo apt-get install -y adobe-flashplugin catfish clementine curl dconf-cli dropbox evolution focuswriter frei0r-plugins geary gimp gpick
sudo apt-get install -y glances gparted grsync hardinfo inkscape kazam nemo-dropbox
sudo apt-get install -y openshot pinta ppa-purge radiotray screenruler screenfetch scrot shutter slurm synapse
sudo apt-get install -y terminator thunar vlc vnstat winbind  

#software out of selection

#sudo apt-get install -y agave skype


#software from extra repositories
#sudo apt-get install -y boot-repair 
sudo apt-get install -y plank 

#software out of selection
#sudo apt-get install -y  grub-customizer


#operating specific software

sudo apt-get install nemo-compare -y

###############################################################################################

# installation of zippers and unzippers
sudo apt-get install -y p7zip-rar p7zip-full unace unrar zip unzip sharutils rar uudeview mpack arj cabextract file-roller

###############################################################################################

#themes
#sudo apt-get install numix-gtk-theme numix-icon-theme-circle -y
sudo apt-get install -y breeze-cursor-theme
#sudo apt-get install -y xcursor-themes


###############################################################################################

#ending
#mkdir $HOME/Upload
#sudo apt-get -y update
#sudo apt-get -f -y install
#sudo apt-get -y upgrade
#sudo apt-get -y autoremove
#sudo apt-get -y autoclean


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"

