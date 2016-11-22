FROM mysql:5.6

# update the environment
RUN apt-get update
# make a data directory
RUN mkdir -p /app/data
ADD bcycledb.sql /app/data
# move the scripts used to configure the
# database and environment into the container
ADD entrypoint.sh /app
RUN chmod +x /app/*.sh

# set up some environment variables
ENV MYSQL_ROOT_PASSWORD password
ENV SERVICE_3306_NAME=bcycle

# let the container know which port to listen on
EXPOSE 3306

# Once the contain is up and running, start the database
ENTRYPOINT ["/app/entrypoint.sh"]
CMD ["/usr/bin/mysqld_safe"]
