# LAMP Docker

FROM robloach/dev
MAINTAINER Rob Loach <robloach@gmail.com>


# Apache

RUN apt-get install -y apache2
ADD configs/apache2/apache2-service.sh /apache2-service.sh
RUN chmod +x /*.sh
ADD configs/apache2/apache_default /etc/apache2/sites-available/000-default.conf
ADD configs/apache2/supervisor.conf /etc/supervisor/conf.d/apache2.conf
# Enable mod_rewrite
RUN a2enmod rewrite


# PHP

RUN apt-get install -y libapache2-mod-php5 php5 php5-json php5-cli php5-curl curl php5-mcrypt php5-xdebug mcrypt libmcrypt-dev
ADD configs/php/php.ini /etc/php5/apache2/conf.d/30-docker.ini
# PHP Modules
RUN php5enmod mcrypt
# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/bin --version=1.0.0-alpha8


# MySQL

RUN apt-get install -y mysql-server mysql-client php5-mysql
ADD configs/mysql/mysql-setup.sh /mysql-setup.sh
RUN chmod +x /*.sh
ADD configs/mysql/my.cnf /etc/mysql/conf.d/my.cnf
ADD configs/mysql/supervisor.conf /etc/supervisor/conf.d/mysql.conf
RUN /mysql-setup.sh


# PHPMyAdmin

RUN (echo 'phpmyadmin phpmyadmin/dbconfig-install boolean true' | debconf-set-selections)
RUN (echo 'phpmyadmin phpmyadmin/app-password password root' | debconf-set-selections)
RUN (echo 'phpmyadmin phpmyadmin/app-password-confirm password root' | debconf-set-selections)
RUN (echo 'phpmyadmin phpmyadmin/mysql/admin-pass password root' | debconf-set-selections)
RUN (echo 'phpmyadmin phpmyadmin/mysql/app-pass password root' | debconf-set-selections)
RUN (echo 'phpmyadmin phpmyadmin/reconfigure-webserver multiselect apache2' | debconf-set-selections)
RUN apt-get install phpmyadmin -y
ADD configs/phpmyadmin/config.inc.php /etc/phpmyadmin/conf.d/config.inc.php
RUN chmod 755 /etc/phpmyadmin/conf.d/config.inc.php
ADD configs/phpmyadmin/phpmyadmin-setup.sh /phpmyadmin-setup.sh
RUN chmod +x /phpmyadmin-setup.sh
RUN /phpmyadmin-setup.sh


# Start

VOLUME ["/var/www/html"]
EXPOSE 22 80 3306
