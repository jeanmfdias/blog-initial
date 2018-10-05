module.exports = function(req, res, next) {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allows-Methods', 'GET, POST, PUT, PATCH, DELETE');
  res.header('Access-Control-Allows-Headers', 'Origin, X-Request-With, Content-Type, Accept');
  next();
}