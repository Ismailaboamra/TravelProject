var mongoose = require("mongoose");
var flightSeatSchema = new mongoose.Schema({
    fid: Number,
    no_of_seat: Number,
    bookedSeat: Array,
    notBookedSeat: Array
},{versionKey: false});

var FlightSeat = mongoose.model("flightSeat", flightSeatSchema);

module.exports=FlightSeat;