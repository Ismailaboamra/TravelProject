const Flight = require("../models/flights");
const FlightSeat = require("../models/flightSeat");
var LocalStorage = require('node-localstorage').LocalStorage;
var localStorage = new LocalStorage('./scratch');

const showPlaneList2 = (req, res) => {
    var type = localStorage.getItem('type');
    var request = JSON.parse(localStorage.getItem('request'));
    var result = JSON.parse(localStorage.getItem('result'));

    res.render("planeList", {type:type, request:request, result:result} );
}
const showPlaneList = (req, res) => {
    reqObj = req.body;
    var reqArray = []
    if(reqObj.flightType=="Multi City"){
        for(let i=0;i<reqObj.from.length;i++){
            var obj = {
                flightType: reqObj.flightType,
                from: reqObj.from[i],
                to: reqObj.to[i],
                depart: reqObj.depart[i],
                adult: reqObj.adult,
                child: reqObj.child,
                class: reqObj.class
            }
            reqArray.push(obj);
        }
    }
    else if(reqObj.flightType=="Round Trip"){
        var obj1 = {
            flightType: reqObj.flightType,
            from: reqObj.from,
            to: reqObj.to,
            depart: reqObj.depart,
            adult: reqObj.adult,
            child: reqObj.child,
            class: reqObj.class
        }
        var obj2 = {
            flightType: reqObj.flightType,
            from: reqObj.to,
            to: reqObj.from,
            depart: reqObj.return,
            adult: reqObj.adult,
            child: reqObj.child,
            class: reqObj.class
        }
        reqArray.push(obj1);
        reqArray.push(obj2);
    }
    else{
        reqArray.push(reqObj);
    }
    
    findFlight(reqArray)
    .then(resObj=>{
        localStorage.setItem('type', reqObj.flightType);
        localStorage.setItem('request', JSON.stringify(reqArray));
        localStorage.setItem('result', JSON.stringify(resObj));
        res.render("planeList", {type:reqObj.flightType, request:reqArray, result:resObj} );
    });
}

const findFlight = async (reqArray)=>{
    var resObj = {}
    var index = 0;
    for(let obj of reqArray){
        findPattern = {from: obj.from,to:obj.to,status:"not departed"}
        var data = await Flight.find(findPattern,{ _id: 0} );
        resObj[index] = data
        index+=1;
    }
    return resObj;
}

const showSeat = async (req, res) => {
    var rdata = JSON.parse(req.body.rdata)
    var sdata = await FlightSeat.findOne({fid:rdata.fid},{ _id: 0} );
    res.render("seatList", {rData:rdata, sData:sdata} );
}
module.exports =  {
    showPlaneList,
    showPlaneList2,
    showSeat
};