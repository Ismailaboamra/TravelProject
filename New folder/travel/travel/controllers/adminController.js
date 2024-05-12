const Flight = require("../models/flights");
const PaymentModel = require("../models/paymentModel");
const FlightSeat = require("../models/flightSeat");

const adminShow = (req, res)=>{
    res.render("admin",{
        toggle:'addflight',
        result:''
    });
}
const paymentShow = async (req, res)=>{
    var data = await PaymentModel.find({},{ _id: 0} );
    res.render("admin",{
        toggle:'viewpayment',
        result:data
    });
}
const addflight = async (req,res)=>{
    var newObj = req.body;
    var data = await Flight.find().sort({fid:-1}).limit(1);
    if(data.length==0){
        fid2=0;
    }else{
       fid2 = data[0].fid;
    }

    var fObj = {
        flightName: newObj.flightName,
        from: newObj.from,
        to: newObj.to,
        departure: newObj.departure,
        arival: newObj.arival,
        duration: newObj.hr+"h:"+newObj.min+"m",
        price: parseInt(newObj.price),
        rating: parseInt(newObj.rating),
        no_of_seat: parseInt(newObj.no_of_seat),
        country: newObj.country,
        fid: fid2+1,
        status: "not departed"
    }
    var bSeat = []
    for(let i=1;i<parseInt(newObj.no_of_seat)+1;i++){
        bSeat.push(i)
    }
    var sObj = {
        fid: fid2+1,
        no_of_seat: parseInt(newObj.no_of_seat),
        bookedSeat: [],
        notBookedSeat: bSeat
    };

    var seatData = new FlightSeat(sObj);
    seatData.save()
    .then(item => {
        console.log("seat added");
    })
    .catch(err => {
        res.status(400);
        console.log("error while adding seat")
    });

    var myData = new Flight(fObj);
    myData.save()
    .then(item => {
        res.status(200).redirect("/admin");
    })
    .catch(err => {
        res.status(400).send("Unable to save to database");
    });
}

const getFlightData = async (req,res)=>{
    var data = await Flight.find({},{ _id: 0} );
    res.render("admin",{
        toggle:'manageflight',
        result:data
    });
}

const deleteFlight = async(req,res)=>{
    var fdata = await Flight.deleteOne({fid:parseInt(req.body.fid)},{ _id: 0} );
    var fsdata = await FlightSeat.deleteOne({fid:parseInt(req.body.fid)},{ _id: 0} );
    var data1 = await Flight.find({},{ _id: 0} );
    res.render("admin",{
        toggle:'manageflight',
        result:data1
    });
}
const makeDeparted = async(req,res)=>{
    var newvalues = { $set: { status: "departed" } }
    var data = await Flight.updateOne({fid:parseInt(req.body.fid)},newvalues,{ _id: 0} );
    var data1 = await Flight.find({},{ _id: 0} );
    res.render("admin",{
        toggle:'manageflight',
        result:data1
    });
}

module.exports={
    adminShow,
    paymentShow,
    addflight,
    getFlightData,
    makeDeparted,
    deleteFlight
}