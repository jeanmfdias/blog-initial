const express = require('express');
const bodyParser = require('body-parser');

const routes = require('./routes');
const allowCors = require('./cors');
const env =  require('../../env.json');

const app = express();
const port = env.APP_PORT;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(allowCors);
app.use('/api/v1', routes());

app.listen(port, () => {
  if (env.ENV == 'dev') {
    console.log(`Running at port ${port}`);
  }
});

module.exports = app;