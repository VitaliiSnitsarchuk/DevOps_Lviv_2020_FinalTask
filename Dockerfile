FROM ubuntu:18.04
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install apache2
RUN apt-get -y install curl

COPY ./html/ /var/www/vse.pro.palo/html/
COPY vse.pro.palo.conf /etc/apache2/sites-available/vse.pro.palo.conf

RUN a2ensite vse.pro.palo
#RUN chown -R www-data:www-data /var/www/vse.pro.palo/logs

CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]
EXPOSE 80
EXPOSE 22

