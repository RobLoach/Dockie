# Drupal Dockerfile

FROM robloach/dockerfiles:lamp
MAINTAINER Rob Loach <robloach@gmail.com>


# Drush

RUN composer global require drush/drush:~7.0.0@alpha
RUN ln -sf ~/.composer/vendor/bin/drush /usr/bin/drush


# Drupal

RUN apt-get install -y sendmail
ADD configs/drupal/supervisor.conf /etc/supervisor/conf.d/drupal.conf
ADD configs/drupal/drupal-setup.sh /drupal-setup.sh
RUN chmod +x /drupal-setup.sh


# Start

WORKDIR "/var/www/html"
VOLUME "/var/www/html"
EXPOSE 22 80 3306
CMD ["supervisord", "-n"]
