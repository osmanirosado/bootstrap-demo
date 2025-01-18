# https://hub.docker.com/_/httpd

FROM httpd:2.4

COPY ./code/ /usr/local/apache2/htdocs/ 
