FROM httpd:2.4

MAINTAINER Carlos Rueda <carueda@gmail.com>

COPY ./httpd.conf /usr/local/apache2/conf/httpd.conf

