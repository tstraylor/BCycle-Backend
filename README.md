# Docker BCycle API / BCycle MySQL Database

This project is used to create two Docker container; one to run the BCycle API and the other to run the BCycle DB. 
The [BCycle iOS App](https://github.com/tstraylor/BCycle-App) uses this Docker environment for its data.

## Setup

To run project, you will need to have the following installed:

1. Docker
2. Docker-Compose
3. GIT
4. Nodejs & NPM >= 5.0.0

*Note:* Dependencies 1-2 come bundled as part of the [Docker](https://www.docker.com/).

## Running

Ensure Docker has been setup and is running properly.  Invoke `docker ps` to check the environment. If this command
was not successful, consult the [Docker Documentation](https://success.docker.com/).

To start the BCycle API and DB environments, run: `docker-compose up` in the main directory. This may take some
time as it downloads and builds each of the environments.

Once the Docker containers are up and running you should be able to connect
to them.  The database should be reachable via `jdbc:mysql://localhost:3306/bcycle` using the credentials `root:password`. 
To ensure the BCycle API server is up, try `curl http://127.0.0.1:8080/v1/station`.  This will return a list of BCycle Stations.

### To Do
* Add authentication.

### Creator

[Thomas Traylor](http://github.com/tstraylor)

### License

Docker BCycle API and Database is available under the MIT license. See the LICENSE file for more info.

