FROM debian


RUN apt-get update
RUN apt-get -y install nginx
RUN echo "Dockerfile Test on Nginx - Ricardo Ferreira" > /var/www/html/index.html

EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
