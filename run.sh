#!/bin/bash

echo "Iniciando container ...."
echo "INICINAD!!" >> /var/www/html/ini.html

/usr/sbin/httpd -DFOREGROUND
