#!/bin/bash


if [ ! -f /dump.sql.gz ] ; then
    echo "No dump"
    exit
fi

echo "=> Starting MySQL Server"
/usr/bin/mysqld_safe > /dev/null 2>&1 &
PID=$!

RET=1
while [[ RET -ne 0 ]]; do
    echo "=> Waiting for confirmation of MySQL service startup"
    sleep 5
    mysql -uroot  -e "status" > /dev/null 2>&1
RET=$?
done

echo "   Started with PID ${PID}"

echo "=> Creating database"
echo "CREATE DATABASE drupal" | mysql -uroot

echo "=> Importing SQL file"
zcat /dump.sql.gz | mysql -uroot  drupal

echo "=> Stopping MySQL Server"
mysqladmin -uroot  shutdown

echo "=> Done!"
