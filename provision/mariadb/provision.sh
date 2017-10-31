#!/usr/bin/env bash

# Import Key and Add Repository
sudo apt-get install -y software-properties-common
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xF1656F24C74CD1D8
sudo add-apt-repository "deb [arch=amd64,i386,ppc64el] http://ftp.hosteurope.de/mirror/mariadb.org/repo/10.2/ubuntu xenial main"

# Set Default Password for MariaDB root User
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password password ${PASSWORD}"
sudo debconf-set-selections <<< "mysql-server mysql-server/root_password_again password ${PASSWORD}"

# Install mariadb-server
sudo apt-get update
sudo apt-get -y install mariadb-server

# Bind mysqld to 0.0.0.0, accepting connectins from outside the vagrant box
sudo sed -i.bak 's/^bind-address.*/bind-address=0.0.0.0/g' /etc/mysql/my.cnf
sudo service mysql restart

# Grant all privileges to MariaDB root user
mysql --user=root --password=${PASSWORD} -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '${PASSWORD}' WITH GRANT OPTION; FLUSH PRIVILEGES;" 

# Enable mysqld (Start on Boot)
sudo systemctl enable /lib/systemd/system/mariadb.service
