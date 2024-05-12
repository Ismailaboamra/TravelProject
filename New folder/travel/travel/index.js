//js
const express = require('express');
const https = require('https');
const path = require('path');
const fs = require('fs');


const app = express();

//Mongoose connection
var mongoose = require("mongoose");
mongoose.Promise = global.Promise;
mongoose.connect("mongodb://0.0.0.0:27017/Travel").then(() => console.log('database connection successfull'))
.catch(err => console.log(err));

//BodyParsing
var bodyParser = require('body-parser');
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));


app.set('view engine', 'ejs');
app.use(express.static("public"));
//Routes 
app.use('/', require('./routes/login'));


const sslServer = https.createServer(
    {
        key: fs.readFileSync(path.join(__dirname, 'certificate', 'key.pem')),
        cert: fs.readFileSync(path.join(__dirname, 'certificate', 'cert.pem')),
    },
    app
)
const PORT = process.env.PORT || 4111;
sslServer.listen(PORT, console.log("Server has started at port " + PORT))
