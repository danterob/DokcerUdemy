FROM debian:stable-slim

RUN \
    apt update && \
    apt install -y \
    apache2 php libapache2-mod-php && \
    rm -r /var/lib/apt/lists/*

COPY index.php /var/www/html/index.php

RUN rm /var/www/html/index.html

COPY default.conf /etc/apache2/sites-available/000-default

EXPOSE 80

CMD /usr/sbin/apache2ctl -DFOREGROUND
