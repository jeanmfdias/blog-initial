const User = require('../models/user');

User.methods(['get', 'post', 'put', 'delete']);
User.updateOptions({ new: true, runValidations: true });

module.exports = User;