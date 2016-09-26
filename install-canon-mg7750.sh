#!/bin/bash
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



# http://tutorialforlinux.com/2016/02/09/how-to-install-canon-pixma-mg7750mg7751mg7752mg7753-printers-drivers-on-ubuntu-linux-and-quickstart-scanning-easy-guide/
# http://www.canon-printerdrivers.com/2015/11/canon-pixma-mg7700-driver-download-mac.html
#sudo apt-get install libxml2 libglade2-0 libpng3 libtiff5 -y
#cd cnijfilter2-5.20-1-deb
#./install.sh
cd canon
tar -xzvf cnijfilter2-5.20-1-deb.tar.gz
tar -xzvf scangearmp2-3.20-1-deb.tar.gz

sudo dpkg -i cnijfilter2-5.20-1-deb/packages/cnijfilter2_5.20-1_amd64.deb
sudo dpkg -i scangearmp2-3.20-1-deb/packages/scangearmp2_3.20-1_amd64.deb

# deleting the uncompressed folder to keep a clean github
echo "Extracted folders have been deleted"
rm -r cnijfilter2-5.20-1-deb
rm -r scangearmp2-3.20-1-deb

############################################################################

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"


