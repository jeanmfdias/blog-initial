const express = require('express');
const HomeController = require('../controllers/homeController');

module.exports = () => {
  const Router = express.Router();

  Router.get('/', (req, res) => HomeController.index(req, res));

  return Router;
}