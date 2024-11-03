# BCycle Backend

This project is used to create the BCycle Backend environment that is used by [BCycle-App](https://github.com/tstraylor/BCycle-App).

## Setup

To run project, you will need to have the following installed:

1. [Docker Desktop](https://www.docker.com/products/docker-desktop/)
2. GIT
3. Nodejs & NPM
4. [RapidAPI](https://paw.cloud), [Postman](https://www.postman.com), curl, or wget.

## Starting the BCycle Backend Environment

To start the BCycle Backend environment, run: 

```bash
$ cd ${path_to}/BCycle-Backend
$ docker compose up -d
```

To ensure the environment has been set up and is running properly, invoke `docker ps` to check for running containers.

```bash
$ docker ps
CONTAINER ID   IMAGE                      COMMAND                  CREATED          STATUS                    PORTS                    NAMES
f6356983b3b1   bcycle-backend-webserver   "nginx -g 'daemon of…"   11 minutes ago   Up 10 minutes             0.0.0.0:80->80/tcp       webserver
8796a9f46400   bcycle-backend-api         "npm start"              11 minutes ago   Up 10 minutes             3000/tcp                 apiserver
1146e098d17e   bcycle-backend-database    "docker-entrypoint.s…"   11 minutes ago   Up 11 minutes (healthy)   0.0.0.0:3306->3306/tcp   database

```

For more information about Docker and Docker commands, consult the [Docker Documentation](https://docs.docker.com).

Once the BCycle Backend is up and running you should be able to connect to it.  The database should be reachable 
via `jdbc:mysql://localhost:3306/bcycle` using the credentials `bcycle:password`. 
To ensure the BCycle API server is up, try `wget http://127.0.0.1:80/api/v1/stations`.  This should return a list of BCycle Stations.

### BCycle Database
The database is simple and contains the one table, station. The table description:

```sql

CREATE TABLE station (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    street VARCHAR(256),
    city VARCHAR(256),
    state VARCHAR(2),
    zip VARCHAR(10),
    docks INT,
    latitude DECIMAL(12,8),
    longitude DECIMAL(12,8),
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;

```

The station table contains the station information the Denver and Houston area.

### BCycle API

BCycle API documentation can be found at ``http://localhost/api/v1/openapi``.

## Stopping the BCycle Backend Environment

To stop and clean up the BCycle Backend environment, run:

```bash
$ docker compose down --rmi all
$ docker volume rm $(docker volume ls -q)
```

This will shut everything down and remove all docker images and volumes created.

## License

BCycle-Backend is available under the MIT license. See the LICENSE file for more info.

