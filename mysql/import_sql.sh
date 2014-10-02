#!/bin/bash

echo "=> Starting MySQL Server"
/usr/bin/mysqld_safe  &
PID=$!
echo "   Started with PID ${PID}"


RET=1
while [[ RET -ne 0 ]]; do
    echo "=> Waiting for confirmation of MySQL service startup"
    tail -n 5 /var/log/mysql/error.log
    sleep 5
    mysql -uroot -e "status"
    RET=$?
done


mysql -uroot -e "CREATE USER 'admin'@'%' IDENTIFIED BY 'password'"
mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION"


echo "=> Done!"



if [ ! -f /tmp/dump.sql.gz ] ; then
    echo "No dump"
    mysqladmin -uroot shutdown
    exit
fi


echo "=> Creating database"
echo "CREATE DATABASE drupal" | mysql -uroot

echo "=> Importing SQL file"
zcat /tmp/dump.sql.gz | mysql -uroot  drupal

echo "=> Stopping MySQL Server"
mysqladmin -uroot  shutdown

echo "=> Done!"
