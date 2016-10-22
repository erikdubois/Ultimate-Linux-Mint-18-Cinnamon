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



#  H I G H L Y    E X P E R I M E N T A L

#  Better to read and do a step by step upgrade

#  http://erikdubois.be/linux/the-ultimate-linux-mint-update

#  if you want to experiment on a computer where there is no data loss risk

#  please be my guest

echo "Let us install the latest kernel"
echo "Be sure to backup or use it on an clean installation"


#sudo apt-get update -y
#sudo apt-get upgrade -y
#sudo apt-get autoclean -y
#sudo apt-get autoremove -y

#Grub customizer if you dual boot
#sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
#sudo apt-get -y update
#sudo apt-get install -y grub-customizer


# latest kernel check the following url
# http://kernel.ubuntu.com/~kernel-ppa/mainline/
# at the moment you can have kernel 4.4.0
# depending of you hardware you can install it as wel
# keep in mind that nvidia or ati drivers sometimes clash with the kernel
# read the latest article on these matters at http://erikdubois.be

wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.8.4/linux-headers-4.8.4-040804-generic_4.8.4-040804.201610220733_amd64.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.8.4/linux-headers-4.8.4-040804_4.8.4-040804.201610220733_all.deb
wget http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.8.4/linux-image-4.8.4-040804-generic_4.8.4-040804.201610220733_amd64.deb

sudo dpkg -i linux*

rm linux-*

echo "Kernel is installed"
echo "Download files have been deleted"

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
