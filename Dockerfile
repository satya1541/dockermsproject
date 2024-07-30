
Outside Dockerfile (outside of cloned Project file)

FROM ubuntu
RUN apt-get update -y
RUN apt-get install apache2 -y
COPY index.html /var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
============================================================================================
Inside Dockerfile (inside of cloned Project file)

Give permission inside the Project File

chmod -R 777 .

FROM ubuntu
RUN apt update
RUN apt install apache2 -y
COPY . /var/www/html/
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
