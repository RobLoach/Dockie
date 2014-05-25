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
RUN apt-get install -y libapache2-mod-php5 php5 php5-json php5-cli php5-curl curl php5-mcrypt php5-xdebug mcrypt libmcrypt-dev php5-mysql
ADD configs/php/php.ini /etc/php5/apache2/conf.d/30-docker.ini
# PHP Modules
RUN php5enmod mcrypt
# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/bin --version=1.0.0-alpha8

#
# Start
#
VOLUME ["/var/www/html"]
EXPOSE 22 80
CMD ["supervisord", "-n"]
