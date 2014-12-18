# Dockie: Drupal Site Install

FROM dockie/drupal
MAINTAINER Rob Loach <robloach@gmail.com>


# Environment Variables

ENV PROFILE standard


# Drupal Site Install

ADD configs/drupal-site-install/drupal-site-install-setup.sh /drupal-site-install-setup.sh
ADD configs/drupal-site-install/supervisor.conf /etc/supervisor/conf.d/drupal-site-install.conf
RUN chmod +x /drupal-site-install-setup.sh


# Start

EXPOSE 22 80 3306
CMD ["supervisord", "-n"]
