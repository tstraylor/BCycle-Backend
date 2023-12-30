const mysql = require('mysql');
const config = require('../config');

const pool = mysql.createPool({
  connectionLimit: config.dbConnLimit,
  host: config.dbHost,
  port: config.dbPort,
  user: config.dbUser,
  password: config.dbPass,
  database: config.dbName,
  multipleStatements: true,
});

pool.format = (sql, args) => {
  return mysql.format(sql, args);
};

module.exports = pool;
