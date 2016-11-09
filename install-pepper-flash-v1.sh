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



#source https://gist.github.com/ruario/215c365facfe8d3c5071


available () {
  command -v $1 >/dev/null 2>&1
}

# Make sure we have wget or curl
if available wget; then
  SILENT_DL="wget -qO-"
  LOUD_DL="wget"
elif available curl; then
  SILENT_DL="curl -sL"
  LOUD_DL="curl -O"
else
  echo "Install wget or curl" >&2
  exit 1
fi

# Set Output dir
PPAPI_FLASH_INSTALL_DIR=${PPAPI_FLASH_INSTALL_DIR:-/opt/google/chrome/PepperFlash}

# Set temp dir
TMP=${TMP:-/tmp}

# Set staging dir
STAGINGDIR=$TMP/pepper-flash-staging

# Setup Arch
case $(uname -m) in
  x86_64) ARCH=x86_64 ;;
    i?86) ARCH=i386 ;;
esac

# Work out the VERSION
VERSION=$($SILENT_DL http://www.adobe.com/software/flash/about/ | grep -FA1 'Chromium-based browsers - PPAPI' | grep -Eo '([0-9]+\.){3}[0-9]+' | tail -n1)

# Error out if $VERISON is unset, e.g. because previous command failed
if [ -z "$VERSION" ]; then
  echo "Could not work out the latest version; exiting" >&2
  exit 1
fi

# Don't start repackaging if the same version is already installed
if [ -r "$PPAPI_FLASH_INSTALL_DIR/manifest.json" ] ; then
  CUR_VER=$(grep -Eo '"version" *: *"([0-9]+\.){3}[0-9]+",' "$PPAPI_FLASH_INSTALL_DIR/manifest.json" | cut -d'"' -f 4)
  if [ "$CUR_VER" = "$VERSION" ]; then
    echo "The latest Flash ($VERSION) is already installed"
    exit 0
  fi
fi

# Now we could screw things up so exit on first error
set -e

# If the staging directory is already present from the past, clear it down
# and re-create it.
if [ -d "$STAGINGDIR" ]; then
  rm -fr "$STAGINGDIR"
fi

mkdir -p "$STAGINGDIR$PPAPI_FLASH_INSTALL_DIR"
cd "$STAGINGDIR"

# Now get the tarball
$LOUD_DL "http://fpdownload.adobe.com/pub/flashplayer/pdc/$VERSION/flash_player_ppapi_linux.${ARCH}.tar.gz"

# Extract the contents of the Google Chrome binary package
tar xf flash_player_ppapi_linux.${ARCH}.tar.gz -C "$STAGINGDIR$PPAPI_FLASH_INSTALL_DIR"
chmod -R u+w,go+r-w,a-s .

# Escalate privileges if needed and copy files into place
if [ "$UID" = 0 ]; then
  tar --owner=0 --group=0 -cf- ".$PPAPI_FLASH_INSTALL_DIR" | tar -xf- -C /
elif [ -r /etc/os-release ] && grep -qx 'ID=\(ubuntu\|linuxmint\)' /etc/os-release; then
  echo "Calling sudo ... (if prompted, please enter your password, so Flash can be copied into place)"
  tar --owner=0 --group=0 -cf- ".$PPAPI_FLASH_INSTALL_DIR" | sudo tar -xf- -C /
else
  echo "Please enter your root password so Pepper Flash can be copied into place"
  su -c "sh -c \"tar --owner=0 --group=0 -cf- .$PPAPI_FLASH_INSTALL_DIR | tar -xf- -C /\""
fi

# Tell the user we are done
printf "\nFlash installed into $PPAPI_FLASH_INSTALL_DIR\n"


echo "################################################################"
echo "###################    T H E   E N D      ######################"
echo "################################################################"
