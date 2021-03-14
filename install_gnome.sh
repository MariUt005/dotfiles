#!/bin/bash

sudo pacman -S gnome gnome-extra
systemctl enable gdm.service --force
sudo pacman -S manjaro-gnome-assets manjaro-gdm-theme manjaro-settings-manager
sudo useradd -mG lp,network,power,sys,wheel <username>
sudo passwd <username>
