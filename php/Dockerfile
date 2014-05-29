#
# Forge: PHP
#
FROM robloach/forge
MAINTAINER Rob Loach <robloach@gmail.com>

#
# PHP
#
RUN apt-get install -y php5-cgi php5-json php5-cli php5-curl curl php5-mcrypt php5-xdebug mcrypt libmcrypt-dev php5-mysql php5-gd

# Configuration
ADD configs/php/php-cli.ini /etc/php5/cli/conf.d/robloach-forge-php.ini

# Modules
RUN php5enmod mcrypt

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/bin --version=1.0.0-alpha8

#
# Start
#
VOLUME ["/app"]
EXPOSE 22 80
CMD ["supervisord", "-n"]
