FROM alpine:3.23 AS alpine_base

RUN apk update --no-cache && apk upgrade --no-cache && apk add --no-cache su-exec bash rsync gosu


FROM alpine_base AS db_server

RUN apk add --no-cache mariadb mariadb-client mariadb-common \
    mariadb-server-utils mysql mysql-client tzdata pwgen && \
    mkdir /docker-entrypoint-initdb.d && \
    mkdir -p /run/mysqld && \
    chmod 777 /run/mysqld && \
    chown -R mysql:mysql /run/mysqld && \
    mkdir -p /var/lib/mysql && \
    chown -R mysql:mysql /var/lib/mysql && \
    sed -Ei '/^\[mysqld\]/a skip-networking\nskip_name_resolve\nuser=mysql\nbind-address=0.0.0.0\nlong_query_time=2\nlog_queries_not_using_indexes=1' /etc/my.cnf && \
    sed -Ei '/bind-address/s/^#*\s*//g' /etc/my.cnf.d/mariadb-server.cnf && \
    sed -Ei 's/^skip-networking/#&/' /etc/my.cnf && \
    sed -Ei 's/^skip-networking/#&/' /etc/my.cnf.d/mariadb-server.cnf && \
    sed -Ei '/^\[mysqld\]/a skip_name_resolve\nsocket=/run/mysqld/mysqld.sock' /etc/my.cnf.d/mariadb-server.cnf

COPY --chmod=755 database/healthcheck.sh /usr/local/bin/healthcheck.sh
COPY --chmod=755 database/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

VOLUME /var/lib/mysql
EXPOSE 3306
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["mysqld"]

FROM alpine_base AS api_server

RUN apk add --no-cache nodejs npm

COPY ./BCycle-api /opt/BCycle-api

RUN cd /opt/BCycle-api && npm install

WORKDIR /opt/BCycle-api
EXPOSE 3000
CMD [ "npm", "start" ]

FROM alpine_base AS web_server

RUN apk add --no-cache nginx

COPY ./web/default.conf /etc/nginx/http.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]






