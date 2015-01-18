#!/bin/bash

# Switch to the Drupal directory
cd /var/www/html

# Set up the files directory
rm -rf sites/default/files
mkdir -p sites/default/files
chmod 777 -R sites/default/files

# Set up the Settings files
cp -f sites/default/default.settings.php sites/default/settings.php
cp -f example.gitignore .gitignore
chmod 777 sites/default/settings.php
[[ -f sites/default/default.services.yml ]] && cp -f sites/default/default.services.yml sites/default/services.yml
[[ -f sites/default/services.yml ]] && chmod 777 sites/default/services.yml

# Install the site with Drush
/root/.composer/vendor/bin/drush site-install ${PROFILE} --yes \
  --db-url=mysql://root:root@localhost/drupal \
  --db-su=root --db-su-pw=root \
  --account-name="admin" \
  --account-pass="admin"
