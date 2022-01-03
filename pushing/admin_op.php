<?php

$con=mysqli_connect('localhost:3306','root','','travels');



if(isset($_POST['de-submit-c']))
{
	$id=$_POST['id'];
	$firstname=$_POST['fname'];
	$lastname=$_POST['lanme'];

	$sql="DELETE FROM `customer` WHERE id=$id and fname='$firstname' and lanme='$lastname'";
	$result = mysqli_query($con,$sql);
	header('location:admin.php');
}

if(isset($_POST['in-submit-a']))
{
	$aid=$_POST['aid'];
	$afname=$_POST['afname'];
	$apass=$_POST['apass'];
	$aemail=$_POST['aemail'];
	$aphone=$_POST['aphone'];
	$acity=$_POST['acity'];
	$type=$_POST['type'];

	$sql1="INSERT INTO `travel_agent`(`aid`,`afname`,`apass`,`aemail`,`aphone`,`acity`,`type`) VALUES ($aid,'$afname','$apass','$aemail','$aphone','$acity','$type')";
	$result = mysqli_query($con,$sql1);
	header('location:admin.php');
}

if(isset($_POST['de-submit-a']))
{
	$aid=$_POST['aid'];
	$afname=$_POST['afname'];

	$sql2="DELETE FROM `travel_agent` WHERE aid=$aid and afname='$afname'";
	$result = mysqli_query($con,$sql2);
	header('location:admin.php');
}

if(isset($_POST['ins-submit-p']))
{
	$pid=$_POST['pid'];
	$pname=$_POST['pname'];
	$pcity=$_POST['pcity'];

	$sql3="INSERT INTO `places`(`pid`,`pname`,`pcity`) VALUES ($pid,'$pname','$pcity')";
	$result = mysqli_query($con,$sql3);
	header('location:admin.php');
}

if(isset($_POST['de-submit-p']))
{
	$pid=$_POST['pid'];
	$pname=$_POST['pname'];

	$sql4="DELETE FROM `places` WHERE pid=$pid and pname='$pname'";
	$result = mysqli_query($con,$sql4);
	header('location:admin.php');
}

if(isset($_POST['ins-submit-h']))
{
	$hid=$_POST['hid'];
	$hname=$_POST['hname'];
	$hphone=$_POST['hphone'];
	$hcity=$_POST['hcity'];

	$sql5="INSERT INTO `hotels`(`hid`,`hname`,`hphone`,`hcity`) VALUES ($hid,'$hname','$hphone','$hcity')";
	$result = mysqli_query($con,$sql5);
	header('location:admin.php');
}

if(isset($_POST['de-submit-h']))
{
	$hid=$_POST['hid'];
	$hname=$_POST['hname'];

	$sql6="DELETE FROM `hotels` WHERE hid=$hid and hname='$hname'";
	$result = mysqli_query($con,$sql6);
	header('location:admin.php');
}
if(isset($_POST['add_pd']))
{
	$pname=$_POST['pname'];
	$pdescription=$_POST['pdescription'];
	$pi_main=$_POST['pi_main'];
	$pi1=$_POST['pi1'];
	$pi2=$_POST['pi2'];
	$pi3=$_POST['pi3'];
	$temparature=$_POST['temparature'];
	$duration=$_POST['duration'];

	$sql6="INSERT INTO `information`(`pname`,`pdescription`,`pi_main`,`pi1`,`pi2`,`pi3`,`temprature`, `duration`) VALUES ('$pname','$pdescription','$pi_main','$pi1','$pi2','$pi3','$temparature','$duration')";
	$result = mysqli_query($con,$sql6);
	if ($result) {
		header('location:admin.php');
	}
}
if(isset($_POST['add_ads']))
{
	$aname=$_POST['aname'];
	$ad_img=$_POST['ad_img'];

	$sql7="INSERT INTO `advertise`(`aname`, `ad_img`) VALUES ('$aname','$ad_img')";
	$result = mysqli_query($con,$sql7);
	if ($result) {
		header('location:admin.php');
	}
}
if (isset($_POST['uploadimg'])) {
	$username = $_POST["afname"];
	$password = $_POST["apass"];

    $filename = $_FILES["uploadfile"]["name"];
    $tempname = $_FILES["uploadfile"]["tmp_name"];

    $folder = "images/certificate/".$filename;
	// Get all the submitted data from the form
	$sql1="UPDATE `travel_agent` SET `certificate`='$filename' WHERE afname='$username' and apass='$password'";
	mysqli_query($con, $sql1);
		
	// Now let's move the uploaded image into the folder: image
	if (move_uploaded_file($tempname, $folder))  {
		header('location:guide.php');
	}
}
if (isset($_POST['uploadavil'])) {
	$username = $_POST["afname1"];
	$password = $_POST["apass1"];
	$availability=$_POST['availability'];

	// Get all the submitted data from the form
	$sql1="UPDATE `travel_agent` SET `available`='$availability' WHERE afname='$username' and apass='$password'";
	$result=mysqli_query($con, $sql1);
		
	// Now let's move the uploaded image into the folder: image
	if ($result)  {
		header('location:guide.php');
	}
}
if (isset($_POST['uploadcimg'])) {
	$username = $_POST["afname2"];
	$password = $_POST["apass2"];

    $filename = $_FILES["uploadfile2"]["name"];
    $tempname = $_FILES["uploadfile2"]["tmp_name"];

    $folder = "images/certificate/".$filename;
	// Get all the submitted data from the form
	$sql1="UPDATE `travel_agent` SET `vcertificate`='$filename' WHERE afname='$username' and apass='$password'";
	mysqli_query($con, $sql1);
		
	// Now let's move the uploaded image into the folder: image
	if (move_uploaded_file($tempname, $folder))  {
		header('location:guide.php');
	}
}
?>