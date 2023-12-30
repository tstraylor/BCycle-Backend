const packageJson = require('../package.json');

const config = {
  version: packageJson.version,
  dbHost: process.env.DB_HOST || 'localhost',
  dbName: process.env.DB_NAME || 'bcycle',
  dbPort: process.env.DB_PORT || 3306,
  dbUser: process.env.DB_USER || 'bcycle',
  dbPass: process.env.DB_PASS || 'password',
  dbConnLimit: 10,
};

module.exports = config;
