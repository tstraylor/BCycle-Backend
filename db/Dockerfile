FROM mysql/mysql-server:5.6
# https://hub.docker.com/r/mysql/mysql-server/
# add our sql script to the directory so the database
# can be created
ADD bcycledb.sql /docker-entrypoint-initdb.d/

# set up some environment variables
ENV MYSQL_ROOT_PASSWORD password
ENV MYSQL_DATABASE bcycle
ENV MYSQL_ROOT_HOST "%"

# let the container know which port to listen on
EXPOSE 3306
