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

# if there is no hidden folder then make one
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"


rm -rf /tmp/Arc-Theme-Colora-Collection
git clone https://github.com/erikdubois/Arc-Theme-Colora-Collection /tmp/Arc-Theme-Colora-Collection
find /tmp/Arc-Theme-Colora-Collection -maxdepth 1 -type f -exec rm -rf '{}' \;
cp -r /tmp/Arc-Theme-Colora-Collection/Cinnamon\ 3.0/* ~/.themes/
rm -rf /tmp/Arc-Theme-Colora-Collection


echo "################################################################"
echo "################## arc colora themes installed   ###############"
echo "################################################################"
