const express = require('express');
const MediaService = require('../services/mediaService');

module.exports = () => {
  const Router = express.Router();

  MediaService.register(Router, '/media');

  return Router;
}