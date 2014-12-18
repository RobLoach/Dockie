# Dockie: Drupal Make

FROM dockie/drupal
MAINTAINER Rob Loach <robloach@gmail.com>


# Drupal Make

ADD configs/drupal-make/drupal-make-setup.sh /drupal-make-setup.sh
ADD configs/drupal-make/supervisor.conf /etc/supervisor/conf.d/drupal-make.conf
RUN chmod +x /drupal-make-setup.sh


# Start

VOLUME /profile
EXPOSE 22 80 3306
CMD ["supervisord", "-n"]
