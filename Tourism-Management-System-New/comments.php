<?php
include_once('infop.php');
$pname='';
if(isset($_POST['Eilat1'])) {
	$pname="Eilat";
	$que="SELECT * FROM `comments` WHERE pname='Eilat'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['baniasRiver1'])) {
	$pname='banias River';
	$que="SELECT * FROM `comments` WHERE pname='banias River'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['jurselm1'])) {
	$pname='jurselm';
	$que="SELECT * FROM `comments` WHERE pname='jurselm'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['TheDeadSea1'])) {
	$pname='TheDeadSea';
	$que="SELECT * FROM `comments` WHERE pname='TheDeadSea'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['SeaofGalilee1'])) {
	$pname='Sea of Galilee';
	$que="SELECT * FROM `comments` WHERE pname='Sea of Galilee'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['mountainhermon1'])) {
	$pname='jurselmountain hermonm';
	$que="SELECT * FROM `comments` WHERE pname='mountain hermon'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['nazareth1'])) {
	$pname='nazareth';
	$que="SELECT * FROM `comments` WHERE pname='nazareth'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['TelAviv1'])) {
	$pname='TelAviv';
	$que="SELECT * FROM `comments` WHERE pname='TelAviv'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['Haifa1'])) {
	$pname='Haifa';
	$que="SELECT * FROM `comments` WHERE pname='Haifa'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['Jaffa1'])) {
	$pname='Jaffa';
	$que="SELECT * FROM `comments` WHERE pname='Jaffa'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['RamonCrater1'])) {
	$pname='Ramon Crater';
	$que="SELECT * FROM `comments` WHERE pname='Ramon Crater'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['Akko1'])) {
	$pname='Akko';
	$que="SELECT * FROM `comments` WHERE pname='Akko'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['search_p'])) {
	$search = $_POST['search_p'];
	$que="SELECT * FROM `comments` WHERE pname='$search'";
	$result = mysqli_query($db, $que);
}
if(isset($_POST['submit'])) {
	$cmt = $_POST['cmt'];
	$pname = $_POST['hidden'];
	$que="INSERT INTO `comments`(`pname`, `comment`) VALUES ('$pname','$cmt')";
	$result = mysqli_query($db, $que);
}


?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="css//comment.css">
    <title>Comments</title>
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
	        <li class="logo"><a href="index.php"><img src="earth-globe.png" alt="Logo" style="width:36px;height:36px"></a></li>
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
			<li><a href="contact.html">Contact</a></li>
            <li><a href="#" onclick="PopWindowOne()">Calendar</a></li>
	      </ul>
	    </ul>
	</div>
	<div class="container">
		<div class="addComment">
			<form method="POST" name="form">
				<input name="hidden" type="text" value="<?php echo $pname; ?>" style="display:none;">
				<input id="textarea" class="inputTextarea" name="cmt" rows="4" class="form-control" ng-model='feedback' placeholder="Please write your Feedback here" required></input>
				<input class="com-btn" name="submit" value="Add Comment" type="submit" onclick="clearVal">
			</form>
		</div>
		<div class="showCmts">
			<h2 class="heading">see all reviews here</h2>
			<?php
				$que="SELECT * FROM `comments` WHERE pname='$pname'";
				$result = mysqli_query($db, $que);
				while($rows = mysqli_fetch_assoc($result))
				{
			?>
			<div class="cmts">
				  <h3><?php echo $rows['comment']; ?></h3>
			</div>
			<?php
				}
			?>
		</div>
	</div>
	<script>
		function clearVal(){
			document.getElementById('textarea').value="";
		}
	</script>
</body>

</html>