const restful = require('node-restful');
const mongoose = restful.mongoose;

const Media = new mongoose.Schema({
  name: { type: String, required: true, min: 3, max: 100 },
  file: { type: String, required: true },
  status: { type: Boolean, default: true },
  created_at: { type: Date, default: Date.now },
  updated_at: { type: Date, default: Date.now }
});

module.exports = restful.model('Media', Media);