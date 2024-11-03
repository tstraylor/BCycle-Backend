const _ = require('lodash');
const createError = require('http-errors');
const db = require('../db');

function getStations(parameters) {
  return new Promise((resolve, reject) => {

    let args = [];
    let sql = 'SELECT * FROM station';

    if (parameters !== undefined && _.has(parameters, 'region')) {
      sql += ' WHERE latitude BETWEEN ? AND ? AND longitude BETWEEN ? AND ?';
      args = args.concat(parameters.region);
    }

    if (parameters !== undefined && _.has(parameters, 'zipcode')) {
      if (args.length > 0) {
        sql += ' AND zipcode = ?';
      } else {
        sql += ' WHERE zipcode = ?';
      }
      args.push(parameters.zipcode);
    }

    sql += ' ORDER BY id';

    db.query(db.format(sql, args), (err, results) => {
      if (err) {
        return reject(createError.InternalServerError(err));
      }

      return resolve(results);
    });
  });
}

function getStationCount(parameters) {
  return new Promise((resolve, reject) => {
    let args = [];
    let sql = 'SELECT COUNT(*) AS RowCount FROM station';

    if (parameters !== undefined && _.has(parameters, 'region')) {
      sql += ' WHERE latitude BETWEEN ? AND ? AND longitude BETWEEN ? AND ?';
      args = args.concat(parameters.region);
    }

    if (parameters !== undefined && _.has(parameters, 'zipcode')) {
      if (args.length > 0) {
        sql += ' AND zip = ?';
      } else {
        sql += ' WHERE zip = ?';
      }
      args.push(parameters.zipcode);
    }

    db.query(db.format(sql, args), (err, results) => {
      if (err) {
        return reject(createError.InternalServerError(err));
      }
      if (_.isEmpty(results)) {
        return reject(createError.NotFound('Station not found.'));
      }
      return resolve(results);
    });
  });
}

function getStation(stationId) {
  return new Promise((resolve, reject) => {
    const sql = 'SELECT * FROM station WHERE id = ?';
    db.query(db.format(sql, [stationId]), (err, results) => {
      if (err) {
        return reject(createError.InternalServerError(err));
      }
      if (_.isEmpty(results)) {
        return reject(createError.NotFound('Station was not found.'));
      }
      return resolve(results[0]);
    });
  });
}

function createStation(body) {
  return new Promise((resolve, reject) => {
    const sql = 'INSERT INTO station SET ?';
    db.query(db.format(sql, [body]), (err, results) => {
      if (err) {
        return reject(createError.InternalServerError(err));
      }
      return resolve(getStation(results.insertId));
    });
  });
}

function removeStation(stationId) {
  return new Promise((resolve, reject) => {
    const sql = 'DELETE FROM station WHERE id = ?';
    db.query(db.format(sql, [stationId]), (err, results) => {
      if (err) {
        return reject(createError.InternalServerError(err));
      }
      return resolve(results);
    });
  });
}

module.exports = {
  getStations,
  getStationCount,
  getStation,
  createStation,
  removeStation,
};
