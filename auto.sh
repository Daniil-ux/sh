#!/bin/sh

echo "///////////////////////////////////////////SYSTEM REPOSITORES UPDATE///////////////////////////////////////////";

sudo apt -y update;
sudo apt -y upgrade;

echo "///////////////////////////////////////////APACHE2 INSTALL///////////////////////////////////////////";

sudo apt -y install apache2;
sudo systemctl enable apache2;
sudo systemctl status apache2;

echo "///////////////////////////////////////////PHP 8.0 CLI///////////////////////////////////////////";

sudo apt-get -y install software-properties-common;
sudo add-apt-repository -y ppa:ondrej/php;
sudo apt-get -y update;
sudo apt-get -y install php;

echo "///////////////////////////////////////////MYSQL INSTALL///////////////////////////////////////////";

sudo apt -y install mysql-server;
sudo systemctl status mysql;


echo "///////////////////////////////////////////PHPMYADMIN INSTALL//////////////////////////////////////////";

sudo apt -y install php-mbstring;
sudo apt -y install phpmyadmin;
sudo ln -s /usr/share/phpmyadmin/ /var/www/html/phpmyadmin;

echo "///////////////////////////////////////////MYSQL SETTINGS//////////////////////////////////////////";

sudo mysql_secure_installation;

