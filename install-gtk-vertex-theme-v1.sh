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


# https://github.com/horst3180/vertex-theme

rm -rf /tmp/vertex-theme

sudo rm -rf /usr/share/themes/{Vertex,Vertex-Dark,Vertex-Light,Vertex-Gnome-Shell,Vertex-Gnome-Shell-3.16,Vertex-Cinnamon}
rm -rf ~/.local/share/themes/{Vertex,Vertex-Dark,Vertex-Light,Vertex-Gnome-Shell,Vertex-Gnome-Shell-3.16,Vertex-Cinnamon}
rm -rf ~/.themes/{Vertex,Vertex-Dark,Vertex-Light,Vertex-Gnome-Shell,Vertex-Gnome-Shell-3.16,Vertex-Cinnamon}

sudo apt-get install -y autoconf automake pkg-config libgtk-3-dev git

git clone https://github.com/horst3180/vertex-theme --depth 1  /tmp/vertex-theme
cd /tmp/vertex-theme
./autogen.sh --prefix=/usr
sudo make install

rm -rf /tmp/vertex-theme



#sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/vertex-theme.list"
#sudo apt-get update
#sudo apt-get install vertex-theme -y



echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
