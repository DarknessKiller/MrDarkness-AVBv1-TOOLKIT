#!/bin/sh
# MrDarkness Termux AVBv1 Environment Setup
# Install dependencies 
echo "Updating Termux Repositories..."
pkg upgrade
echo "Installing Dependencies..."
if ! command -v proot > /dev/null
then
	pkg install proot
else
   echo "Existing proot installed... skipping..."
fi
if ! command -v wget > /dev/null
then
    pkg install wget
else
   echo "Existing wget installed... skipping..."
fi
if ! command -v java > /dev/null
then 
    wget https://raw.githubusercontent.com/MasterDevX/java/master/installjava && bash installjava
else
   echo "Existing java installed... skipping..."
fi
echo "AVBv1 Setup Environment Completed"
echo "You can now use sign script..."
echo "Entering proot environment..."
echo "Please manually enter 'sh sign.sh'..."
proot -0