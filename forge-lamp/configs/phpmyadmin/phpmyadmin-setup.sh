#!/bin/bash

# Start MySQL
/usr/bin/mysqld_safe > /dev/null 2>&1 &

# Wait until the MySQL server is available.
RET=1
while [[ RET -ne 0 ]]; do
    echo " ---> Waiting for MySQL"
    sleep 2
    mysql -uroot -proot -e "status" > /dev/null 2>&1
    RET=$?
done

# Create the phpmyadmin storage configuration database.
mysql -uroot -proot -e "CREATE DATABASE phpmyadmin; GRANT ALL PRIVILEGES ON phpmyadmin.* TO 'root'@'localhost' IDENTIFIED BY 'root'; FLUSH PRIVILEGES;"

# Import the configuration storage database.
gunzip < /usr/share/doc/phpmyadmin/examples/create_tables.sql.gz | mysql -u root -proot phpmyadmin

# Shutdown the server.
mysqladmin -u root -proot shutdown
