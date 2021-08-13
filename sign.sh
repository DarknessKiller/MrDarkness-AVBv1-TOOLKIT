#!/bin/sh
# MrDarkness AVBv1 Script
# Lets Run it!
echo "Welcome to MrDarkness AVBv1 Script!"
read -p "Enter your boot image name: " bootname
java -jar BootSignature.jar /boot $bootname avb/verity.pk8 avb/verity.x509.pem `echo $bootname`-signed-`date +%Y%m%d_%H%M`.img
echo "Done..."