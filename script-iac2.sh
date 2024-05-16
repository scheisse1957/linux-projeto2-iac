#!/bin/bash

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando aplicativos necessários..." 
apt-get install apache2 -y
apt-get install unzip -y
cd /tmp

echo "Baixando arquivos..."
wget  https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html
