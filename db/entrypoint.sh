#!/bin/bash

set -e

DB_NAME=${DB_NAME:-"bcycle"}
DB_USER=${DB_USER:-"root"}
DB_PASS=${DB_PASS:-"password"}
DB_REMOTE_ROOT_HOST=${DB_REMOTE_ROOT_HOST:-"192.168.99.1"}

MYSQL_CHARSET=${MYSQL_CHARSET:-"utf8"}
MYSQL_COLLATION=${MYSQL_COLLATION:-"utf8_unicode_ci"}

# disable error log
sed 's/^log_error/# log_error/' -i /etc/mysql/my.cnf
# don't try to resolve names
cat > /etc/mysql/conf.d/mysql-skip-name-resolv.cnf <<EOF
[mysqld]
skip_name_resolve
EOF

# initialize MySQL data directory
echo "Installing database..."
mysql_install_db > /dev/null 2>&1
# start mysql server
echo "Starting MySQL server..."
/usr/bin/mysqld_safe --skip-grant-tables > /dev/null 2>&1 & 
# wait for mysql server to start (max 30 seconds)
timeout=30
echo -n "Waiting for database server to accept connections"
while ! /usr/bin/mysqladmin -u root status >/dev/null 2>&1
do
    timeout=$(($timeout - 1))
    if [ $timeout -eq 0 ]; then
        echo -e "\nCould not connect to database server. Aborting..."
        exit 1
    fi
    echo -n "."
    sleep 1
done
echo "Updating root's password"
mysql -uroot -e "UPDATE mysql.user SET Password=PASSWORD('password') WHERE User='root';"
echo "Shutting down the MySQL server..."
/usr/bin/mysqladmin -uroot shutdown

# create the bcycle database
echo "Starting MySQL server..."
/usr/bin/mysqld_safe >/dev/null 2>&1 & 
# wait for mysql server to start (max 30 seconds)
timeout=30
echo -n "Waiting for database server to accept connections"
while ! /usr/bin/mysqladmin -uroot -ppassword status >/dev/null 2>&1
do
    timeout=$(($timeout - 1))
    if [ $timeout -eq 0 ]; then
        echo "Could not connect to mysql server. Aborting..."
        exit 1
    fi
    echo -n "."
    sleep 1
done 

# create the database and grant root remote access
echo "Creating database \"${DB_NAME}\"..."
mysql -uroot -ppassword -e "CREATE DATABASE IF NOT EXISTS \`${DB_NAME}\` DEFAULT CHARACTER SET \`$MYSQL_CHARSET\` COLLATE \`$MYSQL_COLLATION\`;"
echo "Granting access to database \"${DB_NAME}\" for user \"${DB_USER}\"..."
mysql -uroot -ppassword  -e "GRANT ALL PRIVILEGES ON \`${DB_NAME}\`.* TO '${DB_USER}' IDENTIFIED BY '${DB_PASS}';"
mysql -uroot -ppassword -Dbcycle < /app/data/bcycledb.sql
echo "Shutting down the MySQL server..."
/usr/bin/mysqladmin -uroot -ppassword  shutdown

# listen on all interfaces 
cat > /etc/mysql/conf.d/mysql-listen.cnf <<EOF
[mysqld]
bind = 0.0.0.0
EOF

# start mysqld 
exec "$@"
