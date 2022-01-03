<?php
include_once('infop.php');
if(isset($_POST['Eilat'])) {
	$que="SELECT * FROM `information` WHERE pname='Eilat'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['baniasRiver'])) {
	$que="SELECT * FROM `information` WHERE pname='banias River'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['jurselm'])) {
	$que="SELECT * FROM `information` WHERE pname='jurselm'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['TheDeadSea'])) {
	$que="SELECT * FROM `information` WHERE pname='TheDeadSea'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['SeaofGalilee'])) {
	$que="SELECT * FROM `information` WHERE pname='Sea of Galilee'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['mountainhermon'])) {
	$que="SELECT * FROM `information` WHERE pname='mountain hermon'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['nazareth'])) {
	$que="SELECT * FROM `information` WHERE pname='nazareth'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['TelAviv'])) {
	$que="SELECT * FROM `information` WHERE pname='TelAviv'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['Haifa'])) {
	$que="SELECT * FROM `information` WHERE pname='Haifa'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['Jaffa'])) {
	$que="SELECT * FROM `information` WHERE pname='Jaffa'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['RamonCrater'])) {
	$que="SELECT * FROM `information` WHERE pname='Ramon Crater'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['Akko'])) {
	$que="SELECT * FROM `information` WHERE pname='Akko'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['search_p'])) {
	$search = $_POST['search_p'];
	$que="SELECT * FROM `information` WHERE pname='$search'";
	$result = mysqli_query($db, $que);
}

?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/info.css">
	<title>Information</title>
	<script>
		function PopWindowOne(){
			floatingWindow = window.open("calendar.html","","height=600,width=800,scrollbars=no");
		}
    </script>
</head>
<body>
	<div class="main">
	    <ul>
	      <ul class="list">
	        <li class="logo"><a href="index.html"><img src="earth-globe.png" alt="Logo" style="width:36px;height:36px"></a></li>
	        <div class="search">
                <form method="POST" action="info.php">
                  <input type="text" name="search_p" placeholder="Search.." size="50">
              
                  <input type="image" name="submit_p" src="search_icon.png" alt="Search image" style="width:22;height:22; margin-left: 35px;">
                </form>
            </div>
	      </ul>
	      <ul class="list2">
	        <li><a href="index.php">Home</a></li>
	        <li><a id="long" href="destination.html">Destination</a></li>
	        <li><a href="gallery.html">Gallery</a></li>
	        <li><a href="signup.html">Sign Up</a></li>
	        <li><a href="feedback.html">Feedback</a></li>
            <li><a href="#" onclick="PopWindowOne()">Calendar</a></li>
	      </ul>
	    </ul>
	</div>
	<div class="hedder">
		<h1>Place Information</h1>
	</div>
	<div class="container">
		<div class="description-container" style="border: 1px solid black;">
			<div class="box1">
				<?php
					while($rows = mysqli_fetch_assoc($result))
					{
				?>
				<img src="<?php echo $rows['pi_main']; ?>" alt="Taj Mahal Image" style="width: auto;height: 302px;">
			</div>
			<div class="description">
				<div class="top-bar">
					<form method="POST" action="guide_details.php">
						<input name="hidden" type="text" value="<?php echo $rows['pname'];?>" style="display:none">
						<input type="submit" name="guide-details" value="Get guide details" class="sameline" style="padding:10px 5px;">
					</form>
					<h1 class="sameline"><?php echo $rows['pname'];?></h1>
					<h3 class="sameline"><?php echo $rows['temprature']; ?>'C</h3>
				</div>
				<p style="text-align: justify;"><?php echo $rows['pdescription']; ?></p>
				<p style="color:red;" >Package: <?php echo $rows['package']; ?> Rs || Duration: <?php echo $rows['duration']; ?> Days</p>
			</div>
			
			<div class="btns">
				<select class="sameline" name="type" id="type" style="width: 170px;height:23px;">
					<option value="Normal">Requirments</option>
					<option value="Normal">Water Bottle</option>
					<option value="Normal">Cloths</option>
					<option value="Medical">Medical Requirments</option>
					<option value="Armed">Lugges</option>
				</select>
				<a href="booking.html" class="book-btn sameline">Book Tour</a>
				<div class="like sameline">
					<h2 class="like-count sameline1" ><?php echo $rows['likes']; ?></h2>
					<img class="like-btn sameline1" name="like-btn" src="images//logo//like.png" alt="like button" onclick="<?php
						$pname=$rows['pname'];
						$like=$rows['likes'];
						$que="UPDATE `information` SET `likes`=$like+1 WHERE `pname`='$pname'";
						$result = mysqli_query($db, $que);
					?>
					alert('You Like is added!!\nplease refresh the page')">
				</div>
			</div>
		
		</div>
		<div class="image-container" style="border: 1px solid black">
			<div class="box">
		        <div class="imgBox">
		          <img src="<?php echo $rows['pi1']; ?>" alt="Taj Mahal Image" style="width: auto;height: 270px;">
		        </div>
	        </div>
			<div class="box">
				<div class="imgBox">
					<img src="<?php echo $rows['pi2']; ?>" alt="Taj Mahal Image" style="width: auto;height: 270px;">
				</div>
			</div>
			<div class="box">
				<div class="imgBox">
					<img src="<?php echo $rows['pi3']; ?>" alt="Taj Mahal Image" style="width: auto;height: 270px;">
				</div>
				<?php
					}
				?>
			</div>
		</div>
	</div>
	<div class="comment">
		<input type="text" id="comment-box" placeholder="Enter comment">
		<input name="submit" value="Submit" type="submit">
	</div>
</body>
</html>