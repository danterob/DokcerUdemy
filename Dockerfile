FROM nginx

ENV dir /usr/share/nginx/html/test.txt

RUN \
    echo "1" >> $dir && \
    echo "4" >> $dir && \
    echo "8" >> $dir
