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



sudo rm -fr /opt/franz
sudo rm -fr /usr/share/applications/franz.desktop


# create installation dir
sudo mkdir -p /opt/franz

#install franz
wget -qO- https://github.com/meetfranz/franz-app/releases/download/4.0.4/Franz-linux-x64-4.0.4.tgz | sudo tar xvz -C /opt/franz/

# add app icon
#sudo wget "https://cdn-images-1.medium.com/max/360/1*v86tTomtFZIdqzMNpvwIZw.png" -O /opt/franz/franz-icon.png

# configure app for desktop use
sudo bash -c "cat <<EOF > /usr/share/applications/franz.desktop                                                                 
[Desktop Entry]
Name=Franz
Comment=
Exec=/opt/franz/Franz
Icon=/opt/franz/franz-icon.png
Terminal=false
Type=Application
Categories=Messaging,Internet
EOF"

echo "fixing hardcoded icon"
old="Icon=\/opt\/franz\/franz-icon.png"
new="Icon=franz"
location="/usr/share/applications/franz.desktop"
sudo sed -i s/$old/$new/g $location

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
