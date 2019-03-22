#! /bin/bash
cp /opt/docker/httpd.conf /etc/httpd/conf/httpd.conf
mkdir /var/www/www.auto1.cat
mkdir /var/www/www.auto2.cat
mkdir /var/www/www.web1.org
mkdir /var/www/www.web2.org
cp /opt/docker/index.auto1.html /var/www/www.auto1.cat/index.html
cp /opt/docker/index.auto2.html /var/www/www.auto2.cat/index.html
cp /opt/docker/index.web1.html /var/www/www.web1.org/index.html
cp /opt/docker/index.web2.html /var/www/www.web2.org/index.html
cp /opt/docker/index.plain.html /var/www/html/index.html
sed -i -e s,'https.edt.org','https.edt.org www.auto1.cat www.auto2.cat www.web1.org www.web2.org', /etc/hosts

