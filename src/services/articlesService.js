const Article = require('../models/article');

Article.methods(['get', 'post', 'put', 'delete']);
Article.updateOptions({ new: true, runValidations: true });

module.exports = Article;