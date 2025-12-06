const createError = require('http-errors');
const express = require('express');
const path = require('path');
const morgan = require('morgan');
const OpenApiValidator = require('express-openapi-validator');
const stationsRouter = require('./routes/stations');

const app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, 'public')));

// setup logging
morgan.token('body', (req, res) => JSON.stringify(req.body)); // eslint-disable-line no-unused-vars
app.use(morgan(':method :url :status :response-time ms - :res[content-length] :body - :req[content-length]'));

const spec = path.join(__dirname, '/spec/bcycle.yaml');
app.use('/spec', express.static(spec));

// Make our API documentation available
app.get('/api/v1/openapi', (req, res) => { // eslint-disable-line no-unused-vars
  res.render('index', { title: 'BCycle API Documentation' });
});

// everything from here gets validated
app.use(
  OpenApiValidator.middleware({
    apiSpec: './spec/bcycle.yaml',
    validateRequests: true, // (default)
    validateResponses: true, // false by default
  }),
);

// set up the routes
app.use('/', stationsRouter);

// catch 404 and forward to the error handler
app.use((req, res, next) => { // eslint-disable-line no-unused-vars
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
