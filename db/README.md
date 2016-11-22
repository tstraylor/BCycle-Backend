# BCycle Database
The BCycle database is pretty simple. It consists of one table.
```
create table station (
    id int(11) NOT NULL AUTO_INCREMENT,
    Name varchar(100) NOT NULL,
    Street varchar(256),
    City varchar(256),
    State varchar(2),
    Zip varchar(10),
    Docks int(11),
    Latitude double,
    Longitude double,
    Created timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    Updated timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)

    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
```
The file `bcycledb.sql` contains everything needed to create the table and populate it.

## Docker Container
The BCycle database Docker can be run without the API Docker. Here are the commands needed to
build and start the database Docker.

1. Build the Docker image.
   ```bash
   $ docker build -t bcycledb .
   ```
2.  Run the bcycledb Docker image.
   ```bash
   $ docker run --name bcycledb -p 3306:3306 bcycledb
   ```
You should be able to connect to the BCycle database at `localhost:3306` using the credentials `root:password`.

To cleanup the Docker image do the following:

1. Stop the `bcycledb` Docker image.
    ```bash
    $ docker stop bcycledb
    ```
2. Remove the `bcycledb` Docker container.
    ```bash
    $ docker rm bcycledb
    ```
3. Remove the `bcycledb` Docker images.
    ```bash
    $ docker rmi -f $(docker images -q)
    ```
