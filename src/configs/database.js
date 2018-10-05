const mongoose = require('mongoose');

const env = require('../../env.json');

const HOST  = env.DB_HOST;
const PORT  = env.DB_PORT;
const DB    = env.DB_NAME;

mongoose.Promise = global.Promise;

module.exports = mongoose.connect(`mongodb://${HOST}:${PORT}/${DB}`, { useNewUrlParser: true });