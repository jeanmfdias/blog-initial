const restful = require('node-restful');

const Media = require('./media');
const User = require('./user');

const mongoose = restful.mongoose;

const Article = new mongoose.Schema({
  title: { type: String, required: true, min: 3, max: 74 },
  content: { type: String, required: true },
  feature_media_id: { type: mongoose.Schema.Types.ObjectId, ref: Media },
  slug: { type: String, required: true, min: 3, max: 100 },
  author_user_id: { type: mongoose.Schema.Types.ObjectId, ref: User },
  status: { type: Boolean, default: true },
  created_at: { type: Date, default: Date.now },
  updated_at: { type: Date, default: Date.now }
});

module.exports = restful.model('Article', Article);