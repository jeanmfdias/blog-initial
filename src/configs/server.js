const express = require('express');

const Routes = require('./routes');

const app = express();
const port = 3000;

app.use('/', Routes());
app.use(express.static('./src/assets'));

app.set('view engine', 'ejs');
app.set('views', './src/views');

module.exports = { app, port };