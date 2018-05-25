FROM httpd:alpine
COPY ./public/ /usr/local/apache2/htdocs/

COPY ./etc/server.crt /usr/local/apache2/conf/server.crt
COPY ./etc/server.key /usr/local/apache2/conf/server.key
COPY ./etc/secure.conf /usr/local/apache2/conf/extra/secure.conf

RUN echo "Include conf/extra/secure.conf" >> /usr/local/apache2/conf/httpd.conf
