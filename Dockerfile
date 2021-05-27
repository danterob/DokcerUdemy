FROM nginx

RUN useradd roberto

COPY fruit /usr/share/nginx/html

ENV archivo docker

WORKDIR /usr/share/gninx/html

RUN echo "$archivo" > /usr/share/nginx/html/env.html

EXPOSE 90

LABEL version="1.2"

USER roberto

RUN echo "Yo soy $(whoami)" > /tmp/yo.html

USER root

RUN cp /tmp/yo.html /usr/share/nginx/html/docker.html

VOLUME /var/log/nginx

CMD nginx -g "daemon off;"
