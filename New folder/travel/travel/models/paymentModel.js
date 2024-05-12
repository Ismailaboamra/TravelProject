var mongoose = require("mongoose");
var paymentSchema = new mongoose.Schema({
    plane_id: Number,
    amount: Number,
    date: String,
    method: String
},{versionKey: false});

var paymentSchema = mongoose.model("payments", paymentSchema);

module.exports=paymentSchema;