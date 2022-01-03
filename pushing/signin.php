<?php

$db = mysqli_connect('localhost:3306','root','','travels');

$username = $_POST["user"];
$password = $_POST["pass"];
$d = date("Y-m-d h:i:sa");
$i=0;
$usern = "";
$passd = "";

$que="INSERT INTO `login` (`user`,`pass`,`date_time`) VALUES ('$username','$password','$d')";

$sql1="SELECT afname, apass FROM `travel_agent` WHERE afname='$username' and apass='$password'";
$result3 = mysqli_query($db, $sql1);
$rowst = mysqli_fetch_assoc($result3);


$sql="SELECT fname, password FROM `customer` WHERE fname='$username' and password='$password'";
$result2 = mysqli_query($db, $sql);
$rowsc = mysqli_fetch_assoc($result2);

if(isset($_POST['submit'])){
	if($username == 'admin' and $password == 'ad123'){
		$result = mysqli_query($db, $que);
		header('location:admin.php');
	}
	elseif($rowst) {
		$i=0;
		while($i==0)
		{

			$usern = $rowst['afname'];
			$passd = $rowst['apass'];
			$i= $i+1;
		}
		if ($usern==$username and $passd==$password) {
			$result = mysqli_query($db, $que);
			header("location:guide.php");
		}
		else{
			?>
			<script>
				alert("Invalid username or password1");
			</script>
			<?php
		}
	}
	elseif($result2) {
		$i=0;
		while($i==0)
		{

			$usern = $rowsc['fname'];
			$passd = $rowsc['password'];
			$i= $i+1;
		}
		if ($usern==$username and $passd==$password) {
			$result = mysqli_query($db, $que);
			header("location:index.php");
		}
		else{
			?>
			<script>
				alert("Invalid username or password2");
			</script>
			<?php
		}
	}
}
//
?>