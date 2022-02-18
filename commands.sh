#!/bin/bash

sudo apt-get install apache2 -y
sudo systemctl start apache2
sudo systemctl enable apache2
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update
sudo apt-get install php7.2 php7.2-cli php7.2-common -y
sudo apt-get install php7.2-curl php7.2-gd php7.2-json php7.2-mbstring php7.2-intl php7.2-mysql php7.2-xml php7.2-zip -y
sudo systemctl restart apache2

git clone https://github.com/Anastasiia-Dolot/test.git
sleep 5
cd /var/www/html && sudo rm index.html && sudo cp -r /home/azureuser/test/* .
sudo touch favicon.ico
ls -1 | xargs -I{} sudo chmod 777 {} && cd includes && ls -1 | xargs -I{} sudo chmod 777 {}

sudo apt install mysql-client-core-8.0

wget --no-check-certificate https://dl.cacerts.digicert.com/DigiCertGlobalRootCA.crt.pem
