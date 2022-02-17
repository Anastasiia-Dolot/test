#!/bin/bash

sudo su
apt-get install apache2 -y
systemctl start apache2
systemctl enable apache2
add-apt-repository -y ppa:ondrej/php
apt-get update
apt-get install php7.2 php7.2-cli php7.2-common -y
apt-get install php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-intl php7.2-mysql php7.2-xml php7.2-zip -y
a2enmod php7.2
systemctl restart apache2

git clone https://github.com/Anastasiia-Dolot/test.git
cd /var/www/html && rm index.html && cp -r /home/azureuser/test/* .
touch favicon.ico
ls -1 | xargs -I{} chmod 777 {} && cd includes && ls -1 | xargs -I{} chmod 777 {}

apt install mysql-client-core-8.0

wget --no-check-certificate https://dl.cacerts.digicert.com/DigiCertGlobalRootCA.crt.pem