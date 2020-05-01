#!/bin/bash

#sudo pacman -Syu

#install
sudo pacman -S git unzip nvim ghc libffi

#config git
git config --global user.name "MariUt005"
git config --global user.email "maria.ut.005@yandex.ru"

#config nvim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
curl -fLo ~/.config/nvim/init.vim --create-dirs https://raw.githubusercontent.com/MariUt005/dotfiles/master/init.vim

#install LAMP
git clone https://github.com/MariUt005/lamp.git -b "test"
sudo chmod +x lamp/install.sh
~/lamp/install.sh


