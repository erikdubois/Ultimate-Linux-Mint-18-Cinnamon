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

# Downloading and installing latest teamviewer

rm /tmp/stacer.deb

wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.1/Stacer_1.0.1_amd64.deb -O /tmp/stacer.deb

sudo dpkg -i /tmp/stacer.deb

rm /tmp/stacer.deb


echo "################################################################"
echo "##############       teamviewer installed      #################"
echo "################################################################"
