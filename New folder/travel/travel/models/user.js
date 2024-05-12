var mongoose = require("mongoose");
var nameSchema = new mongoose.Schema({
    uid:Number,
    username: String,
    email: String,
    password: String,
    type: String
},{versionKey: false});
var User = mongoose.model("users", nameSchema);

module.exports=User;