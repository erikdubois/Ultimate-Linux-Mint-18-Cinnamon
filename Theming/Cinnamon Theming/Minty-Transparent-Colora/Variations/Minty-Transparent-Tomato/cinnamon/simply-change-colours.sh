#!/bin/bash 
############################################################################
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be

# gpick is the tool I use to find a suitable color
# or go online 

# Change the colours to your liking
# Use brackets or sublime-text for easy editing
# or use inkscape to figure out what the hex colour codes are.

##################################################################################################
# Old colours
##################################################################################################
# old colours - keep off - red colours - no more gradient
oldcolour1="226, 60, 44"
oldcolour2=E23C2C





##################################################################################################
# New colours
##################################################################################################
# change colouring here - this is orange - California

# RGB colouring - keep spaces (rgba in theme)
newcolour1="255, 154, 78"


# Hexadecimal colouring - no hashtag
newcolour2=FF9A4E


##################################################################################################
##################################################################################################



find cinnamon.css -exec sed -i "s/$oldcolour1/$newcolour1/g" {} \; 
find cinnamon.css -exec sed -i "s/$oldcolour2/$newcolour2/g" {} \; 


echo "Colouring is done."
