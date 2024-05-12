//js
const express = require('express');
const {loginView, registerUser, authuser, dashboardView} = require('../controllers/loginController');
const {showPlaneList, showPlaneList2, showSeat} = require('../controllers/planeListController');
const {payment, paypalPay, cardpay, success} = require('../controllers/paymentController');
const {adminShow, paymentShow, addflight, getFlightData, makeDeparted, deleteFlight} = require('../controllers/adminController');
const router = express.Router();
router.get('/', loginView);
router.post('/signup', registerUser);
router.get('/login', loginView);
router.post('/userlogin', authuser);
router.get('/dashboard', dashboardView);
router.post('/planelist', showPlaneList);
router.get('/planelist', showPlaneList2);
router.post('/bookseat', showSeat);
router.post('/payment', payment);
router.post('/paypal', paypalPay);
router.post('/cardpay', cardpay);
router.get('/paypalsuccess', success);
router.get('/admin', adminShow);
router.get('/addflight', adminShow);
router.post('/addflight', addflight);
router.get('/manageflight', getFlightData);
router.post('/departed', makeDeparted);
router.post('/delete', deleteFlight);
router.get('/viewpayment', paymentShow);

module.exports = router;