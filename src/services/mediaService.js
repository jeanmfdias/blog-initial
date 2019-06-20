const Media = require('../models/media');

Media.methods(['get', 'post', 'put', 'delete']);
Media.updateOptions({ new: true, runValidations: true });

module.exports = Media;