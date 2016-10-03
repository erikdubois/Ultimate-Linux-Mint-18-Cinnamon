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




# http://tutorialforlinux.com/2016/02/09/how-to-install-canon-pixma-mg7750mg7751mg7752mg7753-printers-drivers-on-ubuntu-linux-and-quickstart-scanning-easy-guide/
# http://www.canon-printerdrivers.com/2015/11/canon-pixma-mg7700-driver-download-mac.html
#sudo apt-get install libxml2 libglade2-0 libpng3 libtiff5 -y
#cd cnijfilter2-5.20-1-deb
#./install.sh
cd canon-pixma-mg7750
tar -xzvf cnijfilter2-5.20-1-deb.tar.gz
tar -xzvf scangearmp2-3.20-1-deb.tar.gz

sudo dpkg -i cnijfilter2-5.20-1-deb/packages/cnijfilter2_5.20-1_amd64.deb
sudo dpkg -i scangearmp2-3.20-1-deb/packages/scangearmp2_3.20-1_amd64.deb


# deleting the uncompressed folder to keep a clean github
rm -r cnijfilter2-5.20-1-deb
rm -r scangearmp2-3.20-1-deb

echo "Extracted folders have been deleted"

############################################################################

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"


