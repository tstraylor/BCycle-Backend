
'use strict';

var util = require('util');
var geopoint = require('geopoint');
var bcycledb = require('../helpers/bcycledb');

function getAllStations(req, res) {

    var distance = req.swagger.params.Distance.value || 1;
    var latitude = req.swagger.params.Latitude.value;
    var longitude = req.swagger.params.Longitude.value;

    if(latitude === undefined || longitude === undefined) {
        bcycledb.getAllStations(function(err, rows) {
            if(err) {
                console.log(err);
                res.status(err.status || 500);
                res.json({message: err.message, error: err });
            }
            else {
                res.json(rows);
            }
        });
    }
    else {

        // calculate the region to search based on the
        // latitude and longitude and the dististance
        // from that point.
        var loc = new geopoint(latitude, longitude);
        var bounds = loc.boundingCoordinates(distance);

        var params = [];
        params.push(bounds[0]['_degLat']);
        params.push(bounds[1]['_degLat']);
        params.push(bounds[0]['_degLon']);
        params.push(bounds[1]['_degLon']);

        bcycledb.getAllStationsInRegion(params, function(err, rows) {
            if(err) {
                console.log(err);
                res.status(err.status || 500);
                res.json({message: err.message, error: err });
            }
            else {
                res.json(rows);
            }
        });
    }
}

function getStation(req, res) {

    bcycledb.getStation(req.swagger.params.id.value, function(err, rows) {

        if(err) {
            console.log(err);
            res.status(err.status || 500);
            res.json({message: err.message, error: err });
        }
        else {
            res.json(rows);
        }
    });
}

function createStation(req, res) {

    var station = {};
    station['Name'] = req.body.Name;
    station['Street'] = req.body.Street;
    station['City'] = req.body.City;
    station['State'] = req.body.State;
    station['Zip'] = req.body.Zip;
    station['Docks'] = req.body.Docks;
    station['Latitude'] = req.body.Latitude;
    station['Longitude'] = req.body.Longitude;

    bcycledb.createStation(station, function(err, rows) {

        if(err) {
            res.json({code: 500, message: err});
        }
        else {
            res.json({id: rows.insertId});
        }
    });
}

function removeStation(req, res) {

    bcycledb.removeStation(req.swagger.params.id.value, function(err, rows) {

        if(err) {
            console.log(err);
            res.status(err.status || 500);
            res.json({message: err.message, error: err });
        }
        else {
            res.json({rows: rows.affectedRows});
        }
    });
}

module.exports = {
    getAllStations: getAllStations,
    getStation: getStation,
    createStation: createStation,
    removeStation: removeStation
};
