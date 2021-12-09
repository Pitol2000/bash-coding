#!/bin/bash

echo "Hello, this is my setup if you want to install a distro."
echo "This contains very basic apps, that you probably want on your pc."

echo "If your distro is debian-based, type 0"
echo "If your distro is arch-based, type 1"

read  input

if [ $input == 0 ]
then
    sudo apt update && sudo apt upgrade -y
    sudo apt-get install neofetch ncdu ranger bpytop cmus libreoffice chromium trash-cli timeshift vim
    sudo apt-get update
elif [ $input == 1 ]
then
    sudo pacman -Syyu
    sudo pacman -S neofetch ncdu ranger bpytop cmus libreoffice chromium trash-cli base-devel lsd timeshift vim
    sudo pacman -Syu
fi
