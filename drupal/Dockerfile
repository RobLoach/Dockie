# Dockie: Drupal

FROM dockie/lamp
MAINTAINER Rob Loach <robloach@gmail.com>


# Drupal

ADD configs/drupal/supervisor.conf /etc/supervisor/conf.d/drupal.conf
ADD configs/drupal/drupal-setup.sh /drupal-setup.sh
RUN apt-get install -y sendmail && \
  chmod +x /drupal-setup.sh


# Start

WORKDIR /var/www/html
VOLUME /var/www/html
EXPOSE 22 80 3306
CMD ["supervisord", "-n"]
