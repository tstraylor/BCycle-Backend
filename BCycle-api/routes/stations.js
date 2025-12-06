const _ = require('lodash');
const express = require('express');
const GeoPoint = require('geopoint');
const stationService = require('../services/stations');

const router = express.Router();

function getQueryParameters(req) {
  const parameters = {};
  if (_.has(req.query, 'latitude') && _.has(req.query, 'longitude')) {
    let distance = Number(req.query.distance || 1.0);
    if (distance === 0.0) {
      distance = 1.0;
    }
    const latitude = Number(req.query.latitude);
    const longitude = Number(req.query.longitude);

    // calculate the region to search based on the
    // latitude and longitude and the distance
    // from that point.
    const currentLocation = new GeoPoint(latitude, longitude, false);
    const bounds = currentLocation.boundingCoordinates(distance, 0.0, false);

    const region = [];
    region.push(bounds[0].latitude(false));
    region.push(bounds[1].latitude(false));
    region.push(bounds[0].longitude(false));
    region.push(bounds[1].longitude(false));

    parameters.region = region;
  }

  if (_.has(req.query, 'zipcode')) {
    parameters.zipcode = req.query.zipcode;
  }

  return parameters;
}

function createStation(req, res, next) {
  return stationService.createStation(req.body)
    .then((results) => {
      const loc = `${req.protocol}//${req.headers.host}${req.originalUrl}/${results.id}`;
      res.location(loc);
      return res.status(201).send(results);
    })
    .catch((err) => next(err));
}

function getStations(req, res, next) {
  const parameters = getQueryParameters(req);
  return stationService.getStations(parameters)
    .then((results) => {
      res.set({ 'X-Total-Count': results.length });
      return res.status(200).json(results);
    })
    .catch((err) => next(err));
}

function getStation(req, res, next) {
  return stationService.getStation(req.params.station_id)
    .then((results) => res.status(200).send(results))
    .catch((err) => next(err));
}

function getStationCount(req, res, next) {
  const parameters = getQueryParameters(req);
  return stationService.getStationCount(parameters)
    .then((results) => {
      res.set({ 'X-Total-Count': results[0].RowCount });
      res.status(200).send();
    })
    .catch((err) => next(err));
}

function removeStation(req, res, next) {
  return stationService.removeStation(req.params.station_id)
    .then(() => res.status(204).send())
    .catch((err) => next(err));
}

router.head('/api/v1/stations',
  getStationCount);

router.get('/api/v1/stations',
  getStations);

router.get('/api/v1/stations/:station_id',
  getStation);

router.post('/api/v1/stations',
  createStation);

router.delete('/api/v1/stations/:station_id',
  removeStation);

module.exports = router;
