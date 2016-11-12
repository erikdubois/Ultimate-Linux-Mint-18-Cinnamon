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



rm /tmp/vmware-workstation.bundle

wget http://www.vmware.com/go/tryworkstation-linux-64 -O /tmp/vmware-workstation.bundle

chmod +x /tmp/vmware-workstation.bundle

sudo /tmp/vmware-workstation.bundle

rm /tmp/vmware-workstation.bundle

echo "start vmware workstation pro"

##################################################################################################################

echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"


