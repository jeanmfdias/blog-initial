const Category = require('../models/category');

Category.methods(['get', 'post', 'put', 'delete']);
Category.updateOptions({ new: true, runValidations: true });

module.exports = Category;