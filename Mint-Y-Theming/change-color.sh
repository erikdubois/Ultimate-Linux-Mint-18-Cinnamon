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
#
# Current project : Ultimate-Linux-Mint-18
#
# Source 	: 	https://github.com/erikdubois/Ultimate-Linux-Mint-18
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


# changing the assets from colour

# Mint-Y Theme 
# Light green - 9ab87c
# Dark green - 8fa876

# but there are some minor variations to consider as well


##################################################################################################################
# put your colour codes in here and do not change the rest

personaldarkcolour=8fa876
personallightcolour=9ab87c


##################################################################################################################


##################################################################################################################


oldcolour1=9ab87c
oldcolour2=8fa876
oldcolour3=779559
oldcolour4=9abe76
oldcolour5=9ab87d
oldcolour6=88a66a

newcolour1=$personallightcolour
newcolour2=$personaldarkcolour
newcolour3=$personaldarkcolour
newcolour4=$personallightcolour
newcolour5=$personallightcolour
newcolour6=$personallightcolour


find src -name "*.*" -type f -exec sed -i 's/'$oldcolour1'/'$newcolour1'/g' {}  \;
find src -name "*.*" -type f -exec sed -i 's/'$oldcolour2'/'$newcolour2'/g' {}  \;
find src -name "*.*" -type f -exec sed -i 's/'$oldcolour3'/'$newcolour3'/g' {}  \;
find src -name "*.*" -type f -exec sed -i 's/'$oldcolour4'/'$newcolour4'/g' {}  \;
find src -name "*.*" -type f -exec sed -i 's/'$oldcolour5'/'$newcolour5'/g' {}  \;
find src -name "*.*" -type f -exec sed -i 's/'$oldcolour6'/'$newcolour6'/g' {}  \;

##################################################################################################################
echo "###########################"
echo "Script ended"
echo "###########################"
##################################################################################################################