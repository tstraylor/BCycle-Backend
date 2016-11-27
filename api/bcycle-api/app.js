'use strict';

var connection = require('./api/helpers/connection');
var SwaggerExpress = require('swagger-express-mw');
var express = require('express');
var app = express();

module.exports = app; // for testing

// get the database information from the environment
// these values are configured in the bcycle api Dockerfile
var dbHost = process.env.DB_HOST;
var dbName = process.env.DB_NAME;
var dbPort = process.env.DB_PORT;
var dbUser = process.env.DB_USER;
var dbPass = process.env.DB_PASS;
var dbConnLimit = 10;

var config = {
    appRoot: __dirname // required config
};

// setup the database connection
connection.init(dbHost, dbPort, dbName, dbUser, dbPass, dbConnLimit);

SwaggerExpress.create(config, function(err, swaggerExpress) {

    if (err) { throw err; }

    // install middleware
    swaggerExpress.register(app);

    // setup the directory that contains the bcycle api documentation
    app.use(express.static(__dirname + '/public', {index: 'index.html'}));
    // setup the port we will be listening on
    var port = process.env.PORT || 8080;
    app.listen(port);

    if (swaggerExpress.runner.swagger.paths['/v1/station']) {
        console.log('try this:\ncurl http://127.0.0.1:' + port + '/v1/station');
        console.log('api documentation at: http://127.0.0.1:' + port + '/');
    }
});
