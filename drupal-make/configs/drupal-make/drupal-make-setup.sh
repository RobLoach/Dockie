#!/bin/bash

# Clear out the html folder
cd /var/www/html
rm index.html

# Run Drush Make to build the site
/root/.composer/vendor/bin/drush make /profile/*.make .

# File out what the profile name is
profile=$(basename /profile/*.make .make)

# Symlink the profile into Drupal's install profile directory
ln -sf /profile "/var/www/html/profiles/$profile"

# Install the site with Drush
cd /var/www/html
/root/.composer/vendor/bin/drush site-install $profile --yes \
  --db-url=mysql://root:root@localhost:3306/drupal \
  --account-name="admin" \
  --account-pass="admin"

# Ensure the files directory can be written to
chmod 777 -R sites/default/files
