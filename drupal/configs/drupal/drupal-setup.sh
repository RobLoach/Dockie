#!/bin/bash

# Start MySQL
/usr/bin/mysqld_safe > /dev/null 2>&1 &

# Wait until the MySQL server is available.
RET=1
while [[ RET -ne 0 ]]; do
    echo " ---> Waiting for MySQL"
    sleep 2
    mysql -uroot -e "status" > /dev/null 2>&1
    RET=$?
done

# Create the Drupal database
mysql -uroot -proot -e "CREATE DATABASE drupal"

# Install Drupal
# @todo Fix Drush Drupal 8 installation on here, or use Drush make/Composer.
#drush site-install standard --db-url=mysql://root:root@localhost/drupal

# Shutdown the server.
mysqladmin -u root -proot shutdown
