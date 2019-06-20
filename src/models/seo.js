const restful = require('node-restful');
const mongoose = restful.mongoose;

const Seo = new mongoose.Schema({
  title: { type: String, required: true, min: 54, max: 74 },
  description: { type: String, required: true, min: 134, max: 154 },
  object_id: { type: Number },
  object_resource: { type: String, required: true, min: 3, max: 50 },
});

module.exports = restful.model('Seo', Seo);