systemctl stop mysqld
apt purge mysql-server mysql-common mysql-server-core-* mysql-client-core-*
rm -Rf /var/lib/mysql/
rm -Rf /etc/mysql/
rm -rf /var/log/mysql
deluser --remove-home mysql
delgroup mysql
