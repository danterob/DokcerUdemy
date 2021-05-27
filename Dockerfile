FROM centos:7

RUN yum -y install \
     httpd \
     php php-cli \
     php-common \
     mod_ssl \
     openssl
     

RUN echo "<?php phpinfo();  phpinfo(INFO_MODULES); ?>" > /var/www/html/about.php

COPY ssl.conf /etc/hhtpd/conf.d/default.conf

COPY docker.key /docker.key

COPY docker.crt /docker.crt

COPY startbootstrap-sb-admin-2-gh-pages /var/www/html

EXPOSE 443

CMD apachectl -DFOREGROUND
