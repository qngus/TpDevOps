#!/bin/bash

apt-get install git -y
apt-get install apache2 -y
apt-get install php5 -y

mkdir repo
cd repo
git clone https://github.com/qngus/TpDevOps.git
cp -R ./TpDevOps /var/www/

cd /var/www/TpDevOps/
mkdir resources
cd resources
wget -O doc1 https://www.dropbox.com/s/3634xhl8x4pai42/Webstat_Export_20140918%20%283%29.csv?dl=1 &&
wget -O doc2 https://www.dropbox.com/s/dw5kiozfzt5mj2f/Webstat_Export_20140918%20%282%29.csv?dl=1 &&
wget -O doc3 https://www.dropbox.com/s/dzk27w92nxpq381/Webstat_Export_20140918%20%281%29.csv?dl=1 &&
wget https://github.com/aws/aws-sdk-php/releases/download/2.6.16/aws.phar

sudo mv /var/www/TpDevOps/index.html /var/www/html
cd /var/www/html
wget http://jpgraph.net/download/download.php?p=5 &&
tar -xvzf jpgraph-3.5.0b1.tar.gz jpgraph
mkdir aws
phar extract -f /var/www/TpDevOps/resources/aws.phar ./aws