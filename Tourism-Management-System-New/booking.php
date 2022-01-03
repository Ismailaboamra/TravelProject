<?php

$con=mysqli_connect('localhost:3306','root','','travels');


if(isset($_POST['submitpay'])){
	$name=$_POST['name'];
	$email=$_POST['email'];
	$city=$_POST['city'];
	$phone=$_POST['phone'];
	$cardname=$_POST['cardname'];
	$cardnumber=$_POST['cardnumber'];
	$expmonth=$_POST['expmonth'];
	$expyear=$_POST['expyear'];
	$cvv=$_POST['cvv'];

	$sql="INSERT INTO `payment`(`name`, `email`, `phone`, `city`, `cardname`, `cardnumber`, `expmonth`, `expyear`, `cvv`) VALUES ('$name','$email','$phone','$city','$cardname','$cardnumber','$expmonth','$expyear','$cvv')";
	$result = mysqli_query($con,$sql);
	header('location:booking.html');
}

?>