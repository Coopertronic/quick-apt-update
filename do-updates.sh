#!/bin/bash

##  This script runs the updates for the APT package manager.
##  Unlike PACMAN on Arch based distros, APT does not enable you to
##  update, upgrade and install in 1 command.

clear
##  Glabal Vars
lineBreak="<~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~>"

##  Functions
source ./functions.sh

check_root

##> Run APT and update the system
if !(apt update); then
    something_wrong
else
    if !(apt upgrade -y); then
        something_wrong
    else
        clear
        echo $lineBreak
        echo "All done!"
        echo "The system is updated."
    fi
fi
