const express = require('express');
const ArticleService = require('../services/articlesService');
const CategoryService = require('../services/categoriesService');
const MediaService = require('../services/mediaService');
const SeoService = require('../services/seoService');
const UserService = require('../services/usersService');

module.exports = () => {
  const Router = express.Router();

  ArticleService.register(Router, '/articles')
  CategoryService.register(Router, '/categories');
  MediaService.register(Router, '/media');
  SeoService.register(Router, '/seo');
  UserService.register(Router, '/users');

  return Router;
}