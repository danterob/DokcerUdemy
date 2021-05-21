FROM centos

RUN dnf install -y httpd

ADD startbootstrap-freelancer-gh-pages /var/www/html

CMD /usr/sbin/httpd -DFOREGROUND
