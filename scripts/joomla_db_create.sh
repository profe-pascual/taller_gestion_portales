#!/bin/bash

MYSQL_ROOT="root"
MYSQL_ROOT_PW="Una-buena-clave"
JOOMLA_DB="joomladb"
JOOMLA_DB_USER="joomla"
JOOMLA_DB_PW="La-clave-de-joomla"

mysql -u $MYSQL_ROOT --password="$MYSQL_ROOT_PW" << fin
CREATE DATABASE $JOOMLA_DB default character set utf8 collate utf8_general_ci;
CREATE USER '$JOOMLA_DB_USER'@'localhost' IDENTIFIED BY '$JOOMLA_DB_PW';
GRANT ALL ON $JOOMLA_DB.* TO '$JOOMLA_DB_USER'@'localhost';
fin
