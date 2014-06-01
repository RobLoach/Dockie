#
# Forge: Apache PHP
#
FROM robloach/forge
MAINTAINER Rob Loach <robloach@gmail.com>

#
# Apache
#
RUN apt-get install -y apache2
ADD configs/apache2/apache2-service.sh /apache2-service.sh
RUN chmod +x /*.sh
ADD configs/apache2/apache_default /etc/apache2/sites-available/000-default.conf
ADD configs/apache2/supervisor.conf /etc/supervisor/conf.d/apache2.conf
# Enable mod_rewrite
RUN a2enmod rewrite

#
# PHP
#
RUN apt-get install -y libapache2-mod-php5
ADD configs/php/php.ini /etc/php5/apache2/conf.d/30-docker.ini

#
# Start
#
VOLUME ["/var/www/html"]
EXPOSE 22 80
CMD ["supervisord", "-n"]
