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


# if there is no folder then make one
[ -d $HOME"/DATA/Antergos-Xfce4" ] || git clone https://github.com/erikdubois/Antergos-Xfce4

cd Antergos-Xfce4
git pull
cd ..

# if there is no folder then make one
[ -d $HOME"/DATA/Arc-Theme-Colora" ] || git clone https://github.com/erikdubois/Arc-Theme-Colora

cd Arc-Theme-Colora
git pull
cd ..

# if there is no folder then make one
[ -d $HOME"/DATA/Aureola" ] || git clone https://github.com/erikdubois/Aureola

cd Aureola
git pull
cd ..

# if there is no folder then make one
[ -d $HOME"/DATA/Github-Tutorial" ] || git clone https://github.com/erikdubois/Github-Tutorial

cd Github-Tutorial
git pull
cd ..

# if there is no folder then make one
[ -d $HOME"/DATA/i3-on-Linux-Mint-18-Cinnamon" ] || git clone https://github.com/erikdubois/i3-on-Linux-Mint-18-Cinnamon

cd i3-on-Linux-Mint-18-Cinnamon
git pull
cd ..

# if there is no folder then make one
[ -d $HOME"/DATA/Mint-Y-Colora-Theme" ] || git clone https://github.com/erikdubois/Mint-Y-Colora-Theme

cd Mint-Y-Colora-Theme
git pull
cd ..

# if there is no folder then make one
[ -d $HOME"/DATA/Sardi-Extra" ] || git clone https://github.com/erikdubois/Sardi-Extra

cd Sardi-Extra
git pull
cd ..

# if there is no folder then make one
[ -d $HOME"/DATA/Plank-Themes" ] || git clone https://github.com/erikdubois/Plank-Themes

cd Plank-Themes
git pull
cd ..

# if there is no folder then make one
[ -d $HOME"/DATA/Surfn" ] || git clone https://github.com/erikdubois/Surfn

cd Surfn
git pull
cd ..

# if there is no folder then make one
[ -d $HOME"/DATA/Themes-Icons-Pack" ] || git clone https://github.com/erikdubois/Themes-Icons-Pack

cd Themes-Icons-Pack
git pull
cd .. 

# if there is no folder then make one
[ -d $HOME"/DATA/Ultimate-Linux-Mint-18-Cinnamon" ] || git clone https://github.com/erikdubois/Ultimate-Linux-Mint-18-Cinnamon


cd Ultimate-Linux-Mint-18-Cinnamon
git pull
cd ..

echo "all done"
sleep 1