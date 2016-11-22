FROM node:5.9.0

# Install app dependencies
COPY ./bcycle-api /bcycle-api
# Install the node dependencies
RUN cd /bcycle-api; npm install
WORKDIR /bcycle-api

# create the needed environment variables
ENV DB_HOST=bcycledb
ENV DB_NAME=bcycle
ENV DB_USER=root
ENV DB_PASS=password
ENV DB_PORT=3306
ENV API_PORT=8080

# let the container know which port to listen on
EXPOSE  8080
# when the contain is up and running, stat
# the bcycle app
CMD ["npm", "start"]
