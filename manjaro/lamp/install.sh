#!/bin/bash

#install
sudo pacman -S apache mysql php php-apache phpmyadmin

#config
#apache
sudo rm /etc/httpd/conf/httpd.conf
sudo mv ~/lamp/httpd.conf /etc/httpd/conf/
sudo systemctl start httpd

#MariaDB
sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
sudo systemctl start mysqld
sudo mysql_secure_installation
#Enter/y/y/password/password/y/y/y/y


#php7
sudo rm /etc/php/php.ini
sudo mv ~/lamp/php.ini /etc/php/

#phpMyAdmin
sudo mv ~/lamp/phpmyadmin.conf /etc/httpd/conf/extra/

sudo chown $USER:$USER /srv/http/ -R

sudo systemctl restart httpd
sudo systemctl restart mysqld
