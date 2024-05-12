var mongoose = require("mongoose");
var flightSchema = new mongoose.Schema({
    flightName: String,
    from: String,
    to: String,
    departure: String,
    arival: String,
    duration: String,
    price: Number,
    rating: Number,
    no_of_seat: Number,
    country: String,
    fid: Number,
    status:String
},{versionKey: false});

var Flight = mongoose.model("flights", flightSchema);

module.exports=Flight;