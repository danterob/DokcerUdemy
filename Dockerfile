FROM centos

LABEL version="1.0"
LABEL description="This is an apache image"
LABEL vendor="Roberto Camargo"

RUN dnf install -y httpd
 
COPY startbootstrap-freelancer-gh-pages /var/www/html

RUN echo "$(whoami)" > /var/www/html/user1.html

RUN useradd roberto

USER roberto

RUN echo "$(whoami)" > /tmp/user2.html

USER root

RUN cp /tmp/user2.html /var/www/html/.

COPY run.sh /run.sh

CMD sh /run.sh
