const paypal = require('paypal-rest-sdk');
const Flight = require("../models/flights");
const PaymentModel = require("../models/paymentModel");
const FlightSeat = require("../models/flightSeat");

paypal.configure({
  'mode': 'sandbox', //sandbox or live
  'client_id': 'AWNAxNj9yLEzAi6Ohcn29_iVYc7QIbOEAAZ5-iFP9Wo81YTh-pRDQmvqI70tVUYfS3-rdiWQC47Vndee',
  'client_secret': 'EGiGbrp28i0AaHYgqALQVJv7fMGGV66g3SPLeA2BaIZEe4bzBjUydIEC-M1EokIqEVjrkH_7uBhp1j93'
});
var seatArr = [];
var plane_id;
const payment = async (req, res) => {
    var rdata = JSON.parse(req.body.data)
    seatArr=[]
    for(let item of req.body.seatArr.split(",")){
        seatArr.push(parseInt(item))
    }
    plane_id=rdata.fid;
    findPattern = {fid: rdata.fid}
    var data = await Flight.findOne(findPattern,{ _id: 0} );
    res.render("payment", {pdata:data} );
}

const paypalPay = (req, res) => {
        var planedata = req.body;
        planedata.plane_id = parseInt(planedata.plane_id);
        planedata.amount = parseInt(planedata.amount);

        var myData = new PaymentModel(planedata);
        myData.save()
        const create_payment_json = {
          "intent": "sale",
          "payer": {
              "payment_method": "paypal"
          },
          "redirect_urls": {
              "return_url": "https://localhost:4111/paypalsuccess",
              "cancel_url": "https://localhost:4111/dashboard"
          },
          "transactions": [{
              "item_list": {
                  "items": [{
                        "name": "Red Sox Hat",
                        "price": planedata.amount.toString(),
                        "currency": "USD",
                        "quantity": 1
                  }]
              },
              "amount": {
                  "currency": "USD",
                  "total": planedata.amount.toString()
              },
              "description": "Hat for the best team ever"
          }]
        };
        paypal.payment.create(create_payment_json, function (error, payment) {
            if (error) {
                console.log(error)
            } else {
                for(let i = 0;i < payment.links.length;i++){
                  if(payment.links[i].rel === 'approval_url'){
                    res.redirect(payment.links[i].href);
                  }
                }
            }
        });
}

const success =  (req, res) => {
    const payerId = req.query.PayerID;
    const paymentId = req.query.paymentId;
  
    const execute_payment_json = {
      "payer_id": payerId,
      "transactions": [{
          "amount": {
              "currency": "USD",
              "total": planedata.amount.toString()
          }
      }]
    };
  
    paypal.payment.execute(paymentId, execute_payment_json, function (error, payment) {
      if (error) {
          console.log(error.response);
          res.render("status",{message:"failed"});
      } else {
          console.log(JSON.stringify(payment));
          res.render("status",{message:"success"});
      }
  });
};

const cardpay = async (req,res) => {
    var payData = req.body;
    payData.plane_id = parseInt(payData.plane_id);
    payData.amount = parseInt(payData.amount);

    var notBookedSeat = []
    var bookedSeat = []
    var sdata = await FlightSeat.findOne({fid:plane_id},{ _id: 0} );
    for(let i of sdata.notBookedSeat){
        if(!seatArr.includes(i)){
            notBookedSeat.push(i)
        }
    }
    for(let i of sdata.bookedSeat){
        bookedSeat.push(i)
    }
    
    for(let i of seatArr){
        bookedSeat.push(i)
    }
    var newvalues = { $set: { bookedSeat, notBookedSeat } }
    var data = await FlightSeat.updateOne({fid:plane_id},newvalues,{ _id: 0} );

    var myData = new PaymentModel(payData);
    myData.save()
    .then(item => {
        //res.status(200).send("Payment successfull");
        res.render("status",{message:"success"});
    })
    .catch(err => {
        //res.status(400).send("Unable to save to database");
        res.render("status",{message:"failed"});
    });
}

module.exports =  {
    payment,
    paypalPay,
    cardpay,
    success
};