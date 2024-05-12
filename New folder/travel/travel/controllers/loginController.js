//js
const User = require("../models/user");

// //For Register Page
// const registerView = (req, res) => {
//     res.render("register", {
//     } );
// }

// For View 
const loginView = (req, res) => {
    res.render("login", {
    } );
}

const dashboardView = (req, res) => {
    res.render("dashboard", {
    } );
}

const registerUser = async(req, res) => {
    
    var data = await User.find().sort({uid:-1}).limit(1);
    var uObj = {
        uid:data[0].uid+1,
        ...req.body
    }
    var myData = new User(uObj);
    myData.save()
    .then(item => {
        res.redirect("/dashboard");
    })
    .catch(err => {
        res.status(400).send("Unable to save to database");
    });
}
const authuser = async(req,res)=>{
    var data = await User.findOne(req.body,{ _id: 0} );
    if(data!= null){
        if(data.type=="User"){
            res.redirect("/dashboard");
        }
        else if(data.type=="Admin"){
            res.redirect("/admin");
        }
    }
    else{
        res.redirect("/")
    }
}
module.exports =  {
    loginView,
    registerUser,
    authuser,
    dashboardView
};