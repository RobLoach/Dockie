# Forge: Drupal 7

FROM robloach/forge-drupal
MAINTAINER Rob Loach <robloach@gmail.com>


# Drupal 7 Install Profile

ADD configs/drupal7/drupal7-setup.sh /drupal7-setup.sh
RUN chmod +x /drupal7-setup.sh
ADD configs/drupal7/supervisor.conf /etc/supervisor/conf.d/drupal7.conf


# Start

VOLUME ["/profile"]
EXPOSE 22 80 3306
CMD ["supervisord", "-n"]
