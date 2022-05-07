#!/bin/bash

function updateDebian(){

    echo "Do you have flatpak installed? (y/n)"

    read selection

    if [ "$selection" = 'y' ] || [ "$select" = 'Yes' ]; then

    echo "Updating packages along with flatpak..."

    sudo apt-get update; sudo apt-get upgrade -y; flatpak update -y

    else

        echo "Updating packages..."

        sudo apt-get update; sudo apt-get upgrade -y
        fi
}

function updateUbuntu(){

    echo "Do you have flatpak installed? (y/n)"

    read selection

    if [ "$selection" = 'y' ] || [ "$select" = 'Yes' ]; then

    echo "Updating packages along with flatpak..."

    sudo apt update; sudo apt upgrade -y; flatpak update -y

    else

        echo "Updating packages..."

        sudo apt update; sudo apt upgrade -y
        fi
}

function updateCentOS(){
    echo "Do you have flatpak installed? (y/n)"

    read selection

    if [ "$selection" = 'y' ] || [ "$select" = 'Yes' ]; then

    echo "Updating packages along with flatpak..."

    sudo dnf update -y; flatpak update -y

    else

        echo "Updating packages..."

        sudo dnf update -y
        fi
}

function updateArch(){
    echo "Do you have flatpak installed? (y/n)"

    read selection

    if [ "$selection" = 'y' ] || [ "$select" = 'Yes' ]; then

    echo "Updating packages along with flatpak..."

    sudo pacman -Syu; flatpak update -y

    else

        echo "Updating packages..."

        sudo pacman-Syu
        fi
}

function update(){
    echo "You've logged in as a root"
    sleep 3
    echo "Continuing..."
    sleep 3
    update2
}

function update2(){
    echo "Please select one of the following "
    echo "1 if you have Debian or Debian based distro    2 if you have Ubuntu or Ubuntu based distro"
    echo "3 if you have Cent OS or Cent OS based distro  4 if you have Arch or Arch based distro"

    read selection

    case $selection in 
    1)
        updateDebian
        ;;
    2)
        updateUbuntu
        ;;

    3)
        updateCentOS
        ;;
    4)
        updateArch
        ;;
    *)
        echo "Please select a valid option"
    esac
}

if [ $(whoami) != 'root' ]; then
    echo "You are not logged in as root, please log in as root or give this script root priviages while executing..."
else
    update
fi
