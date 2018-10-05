const restful = require('node-restful');

const Media = require('./media');

const mongoose = restful.mongoose;

const Category = new mongoose.Schema({
  name: { type: String, required: true, min: 3, max: 100 },
  description: { type: String },
  logo_media_id: { type: mongoose.Schema.Types.ObjectId, ref: Media },
  slug: { type: String, required: true, min: 3, max: 100 },
  parent_category_id: this,
  status: { type: Boolean, default: true },
  created_at: { type: Date, default: Date.now },
  updated_at: { type: Date, default: Date.now }
});

module.exports = restful.model('Category', Category);