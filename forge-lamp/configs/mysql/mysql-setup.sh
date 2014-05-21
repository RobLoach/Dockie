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

# Change the MySQL root password
mysqladmin -u root password root

# Shutdown the server.
mysqladmin -u root -proot shutdown
