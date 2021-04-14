#!/bin/bash

#Source: https://wiki.manjaro.org/index.php/Install_Desktop_Environments#Gnome_3

#Install a basic gnome environment and extra themes, games, features
sudo pacman -S gnome gnome-extra

#Optional: Install and use GDM (the recommended display manager for gnome
#GDM is installed as a dependency of gnome, to enable it:
systemctl enable gdm.service --force

#Optional: Install the Manjaro configuration and theming for gnome
sudo pacman -S manjaro-gnome-assets manjaro-gdm-theme manjaro-settings-manager

#Create a new user for the new desctop environment
sudo useradd -mG lp,network,power,sys,wheel <username>
sudo passwd <username>
