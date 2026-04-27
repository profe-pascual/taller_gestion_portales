#! /bin/bash

apt update

apt install php php-cli php-mysql php-json php-opcache php-mbstring php-intl php-xml php-gd php-zip php-curl php-xmlrpc

sed -i "s/memory_limit = .*/memory_limit = 512M/" /etc/php/7.4/apache2/php.ini
sed -i "s/upload_max_filesize = .*/upload_max_filesize = 256M/" /etc/php/7.4/apache2/php.ini
sed -i "s/post_max_size = .*/post_max_size = 256M/" /etc/php/7.4/apache2/php.ini
sed -i "s/output_buffering = .*/output_buffering = Off/" /etc/php/7.4/apache2/php.ini
sed -i "s/max_execution_time = .*/max_execution_time = 300/" /etc/php/7.4/apache2/php.ini
sed -i "s/;date.timezone.*/date.timezone = UTC/" /etc/php/7.4/apache2/php.ini

