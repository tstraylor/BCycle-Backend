/**
 * Created by tst on 11/12/16.
 */

var mysql = require('mysql');

function Connection() {
    this.pool = null;

    this.init = function(dbHost, dbPort, dbName, dbUser, dbPass, connLimit) {
        this.pool = mysql.createPool({
            connectionLimit: connLimit,
            host: dbHost,
            port: dbPort,
            user: dbUser,
            password: dbPass,
            database: dbName,
            multipleStatements: true
        });
    };

    this.acquire = function(callback) {
        this.pool.getConnection(function(err, connection) {
            callback(err, connection);
        });
    };
}

module.exports = new Connection();
