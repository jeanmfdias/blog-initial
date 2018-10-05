const restful = require('node-restful');

const Media = require('./media');

const mongoose = restful.mongoose;

const User = new mongoose.Schema({
  name: { type: String, required: true, min: 3, max: 100 },
  nickname: { type: String, min: 3, max: 100 },
  email: { type: String, required: true, min: 3, max: 100 },
  password: { type: String, required: true },
  token: { type: String },
  profile_media_id: { type: mongoose.Schema.Types.ObjectId, ref: Media },
  status: { type: Boolean, default: true },
  created_at: { type: Date, default: Date.now },
  updated_at: { type: Date, default: Date.now }
});

module.exports = restful.model('User', User);