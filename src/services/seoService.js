const Seo = require('../models/seo');

Seo.methods(['get', 'post', 'put', 'delete']);
Seo.updateOptions({ new: true, runValidations: true });

module.exports = Seo;