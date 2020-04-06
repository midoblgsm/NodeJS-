const mongoose = require('mongoose');

var Student = mongoose.model('Student', {
    name: { type: String },
    email: { type: String },
    level: { type: String },
});

module.exports = { Student };